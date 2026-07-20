BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cd4e066-dcd6-4b71-a7a7-1272448ea763', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 31 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$646$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$649$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$651$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×31×(7+9)=1488$. **Step 2:** A''s share $\\frac{7}{16}×1488=651$."},{"id":"D","text":"$1488$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×31×(7+9)=1488$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×1488=651$ tasks.

**Step 3 — Answer C.** $651$

**Distractor analysis:**
- **A** ($646$): Underestimates A''s share of the total.
- **B** ($649$): Close but ratio arithmetic is off.
- **D** ($1488$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('63a974b6-7eae-46bf-86a4-d764670b0dd1', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 32 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$507$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$510$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$512$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×32×(4+10)=1792$. **Step 2:** A''s share $\\frac{4}{14}×1792=512$."},{"id":"D","text":"$1792$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×32×(4+10)=1792$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×1792=512$ tasks.

**Step 3 — Answer C.** $512$

**Distractor analysis:**
- **A** ($507$): Underestimates A''s share of the total.
- **B** ($510$): Close but ratio arithmetic is off.
- **D** ($1792$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3caae30-d8de-4a7c-99ba-5a196a8dedd2', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:11$ over 33 hours at 5 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"825","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=5×33×(5+11)=2640$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×2640=825$ tasks.

**Step 3 — Answer SPR.** 825', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('636536c6-1e06-4f21-8658-fd9659fc3c5a', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:7$ over 34 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$607$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$610$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$612$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×34×(6+7)=1326$. **Step 2:** A''s share $\\frac{6}{13}×1326=612$."},{"id":"D","text":"$1326$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×34×(6+7)=1326$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×1326=612$ tasks.

**Step 3 — Answer C.** $612$

**Distractor analysis:**
- **A** ($607$): Underestimates A''s share of the total.
- **B** ($610$): Close but ratio arithmetic is off.
- **D** ($1326$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb7dba0c-7995-419f-9f3c-3602d0f893bc', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 35 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$975$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$978$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$980$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×35×(7+8)=2100$. **Step 2:** A''s share $\\frac{7}{15}×2100=980$."},{"id":"D","text":"$2100$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×35×(7+8)=2100$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2100=980$ tasks.

**Step 3 — Answer C.** $980$

**Distractor analysis:**
- **A** ($975$): Underestimates A''s share of the total.
- **B** ($978$): Close but ratio arithmetic is off.
- **D** ($2100$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('565f4675-1abf-4dc6-acf7-1aaddda779a4', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:9$ over 36 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$715$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$718$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$720$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×36×(4+9)=2340$. **Step 2:** A''s share $\\frac{4}{13}×2340=720$."},{"id":"D","text":"$2340$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×36×(4+9)=2340$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×2340=720$ tasks.

**Step 3 — Answer C.** $720$

**Distractor analysis:**
- **A** ($715$): Underestimates A''s share of the total.
- **B** ($718$): Close but ratio arithmetic is off.
- **D** ($2340$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4c7cabb-9919-4cff-8605-4a6591b9e0a4', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:10$ over 37 hours at 3 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"555","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=3×37×(5+10)=1665$ tasks.
**Step 2:** A''s fraction $\frac{5}{15}$.
**Step 3:** $\frac{5}{15}×1665=555$ tasks.

**Step 3 — Answer SPR.** 555', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed4fdb6b-7233-4c74-854a-4ed35495ebe7', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:11$ over 38 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$907$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$910$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$912$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×38×(6+11)=2584$. **Step 2:** A''s share $\\frac{6}{17}×2584=912$."},{"id":"D","text":"$2584$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×38×(6+11)=2584$ tasks.
**Step 2:** A''s fraction $\frac{6}{17}$.
**Step 3:** $\frac{6}{17}×2584=912$ tasks.

**Step 3 — Answer C.** $912$

**Distractor analysis:**
- **A** ($907$): Underestimates A''s share of the total.
- **B** ($910$): Close but ratio arithmetic is off.
- **D** ($2584$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9961bfa8-cf57-4fd2-81af-70b6e4c17c82', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 39 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1360$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1363$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1365$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×39×(7+7)=2730$. **Step 2:** A''s share $\\frac{7}{14}×2730=1365$."},{"id":"D","text":"$2730$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×39×(7+7)=2730$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×2730=1365$ tasks.

**Step 3 — Answer C.** $1365$

**Distractor analysis:**
- **A** ($1360$): Underestimates A''s share of the total.
- **B** ($1363$): Close but ratio arithmetic is off.
- **D** ($2730$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('feca1bfe-814a-4a30-9c97-3199ac13faef', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 40 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$475$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$478$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$480$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×40×(4+8)=1440$. **Step 2:** A''s share $\\frac{4}{12}×1440=480$."},{"id":"D","text":"$1440$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×40×(4+8)=1440$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×1440=480$ tasks.

**Step 3 — Answer C.** $480$

**Distractor analysis:**
- **A** ($475$): Underestimates A''s share of the total.
- **B** ($478$): Close but ratio arithmetic is off.
- **D** ($1440$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6766dad-da33-43d4-9771-a5747b8ec2bb', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:9$ over 41 hours at 4 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"820","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=4×41×(5+9)=2296$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×2296=820$ tasks.

**Step 3 — Answer SPR.** 820', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('968b0e75-dd35-4f3a-a504-7206eb0a518d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:10$ over 42 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1255$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1258$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1260$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×42×(6+10)=3360$. **Step 2:** A''s share $\\frac{6}{16}×3360=1260$."},{"id":"D","text":"$3360$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×42×(6+10)=3360$ tasks.
**Step 2:** A''s fraction $\frac{6}{16}$.
**Step 3:** $\frac{6}{16}×3360=1260$ tasks.

**Step 3 — Answer C.** $1260$

**Distractor analysis:**
- **A** ($1255$): Underestimates A''s share of the total.
- **B** ($1258$): Close but ratio arithmetic is off.
- **D** ($3360$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
