BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dfb82241-1c76-4f18-91a8-0971c09862f3', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 55 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1150$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1153$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1155$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×55×(7+8)=2475$. **Step 2:** A''s share $\\frac{7}{15}×2475=1155$."},{"id":"D","text":"$2475$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×55×(7+8)=2475$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2475=1155$ tasks.

**Step 3 — Answer C.** $1155$

**Distractor analysis:**
- **A** ($1150$): Underestimates A''s share of the total.
- **B** ($1153$): Close but ratio arithmetic is off.
- **D** ($2475$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6319e896-b894-44ea-a371-eb10f20ac21a', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:9$ over 56 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$891$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$894$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$896$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×56×(4+9)=2912$. **Step 2:** A''s share $\\frac{4}{13}×2912=896$."},{"id":"D","text":"$2912$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×56×(4+9)=2912$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×2912=896$ tasks.

**Step 3 — Answer C.** $896$

**Distractor analysis:**
- **A** ($891$): Underestimates A''s share of the total.
- **B** ($894$): Close but ratio arithmetic is off.
- **D** ($2912$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4061f550-f1b4-4fce-a70c-68a32faa7103', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:10$ over 57 hours at 5 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"1425","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=5×57×(5+10)=4275$ tasks.
**Step 2:** A''s fraction $\frac{5}{15}$.
**Step 3:** $\frac{5}{15}×4275=1425$ tasks.

**Step 3 — Answer SPR.** 1425', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3753fecc-547c-4ce7-9c55-c6b0f1681da1', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:11$ over 58 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1039$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1042$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1044$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×58×(6+11)=2958$. **Step 2:** A''s share $\\frac{6}{17}×2958=1044$."},{"id":"D","text":"$2958$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×58×(6+11)=2958$ tasks.
**Step 2:** A''s fraction $\frac{6}{17}$.
**Step 3:** $\frac{6}{17}×2958=1044$ tasks.

**Step 3 — Answer C.** $1044$

**Distractor analysis:**
- **A** ($1039$): Underestimates A''s share of the total.
- **B** ($1042$): Close but ratio arithmetic is off.
- **D** ($2958$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('998ae7e5-30ad-4516-a188-044c66df80d3', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 59 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1647$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1650$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1652$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×59×(7+7)=3304$. **Step 2:** A''s share $\\frac{7}{14}×3304=1652$."},{"id":"D","text":"$3304$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×59×(7+7)=3304$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×3304=1652$ tasks.

**Step 3 — Answer C.** $1652$

**Distractor analysis:**
- **A** ($1647$): Underestimates A''s share of the total.
- **B** ($1650$): Close but ratio arithmetic is off.
- **D** ($3304$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4825d9db-16b4-4be3-9121-69171227bbdd', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 60 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1195$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1198$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1200$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×60×(4+8)=3600$. **Step 2:** A''s share $\\frac{4}{12}×3600=1200$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×60×(4+8)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×3600=1200$ tasks.

**Step 3 — Answer C.** $1200$

**Distractor analysis:**
- **A** ($1195$): Underestimates A''s share of the total.
- **B** ($1198$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('781d9e26-f586-4007-a922-a20502576818', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:9$ over 61 hours at 3 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"915","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=3×61×(5+9)=2562$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×2562=915$ tasks.

**Step 3 — Answer SPR.** 915', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58de20e4-b11a-4758-8dbd-d281707bc9ef', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:10$ over 62 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1483$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1486$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1488$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×62×(6+10)=3968$. **Step 2:** A''s share $\\frac{6}{16}×3968=1488$."},{"id":"D","text":"$3968$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×62×(6+10)=3968$ tasks.
**Step 2:** A''s fraction $\frac{6}{16}$.
**Step 3:** $\frac{6}{16}×3968=1488$ tasks.

**Step 3 — Answer C.** $1488$

**Distractor analysis:**
- **A** ($1483$): Underestimates A''s share of the total.
- **B** ($1486$): Close but ratio arithmetic is off.
- **D** ($3968$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('23f52fe8-10e6-42de-aea4-318dfb07995e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:11$ over 63 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$2200$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$2203$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$2205$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×63×(7+11)=5670$. **Step 2:** A''s share $\\frac{7}{18}×5670=2205$."},{"id":"D","text":"$5670$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×63×(7+11)=5670$ tasks.
**Step 2:** A''s fraction $\frac{7}{18}$.
**Step 3:** $\frac{7}{18}×5670=2205$ tasks.

**Step 3 — Answer C.** $2205$

**Distractor analysis:**
- **A** ($2200$): Underestimates A''s share of the total.
- **B** ($2203$): Close but ratio arithmetic is off.
- **D** ($5670$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6c83bd69-1612-4cc1-81f9-97a8b875e2a2', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:7$ over 4 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$48$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×4×(4+7)=132$. **Step 2:** A''s share $\\frac{4}{11}×132=48$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×4×(4+7)=132$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×132=48$ tasks.

**Step 3 — Answer C.** $48$

**Distractor analysis:**
- **A** ($43$): Underestimates A''s share of the total.
- **B** ($46$): Close but ratio arithmetic is off.
- **D** ($132$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d77a22f-b00a-4fb8-a34e-cbdd98769d1e', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:8$ over 5 hours at 4 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"100","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=4×5×(5+8)=260$ tasks.
**Step 2:** A''s fraction $\frac{5}{13}$.
**Step 3:** $\frac{5}{13}×260=100$ tasks.

**Step 3 — Answer SPR.** 100', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e6700fac-4b9a-4e9b-9861-c8461346a04b', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:9$ over 6 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$175$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$178$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$180$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×6×(6+9)=450$. **Step 2:** A''s share $\\frac{6}{15}×450=180$."},{"id":"D","text":"$450$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×6×(6+9)=450$ tasks.
**Step 2:** A''s fraction $\frac{6}{15}$.
**Step 3:** $\frac{6}{15}×450=180$ tasks.

**Step 3 — Answer C.** $180$

**Distractor analysis:**
- **A** ($175$): Underestimates A''s share of the total.
- **B** ($178$): Close but ratio arithmetic is off.
- **D** ($450$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
