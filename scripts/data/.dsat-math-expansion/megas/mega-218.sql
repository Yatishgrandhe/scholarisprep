BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e4edb77b-e0f4-4364-b584-620e427e75c2', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 19 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$394$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$397$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$399$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×19×(7+7)=798$. **Step 2:** A''s share $\\frac{7}{14}×798=399$."},{"id":"D","text":"$798$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×19×(7+7)=798$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×798=399$ tasks.

**Step 3 — Answer C.** $399$

**Distractor analysis:**
- **A** ($394$): Underestimates A''s share of the total.
- **B** ($397$): Close but ratio arithmetic is off.
- **D** ($798$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f122452-f114-4476-8fa3-f52e87b25b95', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 20 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$315$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$318$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$320$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×20×(4+8)=960$. **Step 2:** A''s share $\\frac{4}{12}×960=320$."},{"id":"D","text":"$960$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×20×(4+8)=960$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×960=320$ tasks.

**Step 3 — Answer C.** $320$

**Distractor analysis:**
- **A** ($315$): Underestimates A''s share of the total.
- **B** ($318$): Close but ratio arithmetic is off.
- **D** ($960$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('daaaf101-aeec-4442-ae6c-c6201666a83c', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:9$ over 21 hours at 5 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"525","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=5×21×(5+9)=1470$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×1470=525$ tasks.

**Step 3 — Answer SPR.** 525', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cdc376ad-4ea6-4000-97be-224e142863e8', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:10$ over 22 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$391$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$394$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$396$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×22×(6+10)=1056$. **Step 2:** A''s share $\\frac{6}{16}×1056=396$."},{"id":"D","text":"$1056$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×22×(6+10)=1056$ tasks.
**Step 2:** A''s fraction $\frac{6}{16}$.
**Step 3:** $\frac{6}{16}×1056=396$ tasks.

**Step 3 — Answer C.** $396$

**Distractor analysis:**
- **A** ($391$): Underestimates A''s share of the total.
- **B** ($394$): Close but ratio arithmetic is off.
- **D** ($1056$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1738ec7-080c-4d9e-83df-4d7137307a0e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:11$ over 23 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$639$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$642$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$644$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×23×(7+11)=1656$. **Step 2:** A''s share $\\frac{7}{18}×1656=644$."},{"id":"D","text":"$1656$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×23×(7+11)=1656$ tasks.
**Step 2:** A''s fraction $\frac{7}{18}$.
**Step 3:** $\frac{7}{18}×1656=644$ tasks.

**Step 3 — Answer C.** $644$

**Distractor analysis:**
- **A** ($639$): Underestimates A''s share of the total.
- **B** ($642$): Close but ratio arithmetic is off.
- **D** ($1656$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6c6d264-b59a-4e88-8523-bedb59ea4d9d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:7$ over 24 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$475$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$478$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$480$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×24×(4+7)=1320$. **Step 2:** A''s share $\\frac{4}{11}×1320=480$."},{"id":"D","text":"$1320$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×24×(4+7)=1320$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×1320=480$ tasks.

**Step 3 — Answer C.** $480$

**Distractor analysis:**
- **A** ($475$): Underestimates A''s share of the total.
- **B** ($478$): Close but ratio arithmetic is off.
- **D** ($1320$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1aeb247f-3457-454f-a50e-ae32b39d1143', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:8$ over 25 hours at 3 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"375","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=3×25×(5+8)=975$ tasks.
**Step 2:** A''s fraction $\frac{5}{13}$.
**Step 3:** $\frac{5}{13}×975=375$ tasks.

**Step 3 — Answer SPR.** 375', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4702542-b6f9-48dd-b67e-907eec68d1cb', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:9$ over 26 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$619$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$622$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$624$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×26×(6+9)=1560$. **Step 2:** A''s share $\\frac{6}{15}×1560=624$."},{"id":"D","text":"$1560$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×26×(6+9)=1560$ tasks.
**Step 2:** A''s fraction $\frac{6}{15}$.
**Step 3:** $\frac{6}{15}×1560=624$ tasks.

**Step 3 — Answer C.** $624$

**Distractor analysis:**
- **A** ($619$): Underestimates A''s share of the total.
- **B** ($622$): Close but ratio arithmetic is off.
- **D** ($1560$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17fd957f-1c62-4b6e-9188-d650a19e6b65', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:10$ over 27 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$940$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$943$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$945$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×27×(7+10)=2295$. **Step 2:** A''s share $\\frac{7}{17}×2295=945$."},{"id":"D","text":"$2295$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×27×(7+10)=2295$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×2295=945$ tasks.

**Step 3 — Answer C.** $945$

**Distractor analysis:**
- **A** ($940$): Underestimates A''s share of the total.
- **B** ($943$): Close but ratio arithmetic is off.
- **D** ($2295$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18d4467f-be67-4978-916c-09a45834582a', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 28 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×28×(4+11)=1260$. **Step 2:** A''s share $\\frac{4}{15}×1260=336$."},{"id":"D","text":"$1260$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×28×(4+11)=1260$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×1260=336$ tasks.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($1260$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a62e347d-8e92-48db-8dac-057331e37f98', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:7$ over 29 hours at 4 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"580","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=4×29×(5+7)=1392$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×1392=580$ tasks.

**Step 3 — Answer SPR.** 580', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2c5633a5-7a83-40c0-9143-ff2948a6f55e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 30 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$895$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$898$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$900$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×30×(6+8)=2100$. **Step 2:** A''s share $\\frac{6}{14}×2100=900$."},{"id":"D","text":"$2100$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×30×(6+8)=2100$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×2100=900$ tasks.

**Step 3 — Answer C.** $900$

**Distractor analysis:**
- **A** ($895$): Underestimates A''s share of the total.
- **B** ($898$): Close but ratio arithmetic is off.
- **D** ($2100$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
