BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3c3df83-245b-4004-b858-3ad8f082727b', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $80.', 'passage', '[{"id":"A","text":"$80$","is_correct":false,"explanation":"Choice A ($80$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$96$","is_correct":true,"explanation":"Correct (B). **Step 1:** 80×1.20=96."},{"id":"C","text":"$106$","is_correct":false,"explanation":"Choice C ($106$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $80 	imes (1 + 20/100) = 96$

**Step 3 — Answer B.** $96$

**Distractor analysis:**
- **A** ($80$): Choice A ($80$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($106$): Choice C ($106$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cff4ec41-1697-488e-965f-b7c5f38cff4a', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $90.', 'passage', '[{"id":"A","text":"$90$","is_correct":false,"explanation":"Choice A ($90$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$108$","is_correct":true,"explanation":"Correct (B). **Step 1:** 90×1.20=108."},{"id":"C","text":"$118$","is_correct":false,"explanation":"Choice C ($118$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $90 	imes (1 + 20/100) = 108$

**Step 3 — Answer B.** $108$

**Distractor analysis:**
- **A** ($90$): Choice A ($90$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($118$): Choice C ($118$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2666691-18c7-49ab-bdf2-4aeec4c89179', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $100.', 'passage', '[{"id":"A","text":"$100$","is_correct":false,"explanation":"Choice A ($100$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$120$","is_correct":true,"explanation":"Correct (B). **Step 1:** 100×1.20=120."},{"id":"C","text":"$130$","is_correct":false,"explanation":"Choice C ($130$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $100 	imes (1 + 20/100) = 120$

**Step 3 — Answer B.** $120$

**Distractor analysis:**
- **A** ($100$): Choice A ($100$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($130$): Choice C ($130$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('630b01aa-d031-415e-8dcf-89d67aa7054e', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $110.', 'passage', '[{"id":"SPR","text":"132","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $110 	imes (1 + 20/100) = 132$

**Step 3 — Answer SPR.** 132', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c28df117-6ff8-410f-b82d-b35dc8028a6b', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $120.', 'passage', '[{"id":"A","text":"$120$","is_correct":false,"explanation":"Choice A ($120$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$144$","is_correct":true,"explanation":"Correct (B). **Step 1:** 120×1.20=144."},{"id":"C","text":"$154$","is_correct":false,"explanation":"Choice C ($154$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $120 	imes (1 + 20/100) = 144$

**Step 3 — Answer B.** $144$

**Distractor analysis:**
- **A** ($120$): Choice A ($120$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($154$): Choice C ($154$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99a49728-0c9a-406f-878a-a0453b325960', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $130.', 'passage', '[{"id":"A","text":"$130$","is_correct":false,"explanation":"Choice A ($130$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$156$","is_correct":true,"explanation":"Correct (B). **Step 1:** 130×1.20=156."},{"id":"C","text":"$166$","is_correct":false,"explanation":"Choice C ($166$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$26$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $130 	imes (1 + 20/100) = 156$

**Step 3 — Answer B.** $156$

**Distractor analysis:**
- **A** ($130$): Choice A ($130$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($166$): Choice C ($166$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($26$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('44de1721-b18e-46e0-8928-0ed9831f54fe', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $140.', 'passage', '[{"id":"A","text":"$140$","is_correct":false,"explanation":"Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$168$","is_correct":true,"explanation":"Correct (B). **Step 1:** 140×1.20=168."},{"id":"C","text":"$178$","is_correct":false,"explanation":"Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $140 	imes (1 + 20/100) = 168$

**Step 3 — Answer B.** $168$

**Distractor analysis:**
- **A** ($140$): Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($178$): Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06797742-b038-4e1e-b77f-62ffb0021b91', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $150.', 'passage', '[{"id":"SPR","text":"180","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $150 	imes (1 + 20/100) = 180$

**Step 3 — Answer SPR.** 180', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c303bd9e-dc1a-4808-b3f8-f8c09b516db7', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $160.', 'passage', '[{"id":"A","text":"$160$","is_correct":false,"explanation":"Choice A ($160$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$192$","is_correct":true,"explanation":"Correct (B). **Step 1:** 160×1.20=192."},{"id":"C","text":"$202$","is_correct":false,"explanation":"Choice C ($202$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $160 	imes (1 + 20/100) = 192$

**Step 3 — Answer B.** $192$

**Distractor analysis:**
- **A** ($160$): Choice A ($160$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($202$): Choice C ($202$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bbe1e444-c186-469d-a6c6-4f0ed3005632', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $170.', 'passage', '[{"id":"A","text":"$170$","is_correct":false,"explanation":"Choice A ($170$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$204$","is_correct":true,"explanation":"Correct (B). **Step 1:** 170×1.20=204."},{"id":"C","text":"$214$","is_correct":false,"explanation":"Choice C ($214$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $170 	imes (1 + 20/100) = 204$

**Step 3 — Answer B.** $204$

**Distractor analysis:**
- **A** ($170$): Choice A ($170$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($214$): Choice C ($214$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('88679c34-78f0-4127-9601-60df7f2fa538', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $180.', 'passage', '[{"id":"A","text":"$180$","is_correct":false,"explanation":"Choice A ($180$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$216$","is_correct":true,"explanation":"Correct (B). **Step 1:** 180×1.20=216."},{"id":"C","text":"$226$","is_correct":false,"explanation":"Choice C ($226$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $180 	imes (1 + 20/100) = 216$

**Step 3 — Answer B.** $216$

**Distractor analysis:**
- **A** ($180$): Choice A ($180$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($226$): Choice C ($226$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7178ccf3-ebfe-494c-b980-71ccae1138c9', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $190.', 'passage', '[{"id":"SPR","text":"228","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $190 	imes (1 + 20/100) = 228$

**Step 3 — Answer SPR.** 228', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
