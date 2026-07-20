BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99023728-1e3f-45f3-8e60-1bc045f383ce', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:10$ over 7 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$142$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$145$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$147$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×7×(7+10)=357$. **Step 2:** A''s share $\\frac{7}{17}×357=147$."},{"id":"D","text":"$357$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×7×(7+10)=357$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×357=147$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $147$

**Distractor analysis:**
- **A** ($142$): Underestimates A''s share of the total.
- **B** ($145$): Close but ratio arithmetic is off.
- **D** ($357$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38ae45b0-8a9b-4cc2-9f31-bde6b24dbc50', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 8 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$123$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$126$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$128$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×8×(4+11)=480$. **Step 2:** A''s share $\\frac{4}{15}×480=128$."},{"id":"D","text":"$480$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×8×(4+11)=480$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×480=128$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $128$

**Distractor analysis:**
- **A** ($123$): Underestimates A''s share of the total.
- **B** ($126$): Close but ratio arithmetic is off.
- **D** ($480$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1f5c2d7-495c-4545-b3f0-e2e6e0cf7bb0', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:7$ over 9 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$220$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$223$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$225$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×9×(5+7)=540$. **Step 2:** A''s share $\\frac{5}{12}×540=225$."},{"id":"D","text":"$540$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×9×(5+7)=540$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×540=225$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $225$

**Distractor analysis:**
- **A** ($220$): Underestimates A''s share of the total.
- **B** ($223$): Close but ratio arithmetic is off.
- **D** ($540$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('858fe297-560c-4aaa-8d68-22b998f75bec', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 10 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$175$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$178$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$180$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×10×(6+8)=420$. **Step 2:** A''s share $\\frac{6}{14}×420=180$."},{"id":"D","text":"$420$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×10×(6+8)=420$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×420=180$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $180$

**Distractor analysis:**
- **A** ($175$): Underestimates A''s share of the total.
- **B** ($178$): Close but ratio arithmetic is off.
- **D** ($420$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e69a07dd-d3f1-4420-854e-1616ab1242ca', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 11 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$303$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$306$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$308$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×11×(7+9)=704$. **Step 2:** A''s share $\\frac{7}{16}×704=308$."},{"id":"D","text":"$704$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×11×(7+9)=704$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×704=308$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $308$

**Distractor analysis:**
- **A** ($303$): Underestimates A''s share of the total.
- **B** ($306$): Close but ratio arithmetic is off.
- **D** ($704$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d03b1a67-8c28-4e51-a50a-946c86f0557f', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 12 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$235$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$238$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$240$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×12×(4+10)=840$. **Step 2:** A''s share $\\frac{4}{14}×840=240$."},{"id":"D","text":"$840$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×12×(4+10)=840$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×840=240$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $240$

**Distractor analysis:**
- **A** ($235$): Underestimates A''s share of the total.
- **B** ($238$): Close but ratio arithmetic is off.
- **D** ($840$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('65c78251-94fe-4f4e-afb2-75147296a854', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:11$ over 13 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$190$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$193$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$195$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×13×(5+11)=624$. **Step 2:** A''s share $\\frac{5}{16}×624=195$."},{"id":"D","text":"$624$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×13×(5+11)=624$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×624=195$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $195$

**Distractor analysis:**
- **A** ($190$): Underestimates A''s share of the total.
- **B** ($193$): Close but ratio arithmetic is off.
- **D** ($624$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('923094de-94a4-4bc2-af9c-97df1a184898', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:7$ over 14 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×14×(6+7)=728$. **Step 2:** A''s share $\\frac{6}{13}×728=336$."},{"id":"D","text":"$728$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×14×(6+7)=728$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×728=336$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($728$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f50d4a9-1b36-48c4-b6e5-6253a8897c5e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 15 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×15×(7+8)=1125$. **Step 2:** A''s share $\\frac{7}{15}×1125=525$."},{"id":"D","text":"$1125$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×15×(7+8)=1125$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×1125=525$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $525$

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1125$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e4c7c98-647e-4838-8c40-693aaa0cdcdf', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:9$ over 16 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$187$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$190$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$192$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×16×(4+9)=624$. **Step 2:** A''s share $\\frac{4}{13}×624=192$."},{"id":"D","text":"$624$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×16×(4+9)=624$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×624=192$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $192$

**Distractor analysis:**
- **A** ($187$): Underestimates A''s share of the total.
- **B** ($190$): Close but ratio arithmetic is off.
- **D** ($624$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da54d2f7-934f-415d-8293-982eab91344d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:10$ over 17 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$335$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$338$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$340$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×17×(5+10)=1020$. **Step 2:** A''s share $\\frac{5}{15}×1020=340$."},{"id":"D","text":"$1020$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×17×(5+10)=1020$ tasks.
**Step 2:** A''s fraction $\frac{5}{15}$.
**Step 3:** $\frac{5}{15}×1020=340$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $340$

**Distractor analysis:**
- **A** ($335$): Underestimates A''s share of the total.
- **B** ($338$): Close but ratio arithmetic is off.
- **D** ($1020$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c578fea-93ae-46e1-9a38-03d5f9f72bd9', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:11$ over 18 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$535$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$538$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$540$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×18×(6+11)=1530$. **Step 2:** A''s share $\\frac{6}{17}×1530=540$."},{"id":"D","text":"$1530$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×18×(6+11)=1530$ tasks.
**Step 2:** A''s fraction $\frac{6}{17}$.
**Step 3:** $\frac{6}{17}×1530=540$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $540$

**Distractor analysis:**
- **A** ($535$): Underestimates A''s share of the total.
- **B** ($538$): Close but ratio arithmetic is off.
- **D** ($1530$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
