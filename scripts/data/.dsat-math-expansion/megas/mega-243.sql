BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('acc7c082-203f-416c-b8bc-9a8324b8b33c', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 19 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$394$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$397$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$399$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×19×(7+7)=798$. **Step 2:** A''s share $\\frac{7}{14}×798=399$."},{"id":"D","text":"$798$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×19×(7+7)=798$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×798=399$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $399$

**Distractor analysis:**
- **A** ($394$): Underestimates A''s share of the total.
- **B** ($397$): Close but ratio arithmetic is off.
- **D** ($798$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0bde9fd6-f8bc-471c-ab19-72d670f512a3', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 20 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$315$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$318$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$320$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×20×(4+8)=960$. **Step 2:** A''s share $\\frac{4}{12}×960=320$."},{"id":"D","text":"$960$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×20×(4+8)=960$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×960=320$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $320$

**Distractor analysis:**
- **A** ($315$): Underestimates A''s share of the total.
- **B** ($318$): Close but ratio arithmetic is off.
- **D** ($960$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d27630bf-0678-4457-b8bc-5d54bb6b9c34', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:9$ over 21 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×21×(5+9)=1470$. **Step 2:** A''s share $\\frac{5}{14}×1470=525$."},{"id":"D","text":"$1470$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×21×(5+9)=1470$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×1470=525$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $525$

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1470$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32e90ce7-8d7f-45c3-8e5a-079c2587fd9e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:10$ over 22 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$391$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$394$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$396$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×22×(6+10)=1056$. **Step 2:** A''s share $\\frac{6}{16}×1056=396$."},{"id":"D","text":"$1056$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×22×(6+10)=1056$ tasks.
**Step 2:** A''s fraction $\frac{6}{16}$.
**Step 3:** $\frac{6}{16}×1056=396$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $396$

**Distractor analysis:**
- **A** ($391$): Underestimates A''s share of the total.
- **B** ($394$): Close but ratio arithmetic is off.
- **D** ($1056$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6a30832-367e-42b9-bb7d-2b7ffcb93ccb', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:11$ over 23 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$639$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$642$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$644$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×23×(7+11)=1656$. **Step 2:** A''s share $\\frac{7}{18}×1656=644$."},{"id":"D","text":"$1656$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×23×(7+11)=1656$ tasks.
**Step 2:** A''s fraction $\frac{7}{18}$.
**Step 3:** $\frac{7}{18}×1656=644$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $644$

**Distractor analysis:**
- **A** ($639$): Underestimates A''s share of the total.
- **B** ($642$): Close but ratio arithmetic is off.
- **D** ($1656$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca826418-e765-42c3-8b40-dca2fe163032', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:7$ over 24 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$475$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$478$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$480$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×24×(4+7)=1320$. **Step 2:** A''s share $\\frac{4}{11}×1320=480$."},{"id":"D","text":"$1320$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×24×(4+7)=1320$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×1320=480$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $480$

**Distractor analysis:**
- **A** ($475$): Underestimates A''s share of the total.
- **B** ($478$): Close but ratio arithmetic is off.
- **D** ($1320$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c9b6226-b1b2-4d98-b1f2-1dd2da977d11', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:8$ over 25 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$370$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$373$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$375$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×25×(5+8)=975$. **Step 2:** A''s share $\\frac{5}{13}×975=375$."},{"id":"D","text":"$975$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×25×(5+8)=975$ tasks.
**Step 2:** A''s fraction $\frac{5}{13}$.
**Step 3:** $\frac{5}{13}×975=375$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $375$

**Distractor analysis:**
- **A** ($370$): Underestimates A''s share of the total.
- **B** ($373$): Close but ratio arithmetic is off.
- **D** ($975$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d1d12922-e540-450b-aaa6-3a23d34598e6', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:9$ over 26 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$619$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$622$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$624$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×26×(6+9)=1560$. **Step 2:** A''s share $\\frac{6}{15}×1560=624$."},{"id":"D","text":"$1560$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×26×(6+9)=1560$ tasks.
**Step 2:** A''s fraction $\frac{6}{15}$.
**Step 3:** $\frac{6}{15}×1560=624$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $624$

**Distractor analysis:**
- **A** ($619$): Underestimates A''s share of the total.
- **B** ($622$): Close but ratio arithmetic is off.
- **D** ($1560$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6c19d25e-412d-43b4-a0de-bc587e5ae855', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:10$ over 27 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$940$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$943$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$945$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×27×(7+10)=2295$. **Step 2:** A''s share $\\frac{7}{17}×2295=945$."},{"id":"D","text":"$2295$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×27×(7+10)=2295$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×2295=945$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $945$

**Distractor analysis:**
- **A** ($940$): Underestimates A''s share of the total.
- **B** ($943$): Close but ratio arithmetic is off.
- **D** ($2295$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd602165-79b6-4fe1-8577-d6472b98124d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 28 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×28×(4+11)=1260$. **Step 2:** A''s share $\\frac{4}{15}×1260=336$."},{"id":"D","text":"$1260$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×28×(4+11)=1260$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×1260=336$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($1260$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d7aa9ea5-76ca-434c-9c51-3a1f0d558b91', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $80.', 'passage', '[{"id":"A","text":"$80$","is_correct":false,"explanation":"Choice A ($80$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$96$","is_correct":true,"explanation":"Correct (B). **Step 1:** 80×1.20=96."},{"id":"C","text":"$106$","is_correct":false,"explanation":"Choice C ($106$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $80 	imes (1 + 20/100) = 96$

**Step 3 — Answer B.** $96$

**Distractor analysis:**
- **A** ($80$): Choice A ($80$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($106$): Choice C ($106$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('999e6346-947b-423f-abdb-d54c423bda4c', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $90.', 'passage', '[{"id":"SPR","text":"108","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $90 	imes (1 + 20/100) = 108$

**Step 3 — Answer SPR.** 108', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
