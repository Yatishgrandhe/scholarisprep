BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8e12287-e64c-485d-bbb5-be198c00c90d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:10$ over 7 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$142$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$145$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$147$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×7×(7+10)=357$. **Step 2:** A''s share $\\frac{7}{17}×357=147$."},{"id":"D","text":"$357$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×7×(7+10)=357$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×357=147$ tasks.

**Step 3 — Answer C.** $147$

**Distractor analysis:**
- **A** ($142$): Underestimates A''s share of the total.
- **B** ($145$): Close but ratio arithmetic is off.
- **D** ($357$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1add5432-ae43-43d8-a4f9-72d54c1af4b9', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 8 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$123$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$126$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$128$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×8×(4+11)=480$. **Step 2:** A''s share $\\frac{4}{15}×480=128$."},{"id":"D","text":"$480$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×8×(4+11)=480$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×480=128$ tasks.

**Step 3 — Answer C.** $128$

**Distractor analysis:**
- **A** ($123$): Underestimates A''s share of the total.
- **B** ($126$): Close but ratio arithmetic is off.
- **D** ($480$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ec81aea-3e5d-430b-b2f9-822c93c00105', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:7$ over 9 hours at 5 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"225","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=5×9×(5+7)=540$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×540=225$ tasks.

**Step 3 — Answer SPR.** 225', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1940446a-7edd-46f1-a98b-63766e26e56b', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 10 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$175$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$178$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$180$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×10×(6+8)=420$. **Step 2:** A''s share $\\frac{6}{14}×420=180$."},{"id":"D","text":"$420$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×10×(6+8)=420$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×420=180$ tasks.

**Step 3 — Answer C.** $180$

**Distractor analysis:**
- **A** ($175$): Underestimates A''s share of the total.
- **B** ($178$): Close but ratio arithmetic is off.
- **D** ($420$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3a46b2e-cc60-47da-b622-e8918f8a77ad', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 11 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$303$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$306$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$308$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×11×(7+9)=704$. **Step 2:** A''s share $\\frac{7}{16}×704=308$."},{"id":"D","text":"$704$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×11×(7+9)=704$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×704=308$ tasks.

**Step 3 — Answer C.** $308$

**Distractor analysis:**
- **A** ($303$): Underestimates A''s share of the total.
- **B** ($306$): Close but ratio arithmetic is off.
- **D** ($704$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('229538b9-2986-41cf-8b8a-3c080f4dcdfc', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 12 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$235$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$238$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$240$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×12×(4+10)=840$. **Step 2:** A''s share $\\frac{4}{14}×840=240$."},{"id":"D","text":"$840$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×12×(4+10)=840$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×840=240$ tasks.

**Step 3 — Answer C.** $240$

**Distractor analysis:**
- **A** ($235$): Underestimates A''s share of the total.
- **B** ($238$): Close but ratio arithmetic is off.
- **D** ($840$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e0a5af5-119c-48f8-b02a-af48c6e3e6a2', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:11$ over 13 hours at 3 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"195","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=3×13×(5+11)=624$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×624=195$ tasks.

**Step 3 — Answer SPR.** 195', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bec1c21f-f220-4a5c-b921-bf4b93ad0fc5', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:7$ over 14 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×14×(6+7)=728$. **Step 2:** A''s share $\\frac{6}{13}×728=336$."},{"id":"D","text":"$728$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×14×(6+7)=728$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×728=336$ tasks.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($728$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2cb5c439-5583-4e19-aa8f-e32dcffa32c8', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 15 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×15×(7+8)=1125$. **Step 2:** A''s share $\\frac{7}{15}×1125=525$."},{"id":"D","text":"$1125$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×15×(7+8)=1125$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×1125=525$ tasks.

**Step 3 — Answer C.** $525$

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1125$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d74afb5e-42cd-4d2d-a652-924502eb7c59', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:9$ over 16 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$187$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$190$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$192$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×16×(4+9)=624$. **Step 2:** A''s share $\\frac{4}{13}×624=192$."},{"id":"D","text":"$624$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×16×(4+9)=624$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×624=192$ tasks.

**Step 3 — Answer C.** $192$

**Distractor analysis:**
- **A** ($187$): Underestimates A''s share of the total.
- **B** ($190$): Close but ratio arithmetic is off.
- **D** ($624$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e34974e8-d395-4069-ae90-1d81e2212758', 'How many tasks did the first worker complete? Enter your answer as a number.', 'Two workers split tasks in ratio $5:10$ over 17 hours at 4 tasks/hour combined.', 'passage', '[{"id":"SPR","text":"340","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How many tasks did the first worker complete? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Combined output $=4×17×(5+10)=1020$ tasks.
**Step 2:** A''s fraction $\frac{5}{15}$.
**Step 3:** $\frac{5}{15}×1020=340$ tasks.

**Step 3 — Answer SPR.** 340', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('489120d2-d509-4153-bdba-9747669c2eed', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:11$ over 18 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$535$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$538$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$540$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×18×(6+11)=1530$. **Step 2:** A''s share $\\frac{6}{17}×1530=540$."},{"id":"D","text":"$1530$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×18×(6+11)=1530$ tasks.
**Step 2:** A''s fraction $\frac{6}{17}$.
**Step 3:** $\frac{6}{17}×1530=540$ tasks.

**Step 3 — Answer C.** $540$

**Distractor analysis:**
- **A** ($535$): Underestimates A''s share of the total.
- **B** ($538$): Close but ratio arithmetic is off.
- **D** ($1530$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
