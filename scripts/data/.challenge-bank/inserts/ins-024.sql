BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c42b442f-cdc3-47a8-8f4c-480c627ebf95', 'Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?', NULL, NULL, '[{"id":"A","text":"$-84$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-91$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-87$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-17)=-87$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{27-9}{21-15}=3$.
**Step 2:** Point-slope: $f(-17)=3(-17-15)+(9)$.
**Step 3:** $f(-17)=-87$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-87$

**Distractor analysis:**
- **A** ($-84$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-91$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('85a1561d-6e04-4f1c-a391-56502a22010f', 'Linear function $f$ models temperature. $f(16)=10$ and $f(22)=34$. What is $f(-18)$?', NULL, NULL, '[{"id":"A","text":"$-122$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-130$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-126$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-18)=-126$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(16)=10$ and $f(22)=34$. What is $f(-18)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{34-10}{22-16}=4$.
**Step 2:** Point-slope: $f(-18)=4(-18-16)+(10)$.
**Step 3:** $f(-18)=-126$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-126$

**Distractor analysis:**
- **A** ($-122$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-130$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9e6a7693-d65c-4d74-8f6b-bc2da6bed5f8', 'Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?', NULL, NULL, '[{"id":"A","text":"$-164$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-173$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-169$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-19)=-169$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{41-11}{23-17}=5$.
**Step 2:** Point-slope: $f(-19)=5(-19-17)+(11)$.
**Step 3:** $f(-19)=-169$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-169$

**Distractor analysis:**
- **A** ($-164$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-173$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6a9b0186-9e7d-469e-9646-e0beb8aedea4', 'Linear function $f$ models temperature. $f(18)=12$ and $f(24)=30$. What is $f(-20)$?', NULL, NULL, '[{"id":"A","text":"$-99$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-106$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-102$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-20)=-102$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(18)=12$ and $f(24)=30$. What is $f(-20)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{30-12}{24-18}=3$.
**Step 2:** Point-slope: $f(-20)=3(-20-18)+(12)$.
**Step 3:** $f(-20)=-102$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-102$

**Distractor analysis:**
- **A** ($-99$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-106$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f4e985a5-3b26-4867-9379-948b1f4bf1a1', 'Linear function $f$ models temperature. $f(19)=13$ and $f(25)=37$. What is $f(-21)$?', NULL, NULL, '[{"id":"A","text":"$-143$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-151$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-147$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-21)=-147$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(19)=13$ and $f(25)=37$. What is $f(-21)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{37-13}{25-19}=4$.
**Step 2:** Point-slope: $f(-21)=4(-21-19)+(13)$.
**Step 3:** $f(-21)=-147$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-147$

**Distractor analysis:**
- **A** ($-143$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-151$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('41b3f451-641f-4287-a268-686dc301d1d8', 'Linear function $f$ models temperature. $f(20)=14$ and $f(26)=44$. What is $f(-22)$?', NULL, NULL, '[{"id":"A","text":"$-191$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-200$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-196$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-22)=-196$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(20)=14$ and $f(26)=44$. What is $f(-22)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{44-14}{26-20}=5$.
**Step 2:** Point-slope: $f(-22)=5(-22-20)+(14)$.
**Step 3:** $f(-22)=-196$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-196$

**Distractor analysis:**
- **A** ($-191$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-200$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5cd32877-8aac-488c-bde0-ec87d3f33a00', 'Linear function $f$ models temperature. $f(21)=15$ and $f(27)=33$. What is $f(-23)$?', NULL, NULL, '[{"id":"A","text":"$-114$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-121$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-117$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-23)=-117$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(21)=15$ and $f(27)=33$. What is $f(-23)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{33-15}{27-21}=3$.
**Step 2:** Point-slope: $f(-23)=3(-23-21)+(15)$.
**Step 3:** $f(-23)=-117$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-117$

**Distractor analysis:**
- **A** ($-114$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-121$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('744f1de7-a49c-40fc-9f13-7fb8f76e4447', 'Linear function $f$ models temperature. $f(22)=16$ and $f(28)=40$. What is $f(-24)$?', NULL, NULL, '[{"id":"A","text":"$-164$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-172$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-168$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-24)=-168$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(22)=16$ and $f(28)=40$. What is $f(-24)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{40-16}{28-22}=4$.
**Step 2:** Point-slope: $f(-24)=4(-24-22)+(16)$.
**Step 3:** $f(-24)=-168$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-168$

**Distractor analysis:**
- **A** ($-164$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-172$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dc431b42-9007-49b7-953e-80d58abcbe7a', 'Linear function $f$ models temperature. $f(23)=17$ and $f(29)=47$. What is $f(-25)$?', NULL, NULL, '[{"id":"A","text":"$-218$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-227$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-223$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-25)=-223$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(23)=17$ and $f(29)=47$. What is $f(-25)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{47-17}{29-23}=5$.
**Step 2:** Point-slope: $f(-25)=5(-25-23)+(17)$.
**Step 3:** $f(-25)=-223$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-223$

**Distractor analysis:**
- **A** ($-218$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-227$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('43a67d08-49c7-4c84-abf4-1fef40c56079', 'Linear function $f$ models temperature. $f(24)=18$ and $f(30)=36$. What is $f(-26)$?', NULL, NULL, '[{"id":"A","text":"$-129$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-136$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-132$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-26)=-132$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(24)=18$ and $f(30)=36$. What is $f(-26)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{36-18}{30-24}=3$.
**Step 2:** Point-slope: $f(-26)=3(-26-24)+(18)$.
**Step 3:** $f(-26)=-132$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-132$

**Distractor analysis:**
- **A** ($-129$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-136$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dfea3513-57d1-48b9-bd7a-1b2b925c7dcc', 'Linear function $f$ models temperature. $f(25)=19$ and $f(31)=43$. What is $f(-27)$?', NULL, NULL, '[{"id":"A","text":"$-185$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-193$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-189$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-27)=-189$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(25)=19$ and $f(31)=43$. What is $f(-27)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{43-19}{31-25}=4$.
**Step 2:** Point-slope: $f(-27)=4(-27-25)+(19)$.
**Step 3:** $f(-27)=-189$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-189$

**Distractor analysis:**
- **A** ($-185$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-193$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7edb256d-fbec-43a8-9462-16ed84de368c', 'Linear function $f$ models temperature. $f(26)=20$ and $f(32)=50$. What is $f(-28)$?', NULL, NULL, '[{"id":"A","text":"$-245$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-254$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-250$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-28)=-250$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(26)=20$ and $f(32)=50$. What is $f(-28)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{50-20}{32-26}=5$.
**Step 2:** Point-slope: $f(-28)=5(-28-26)+(20)$.
**Step 3:** $f(-28)=-250$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-250$

**Distractor analysis:**
- **A** ($-245$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-254$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('18bcd12a-974c-4b38-8500-29ef680c1311', 'Linear function $f$ models temperature. $f(27)=21$ and $f(33)=39$. What is $f(-29)$?', NULL, NULL, '[{"id":"A","text":"$-144$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-151$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-147$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-29)=-147$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(27)=21$ and $f(33)=39$. What is $f(-29)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{39-21}{33-27}=3$.
**Step 2:** Point-slope: $f(-29)=3(-29-27)+(21)$.
**Step 3:** $f(-29)=-147$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-147$

**Distractor analysis:**
- **A** ($-144$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-151$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9385ebac-b839-44dd-b24e-2c496c7ec9fd', 'Linear function $f$ models temperature. $f(28)=22$ and $f(34)=46$. What is $f(-30)$?', NULL, NULL, '[{"id":"A","text":"$-206$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-214$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-210$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-30)=-210$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(28)=22$ and $f(34)=46$. What is $f(-30)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{46-22}{34-28}=4$.
**Step 2:** Point-slope: $f(-30)=4(-30-28)+(22)$.
**Step 3:** $f(-30)=-210$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-210$

**Distractor analysis:**
- **A** ($-206$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-214$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dae2a321-a1c2-4e61-80f9-d94f0381ae02', 'Linear function $f$ models temperature. $f(29)=23$ and $f(35)=53$. What is $f(-31)$?', NULL, NULL, '[{"id":"A","text":"$-272$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-281$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-277$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-31)=-277$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(29)=23$ and $f(35)=53$. What is $f(-31)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{53-23}{35-29}=5$.
**Step 2:** Point-slope: $f(-31)=5(-31-29)+(23)$.
**Step 3:** $f(-31)=-277$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-277$

**Distractor analysis:**
- **A** ($-272$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-281$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('20491e8a-aff5-47e0-a33b-20b8df35b224', 'Linear function $f$ models temperature. $f(30)=24$ and $f(36)=42$. What is $f(-32)$?', NULL, NULL, '[{"id":"A","text":"$-159$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-166$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-162$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-32)=-162$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(30)=24$ and $f(36)=42$. What is $f(-32)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{42-24}{36-30}=3$.
**Step 2:** Point-slope: $f(-32)=3(-32-30)+(24)$.
**Step 3:** $f(-32)=-162$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-162$

**Distractor analysis:**
- **A** ($-159$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-166$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c159e7d1-f6fc-434d-8750-6089a5421670', 'Linear function $f$ models temperature. $f(31)=25$ and $f(37)=49$. What is $f(-33)$?', NULL, NULL, '[{"id":"A","text":"$-227$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-235$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-231$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-33)=-231$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(31)=25$ and $f(37)=49$. What is $f(-33)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{49-25}{37-31}=4$.
**Step 2:** Point-slope: $f(-33)=4(-33-31)+(25)$.
**Step 3:** $f(-33)=-231$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-231$

**Distractor analysis:**
- **A** ($-227$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-235$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('42bf3192-b152-4a4d-a17b-370737a2a85d', 'Linear function $f$ models temperature. $f(32)=26$ and $f(38)=56$. What is $f(-34)$?', NULL, NULL, '[{"id":"A","text":"$-299$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-308$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-304$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-34)=-304$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(32)=26$ and $f(38)=56$. What is $f(-34)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{56-26}{38-32}=5$.
**Step 2:** Point-slope: $f(-34)=5(-34-32)+(26)$.
**Step 3:** $f(-34)=-304$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-304$

**Distractor analysis:**
- **A** ($-299$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-308$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('06c01494-d976-43b1-b7e9-e927e1b9b5bb', 'Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?', NULL, NULL, '[{"id":"A","text":"$-174$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-181$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-177$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-35)=-177$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{45-27}{39-33}=3$.
**Step 2:** Point-slope: $f(-35)=3(-35-33)+(27)$.
**Step 3:** $f(-35)=-177$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-177$

**Distractor analysis:**
- **A** ($-174$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-181$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dcddb497-51d0-4bbc-8f60-77fbd4dfbc68', 'Linear function $f$ models temperature. $f(34)=28$ and $f(40)=52$. What is $f(-36)$?', NULL, NULL, '[{"id":"A","text":"$-248$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-256$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-252$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-36)=-252$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(34)=28$ and $f(40)=52$. What is $f(-36)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{52-28}{40-34}=4$.
**Step 2:** Point-slope: $f(-36)=4(-36-34)+(28)$.
**Step 3:** $f(-36)=-252$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-252$

**Distractor analysis:**
- **A** ($-248$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-256$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4a7b5139-d378-4ffe-b6db-df3dbaab0762', 'Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?', NULL, NULL, '[{"id":"A","text":"$-326$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-335$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-331$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-37)=-331$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{59-29}{41-35}=5$.
**Step 2:** Point-slope: $f(-37)=5(-37-35)+(29)$.
**Step 3:** $f(-37)=-331$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-331$

**Distractor analysis:**
- **A** ($-326$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-335$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5b213ed4-9c41-4389-8083-7ed036a3bd15', 'Linear function $f$ models temperature. $f(36)=30$ and $f(42)=48$. What is $f(-38)$?', NULL, NULL, '[{"id":"A","text":"$-189$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-196$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-192$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-38)=-192$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(36)=30$ and $f(42)=48$. What is $f(-38)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{48-30}{42-36}=3$.
**Step 2:** Point-slope: $f(-38)=3(-38-36)+(30)$.
**Step 3:** $f(-38)=-192$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-192$

**Distractor analysis:**
- **A** ($-189$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-196$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('66e3a7dc-f7ca-4a9f-98d8-f49b6eb3d8f2', 'Linear function $f$ models temperature. $f(37)=31$ and $f(43)=55$. What is $f(-39)$?', NULL, NULL, '[{"id":"A","text":"$-269$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-277$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-273$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-39)=-273$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(37)=31$ and $f(43)=55$. What is $f(-39)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{55-31}{43-37}=4$.
**Step 2:** Point-slope: $f(-39)=4(-39-37)+(31)$.
**Step 3:** $f(-39)=-273$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-273$

**Distractor analysis:**
- **A** ($-269$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-277$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e4f8163e-6efb-4235-8687-08771f378d6b', 'Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?', NULL, NULL, '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-362$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-358$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-40)=-358$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{62-32}{44-38}=5$.
**Step 2:** Point-slope: $f(-40)=5(-40-38)+(32)$.
**Step 3:** $f(-40)=-358$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-358$

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-362$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('96be2e23-8a1e-408c-8db5-81b27e57f8a5', 'Linear function $f$ models temperature. $f(39)=33$ and $f(45)=51$. What is $f(-41)$?', NULL, NULL, '[{"id":"A","text":"$-204$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-211$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-207$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-41)=-207$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(39)=33$ and $f(45)=51$. What is $f(-41)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{51-33}{45-39}=3$.
**Step 2:** Point-slope: $f(-41)=3(-41-39)+(33)$.
**Step 3:** $f(-41)=-207$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-207$

**Distractor analysis:**
- **A** ($-204$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-211$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7009cfb0-e2f4-4e3d-b0f3-cad000f0c7d2', 'Linear function $f$ models temperature. $f(40)=34$ and $f(46)=58$. What is $f(-42)$?', NULL, NULL, '[{"id":"A","text":"$-290$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-298$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-294$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-42)=-294$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(40)=34$ and $f(46)=58$. What is $f(-42)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{58-34}{46-40}=4$.
**Step 2:** Point-slope: $f(-42)=4(-42-40)+(34)$.
**Step 3:** $f(-42)=-294$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-294$

**Distractor analysis:**
- **A** ($-290$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-298$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8cf53147-e74c-4475-9bee-5753aa1cc6a0', 'Linear function $f$ models temperature. $f(41)=35$ and $f(47)=65$. What is $f(-43)$?', NULL, NULL, '[{"id":"A","text":"$-380$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-389$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-385$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-43)=-385$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(41)=35$ and $f(47)=65$. What is $f(-43)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{65-35}{47-41}=5$.
**Step 2:** Point-slope: $f(-43)=5(-43-41)+(35)$.
**Step 3:** $f(-43)=-385$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-385$

**Distractor analysis:**
- **A** ($-380$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-389$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6f61d920-ee6f-4ac1-ae9d-434158e1856a', 'Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?', NULL, NULL, '[{"id":"A","text":"$-219$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-226$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-222$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-44)=-222$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{54-36}{48-42}=3$.
**Step 2:** Point-slope: $f(-44)=3(-44-42)+(36)$.
**Step 3:** $f(-44)=-222$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-222$

**Distractor analysis:**
- **A** ($-219$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-226$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('86c3c244-55ba-4540-9c6d-16f3742167f0', 'Linear function $f$ models temperature. $f(43)=37$ and $f(49)=61$. What is $f(-45)$?', NULL, NULL, '[{"id":"A","text":"$-311$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-319$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-315$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-45)=-315$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(43)=37$ and $f(49)=61$. What is $f(-45)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{61-37}{49-43}=4$.
**Step 2:** Point-slope: $f(-45)=4(-45-43)+(37)$.
**Step 3:** $f(-45)=-315$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-315$

**Distractor analysis:**
- **A** ($-311$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-319$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('22dd75cb-b425-4c5d-919d-c4af0674763a', 'Linear function $f$ models temperature. $f(44)=38$ and $f(50)=68$. What is $f(-46)$?', NULL, NULL, '[{"id":"A","text":"$-407$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-416$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-412$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-46)=-412$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(44)=38$ and $f(50)=68$. What is $f(-46)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{68-38}{50-44}=5$.
**Step 2:** Point-slope: $f(-46)=5(-46-44)+(38)$.
**Step 3:** $f(-46)=-412$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-412$

**Distractor analysis:**
- **A** ($-407$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-416$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('50abde13-3fa4-4e9f-9234-2c05d797ad26', 'Linear function $f$ models temperature. $f(45)=39$ and $f(51)=57$. What is $f(-47)$?', NULL, NULL, '[{"id":"A","text":"$-234$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-241$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-237$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-47)=-237$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(45)=39$ and $f(51)=57$. What is $f(-47)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{57-39}{51-45}=3$.
**Step 2:** Point-slope: $f(-47)=3(-47-45)+(39)$.
**Step 3:** $f(-47)=-237$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-237$

**Distractor analysis:**
- **A** ($-234$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-241$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b3639bc4-7c7e-493d-abb1-d15f66c1bf88', 'Linear function $f$ models temperature. $f(46)=40$ and $f(52)=64$. What is $f(-48)$?', NULL, NULL, '[{"id":"A","text":"$-332$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-340$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-336$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-48)=-336$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(46)=40$ and $f(52)=64$. What is $f(-48)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{64-40}{52-46}=4$.
**Step 2:** Point-slope: $f(-48)=4(-48-46)+(40)$.
**Step 3:** $f(-48)=-336$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-336$

**Distractor analysis:**
- **A** ($-332$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-340$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('64abb47d-f2f5-4a69-9b9d-250c05a2d6ff', 'Linear function $f$ models temperature. $f(47)=41$ and $f(53)=71$. What is $f(-49)$?', NULL, NULL, '[{"id":"A","text":"$-434$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-443$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-439$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-49)=-439$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(47)=41$ and $f(53)=71$. What is $f(-49)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{71-41}{53-47}=5$.
**Step 2:** Point-slope: $f(-49)=5(-49-47)+(41)$.
**Step 3:** $f(-49)=-439$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-439$

**Distractor analysis:**
- **A** ($-434$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-443$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7fa0bfbe-ec12-44f7-b375-67b58dd4b8c6', 'Linear function $f$ models temperature. $f(48)=42$ and $f(54)=60$. What is $f(-50)$?', NULL, NULL, '[{"id":"A","text":"$-249$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-256$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-252$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-50)=-252$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(48)=42$ and $f(54)=60$. What is $f(-50)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{60-42}{54-48}=3$.
**Step 2:** Point-slope: $f(-50)=3(-50-48)+(42)$.
**Step 3:** $f(-50)=-252$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-252$

**Distractor analysis:**
- **A** ($-249$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-256$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3f5cd811-5ff2-4745-b6bd-f07fd2e5bbe1', 'Linear function $f$ models temperature. $f(49)=43$ and $f(55)=67$. What is $f(-51)$?', NULL, NULL, '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-361$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-357$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-51)=-357$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(49)=43$ and $f(55)=67$. What is $f(-51)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{67-43}{55-49}=4$.
**Step 2:** Point-slope: $f(-51)=4(-51-49)+(43)$.
**Step 3:** $f(-51)=-357$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-357$

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-361$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('86d39825-8e4c-4578-932a-d92ef29aad27', 'Linear function $f$ models temperature. $f(50)=44$ and $f(56)=74$. What is $f(-52)$?', NULL, NULL, '[{"id":"A","text":"$-461$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-470$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-466$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-52)=-466$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(50)=44$ and $f(56)=74$. What is $f(-52)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{74-44}{56-50}=5$.
**Step 2:** Point-slope: $f(-52)=5(-52-50)+(44)$.
**Step 3:** $f(-52)=-466$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-466$

**Distractor analysis:**
- **A** ($-461$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-470$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9e22ce4b-b948-4236-b555-154f71493980', 'If the vehicle continues at the same rate, what is $d$ when $t=12$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+2$. At $t=4$, $d=14$.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=12$."},{"id":"C","text":"$38$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(12)+2$. **Step 2:** $d=38$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=12$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $2$.
**Step 2:** $d=3(12)+2=38$.
**Step 3:** Cross-check via $(12-4)×3+14=38$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Adds slope once instead of evaluating at $t=12$.
- **D** ($36$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('192f2503-f286-481f-9ba3-51ee35f11baa', 'If the vehicle continues at the same rate, what is $d$ when $t=13$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+3$. At $t=5$, $d=23$.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=13$."},{"id":"C","text":"$55$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(13)+3$. **Step 2:** $d=55$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=13$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $3$.
**Step 2:** $d=4(13)+3=55$.
**Step 3:** Cross-check via $(13-5)×4+23=55$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $55$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Adds slope once instead of evaluating at $t=13$.
- **D** ($52$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('049df4e7-06a5-4af1-bbb5-1f6447cd1457', 'If the vehicle continues at the same rate, what is $d$ when $t=14$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+4$. At $t=6$, $d=34$.', 'passage', '[{"id":"A","text":"$69$","is_correct":false,"explanation":"Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=14$."},{"id":"C","text":"$74$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(14)+4$. **Step 2:** $d=74$."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=14$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $4$.
**Step 2:** $d=5(14)+4=74$.
**Step 3:** Cross-check via $(14-6)×5+34=74$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $74$

**Distractor analysis:**
- **A** ($69$): Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Adds slope once instead of evaluating at $t=14$.
- **D** ($70$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e399f1c2-39fd-419e-a411-5b19b0e49826', 'If the vehicle continues at the same rate, what is $d$ when $t=15$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+5$. At $t=7$, $d=47$.', 'passage', '[{"id":"A","text":"$89$","is_correct":false,"explanation":"Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=15$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(15)+5$. **Step 2:** $d=95$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=15$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $5$.
**Step 2:** $d=6(15)+5=95$.
**Step 3:** Cross-check via $(15-7)×6+47=95$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $95$

**Distractor analysis:**
- **A** ($89$): Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Adds slope once instead of evaluating at $t=15$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
