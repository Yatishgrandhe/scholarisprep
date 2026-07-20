BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('235dafa4-ac46-4ef7-ad4d-360573e2ec31', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 19 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$394$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$397$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$399$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×19×(7+7)=798$. **Step 2:** A''s share $\\frac{7}{14}×798=399$."},{"id":"D","text":"$798$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×19×(7+7)=798$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×798=399$ tasks.

**Step 3 — Answer C.** $399$

**Distractor analysis:**
- **A** ($394$): Underestimates A''s share of the total.
- **B** ($397$): Close but ratio arithmetic is off.
- **D** ($798$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c6e894e-f808-4e31-a316-837f4197fa11', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 20 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$315$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$318$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$320$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×20×(4+8)=960$. **Step 2:** A''s share $\\frac{4}{12}×960=320$."},{"id":"D","text":"$960$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×20×(4+8)=960$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×960=320$ tasks.

**Step 3 — Answer C.** $320$

**Distractor analysis:**
- **A** ($315$): Underestimates A''s share of the total.
- **B** ($318$): Close but ratio arithmetic is off.
- **D** ($960$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a68bcbcb-38de-4707-b28a-ea628de1f226', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:9$ over 21 hours at 5 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"525","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=5×21×(5+9)=1470$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×1470=525$ tasks.

**Step 3 — Answer SPR.** 525', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd9a7aca-5144-4dfd-ab4f-22e55c1e3150', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:10$ over 22 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$391$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$394$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$396$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×22×(6+10)=1056$. **Step 2:** A''s share $\\frac{6}{16}×1056=396$."},{"id":"D","text":"$1056$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×22×(6+10)=1056$ tasks.
**Step 2:** A''s fraction $\frac{6}{16}$.
**Step 3:** $\frac{6}{16}×1056=396$ tasks.

**Step 3 — Answer C.** $396$

**Distractor analysis:**
- **A** ($391$): Underestimates A''s share of the total.
- **B** ($394$): Close but ratio arithmetic is off.
- **D** ($1056$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4543b8d2-bce4-4b43-87d7-45086d135a31', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:11$ over 23 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$639$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$642$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$644$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×23×(7+11)=1656$. **Step 2:** A''s share $\\frac{7}{18}×1656=644$."},{"id":"D","text":"$1656$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×23×(7+11)=1656$ tasks.
**Step 2:** A''s fraction $\frac{7}{18}$.
**Step 3:** $\frac{7}{18}×1656=644$ tasks.

**Step 3 — Answer C.** $644$

**Distractor analysis:**
- **A** ($639$): Underestimates A''s share of the total.
- **B** ($642$): Close but ratio arithmetic is off.
- **D** ($1656$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e94b5133-20ac-4ad5-84d0-7c22114a777f', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:7$ over 24 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$475$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$478$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$480$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×24×(4+7)=1320$. **Step 2:** A''s share $\\frac{4}{11}×1320=480$."},{"id":"D","text":"$1320$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×24×(4+7)=1320$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×1320=480$ tasks.

**Step 3 — Answer C.** $480$

**Distractor analysis:**
- **A** ($475$): Underestimates A''s share of the total.
- **B** ($478$): Close but ratio arithmetic is off.
- **D** ($1320$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6d83c0a9-0d66-4ceb-aa42-efe08bf5c3ea', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:8$ over 25 hours at 3 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"375","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=3×25×(5+8)=975$ tasks.
**Step 2:** A''s fraction $\frac{5}{13}$.
**Step 3:** $\frac{5}{13}×975=375$ tasks.

**Step 3 — Answer SPR.** 375', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35a0b06a-9076-46b1-8931-772e06833e19', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:9$ over 26 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$619$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$622$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$624$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×26×(6+9)=1560$. **Step 2:** A''s share $\\frac{6}{15}×1560=624$."},{"id":"D","text":"$1560$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×26×(6+9)=1560$ tasks.
**Step 2:** A''s fraction $\frac{6}{15}$.
**Step 3:** $\frac{6}{15}×1560=624$ tasks.

**Step 3 — Answer C.** $624$

**Distractor analysis:**
- **A** ($619$): Underestimates A''s share of the total.
- **B** ($622$): Close but ratio arithmetic is off.
- **D** ($1560$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6e73b223-9150-4145-b0db-67dd0b57e416', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:10$ over 27 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$940$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$943$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$945$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×27×(7+10)=2295$. **Step 2:** A''s share $\\frac{7}{17}×2295=945$."},{"id":"D","text":"$2295$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×27×(7+10)=2295$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×2295=945$ tasks.

**Step 3 — Answer C.** $945$

**Distractor analysis:**
- **A** ($940$): Underestimates A''s share of the total.
- **B** ($943$): Close but ratio arithmetic is off.
- **D** ($2295$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef50a829-9b26-489f-88dd-df0946de3749', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 28 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×28×(4+11)=1260$. **Step 2:** A''s share $\\frac{4}{15}×1260=336$."},{"id":"D","text":"$1260$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×28×(4+11)=1260$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×1260=336$ tasks.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($1260$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2e8d1df2-c407-4e71-a319-c23741fa9bac', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:7$ over 29 hours at 4 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"580","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=4×29×(5+7)=1392$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×1392=580$ tasks.

**Step 3 — Answer SPR.** 580', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1dfe9d9e-bd84-4eaa-8158-d6e9fe4798bb', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 30 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$895$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$898$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$900$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×30×(6+8)=2100$. **Step 2:** A''s share $\\frac{6}{14}×2100=900$."},{"id":"D","text":"$2100$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×30×(6+8)=2100$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×2100=900$ tasks.

**Step 3 — Answer C.** $900$

**Distractor analysis:**
- **A** ($895$): Underestimates A''s share of the total.
- **B** ($898$): Close but ratio arithmetic is off.
- **D** ($2100$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
