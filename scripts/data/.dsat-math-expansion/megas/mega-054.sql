BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66abb1f0-d2b8-4319-8e3b-18e7e72321c4', 'Linear function $f$ models temperature. $f(25)=19$ and $f(31)=43$. What is $f(-27)$?', NULL, NULL, '[{"id":"A","text":"$-185$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-193$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-189$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-27)=-189$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(25)=19$ and $f(31)=43$. What is $f(-27)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{43-19}{31-25}=4$.
**Step 2:** Point-slope: $f(-27)=4(-27-25)+(19)$.
**Step 3:** $f(-27)=-189$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-189$

**Distractor analysis:**
- **A** ($-185$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-193$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72b6ceb5-d44f-4727-8546-f80363b26530', 'Linear function $f$ models temperature. $f(26)=20$ and $f(32)=50$. What is $f(-28)$?', NULL, NULL, '[{"id":"A","text":"$-245$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-254$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-250$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-28)=-250$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(26)=20$ and $f(32)=50$. What is $f(-28)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{50-20}{32-26}=5$.
**Step 2:** Point-slope: $f(-28)=5(-28-26)+(20)$.
**Step 3:** $f(-28)=-250$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-250$

**Distractor analysis:**
- **A** ($-245$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-254$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('98f5ce85-2110-4cce-a9be-3e872173114a', 'Linear function $f$ models temperature. $f(27)=21$ and $f(33)=39$. What is $f(-29)$?', NULL, NULL, '[{"id":"A","text":"$-144$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-151$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-147$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-29)=-147$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(27)=21$ and $f(33)=39$. What is $f(-29)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{39-21}{33-27}=3$.
**Step 2:** Point-slope: $f(-29)=3(-29-27)+(21)$.
**Step 3:** $f(-29)=-147$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-147$

**Distractor analysis:**
- **A** ($-144$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-151$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b45d87c8-bb0b-4773-a9b7-df6c010ae107', 'If the vehicle continues at the same rate, what is $d$ when $t=12$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+2$. At $t=4$, $d=14$.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=12$."},{"id":"C","text":"$38$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(12)+2$. **Step 2:** $d=38$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=12$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $2$.
**Step 2:** $d=3(12)+2=38$.
**Step 3:** Cross-check via $(12-4)×3+14=38$.

**Step 3 — Answer C.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Adds slope once instead of evaluating at $t=12$.
- **D** ($36$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d9780748-c3e2-4074-98c0-c829ad42c311', 'If the vehicle continues at the same rate, what is $d$ when $t=13$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+3$. At $t=5$, $d=23$.', 'passage', '[{"id":"SPR","text":"55","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=13$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $3$.
**Step 2:** $d=4(13)+3=55$.
**Step 3:** Cross-check via $(13-5)×4+23=55$.

**Step 3 — Answer SPR.** 55', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f12c282-5707-423b-8a26-a119c136cdd3', 'If the vehicle continues at the same rate, what is $d$ when $t=14$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+4$. At $t=6$, $d=34$.', 'passage', '[{"id":"A","text":"$69$","is_correct":false,"explanation":"Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=14$."},{"id":"C","text":"$74$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(14)+4$. **Step 2:** $d=74$."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=14$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $4$.
**Step 2:** $d=5(14)+4=74$.
**Step 3:** Cross-check via $(14-6)×5+34=74$.

**Step 3 — Answer C.** $74$

**Distractor analysis:**
- **A** ($69$): Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Adds slope once instead of evaluating at $t=14$.
- **D** ($70$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aa1b8ad9-8983-4167-b91d-deb918d40c15', 'If the vehicle continues at the same rate, what is $d$ when $t=15$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+5$. At $t=7$, $d=47$.', 'passage', '[{"id":"A","text":"$89$","is_correct":false,"explanation":"Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=15$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(15)+5$. **Step 2:** $d=95$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=15$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $5$.
**Step 2:** $d=6(15)+5=95$.
**Step 3:** Cross-check via $(15-7)×6+47=95$.

**Step 3 — Answer C.** $95$

**Distractor analysis:**
- **A** ($89$): Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Adds slope once instead of evaluating at $t=15$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('372792ec-54e2-405d-8b98-f561bdae36fe', 'If the vehicle continues at the same rate, what is $d$ when $t=16$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+6$. At $t=8$, $d=30$.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=16$."},{"id":"C","text":"$54$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(16)+6$. **Step 2:** $d=54$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=16$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $6$.
**Step 2:** $d=3(16)+6=54$.
**Step 3:** Cross-check via $(16-8)×3+30=54$.

**Step 3 — Answer C.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Adds slope once instead of evaluating at $t=16$.
- **D** ($48$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0adccfdd-15ec-4a33-a677-a485961da63e', 'If the vehicle continues at the same rate, what is $d$ when $t=17$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+7$. At $t=9$, $d=43$.', 'passage', '[{"id":"SPR","text":"75","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=17$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $7$.
**Step 2:** $d=4(17)+7=75$.
**Step 3:** Cross-check via $(17-9)×4+43=75$.

**Step 3 — Answer SPR.** 75', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cf47f98-1c4c-4486-97c8-cd34e5a4cab0', 'If the vehicle continues at the same rate, what is $d$ when $t=18$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+8$. At $t=10$, $d=58$.', 'passage', '[{"id":"A","text":"$93$","is_correct":false,"explanation":"Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=18$."},{"id":"C","text":"$98$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(18)+8$. **Step 2:** $d=98$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=18$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $8$.
**Step 2:** $d=5(18)+8=98$.
**Step 3:** Cross-check via $(18-10)×5+58=98$.

**Step 3 — Answer C.** $98$

**Distractor analysis:**
- **A** ($93$): Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Adds slope once instead of evaluating at $t=18$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('abdd9da6-e369-4082-ad12-2cb04b269d09', 'If the vehicle continues at the same rate, what is $d$ when $t=19$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+9$. At $t=11$, $d=75$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=19$."},{"id":"C","text":"$123$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(19)+9$. **Step 2:** $d=123$."},{"id":"D","text":"$114$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=19$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $9$.
**Step 2:** $d=6(19)+9=123$.
**Step 3:** Cross-check via $(19-11)×6+75=123$.

**Step 3 — Answer C.** $123$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=19$.
- **D** ($114$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3de4dc9-0aa1-4f36-b5e9-630006911782', 'If the vehicle continues at the same rate, what is $d$ when $t=20$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+10$. At $t=12$, $d=46$.', 'passage', '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=20$."},{"id":"C","text":"$70$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(20)+10$. **Step 2:** $d=70$."},{"id":"D","text":"$60$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=20$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $10$.
**Step 2:** $d=3(20)+10=70$.
**Step 3:** Cross-check via $(20-12)×3+46=70$.

**Step 3 — Answer C.** $70$

**Distractor analysis:**
- **A** ($67$): Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($49$): Adds slope once instead of evaluating at $t=20$.
- **D** ($60$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
