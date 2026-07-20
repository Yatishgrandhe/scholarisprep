BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d5270511-3157-4875-8afd-d840f6764a69', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $340.', 'passage', '[{"id":"A","text":"$340$","is_correct":false,"explanation":"Choice A ($340$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$408$","is_correct":true,"explanation":"Correct (B). **Step 1:** 340×1.20=408."},{"id":"C","text":"$418$","is_correct":false,"explanation":"Choice C ($418$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$68$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $340 	imes (1 + 20/100) = 408$

**Step 3 — Answer B.** $408$

**Distractor analysis:**
- **A** ($340$): Choice A ($340$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($418$): Choice C ($418$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($68$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f11a69dc-e493-4b29-8c2f-71bc6f939baa', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $350.', 'passage', '[{"id":"A","text":"$350$","is_correct":false,"explanation":"Choice A ($350$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$420$","is_correct":true,"explanation":"Correct (B). **Step 1:** 350×1.20=420."},{"id":"C","text":"$430$","is_correct":false,"explanation":"Choice C ($430$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$70$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $350 	imes (1 + 20/100) = 420$

**Step 3 — Answer B.** $420$

**Distractor analysis:**
- **A** ($350$): Choice A ($350$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($430$): Choice C ($430$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($70$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('539549f6-8c2c-40b5-bc62-8be431cdec48', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $360.', 'passage', '[{"id":"A","text":"$360$","is_correct":false,"explanation":"Choice A ($360$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$432$","is_correct":true,"explanation":"Correct (B). **Step 1:** 360×1.20=432."},{"id":"C","text":"$442$","is_correct":false,"explanation":"Choice C ($442$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$72$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $360 	imes (1 + 20/100) = 432$

**Step 3 — Answer B.** $432$

**Distractor analysis:**
- **A** ($360$): Choice A ($360$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($442$): Choice C ($442$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($72$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db0ec296-8b4d-4a65-97c6-d75f6fb519d7', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $370.', 'passage', '[{"id":"SPR","text":"444","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $370 	imes (1 + 20/100) = 444$

**Step 3 — Answer SPR.** 444', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c53e79b8-86cf-461a-be8a-be8c3d0a73d3', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $380.', 'passage', '[{"id":"A","text":"$380$","is_correct":false,"explanation":"Choice A ($380$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$456$","is_correct":true,"explanation":"Correct (B). **Step 1:** 380×1.20=456."},{"id":"C","text":"$466$","is_correct":false,"explanation":"Choice C ($466$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$76$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $380 	imes (1 + 20/100) = 456$

**Step 3 — Answer B.** $456$

**Distractor analysis:**
- **A** ($380$): Choice A ($380$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($466$): Choice C ($466$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($76$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b0e3d30a-e609-4e21-a0d4-b98fa03f33f5', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $390.', 'passage', '[{"id":"A","text":"$390$","is_correct":false,"explanation":"Choice A ($390$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$468$","is_correct":true,"explanation":"Correct (B). **Step 1:** 390×1.20=468."},{"id":"C","text":"$478$","is_correct":false,"explanation":"Choice C ($478$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$78$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $390 	imes (1 + 20/100) = 468$

**Step 3 — Answer B.** $468$

**Distractor analysis:**
- **A** ($390$): Choice A ($390$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($478$): Choice C ($478$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($78$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9fb0e8f4-6c17-47bb-b9c1-61433715b957', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $400.', 'passage', '[{"id":"A","text":"$400$","is_correct":false,"explanation":"Choice A ($400$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$480$","is_correct":true,"explanation":"Correct (B). **Step 1:** 400×1.20=480."},{"id":"C","text":"$490$","is_correct":false,"explanation":"Choice C ($490$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$80$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $400 	imes (1 + 20/100) = 480$

**Step 3 — Answer B.** $480$

**Distractor analysis:**
- **A** ($400$): Choice A ($400$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($490$): Choice C ($490$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($80$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('053781c1-c30b-4353-8e36-9b174dfc82f7', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $410.', 'passage', '[{"id":"SPR","text":"492","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $410 	imes (1 + 20/100) = 492$

**Step 3 — Answer SPR.** 492', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('24a56621-c55c-4e9d-9f9d-ac6c98421a36', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $420.', 'passage', '[{"id":"A","text":"$420$","is_correct":false,"explanation":"Choice A ($420$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$504$","is_correct":true,"explanation":"Correct (B). **Step 1:** 420×1.20=504."},{"id":"C","text":"$514$","is_correct":false,"explanation":"Choice C ($514$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$84$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $420 	imes (1 + 20/100) = 504$

**Step 3 — Answer B.** $504$

**Distractor analysis:**
- **A** ($420$): Choice A ($420$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($514$): Choice C ($514$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($84$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a879a922-cc14-4ebf-bfc1-d5e3e8bc261e', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $430.', 'passage', '[{"id":"A","text":"$430$","is_correct":false,"explanation":"Choice A ($430$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$516$","is_correct":true,"explanation":"Correct (B). **Step 1:** 430×1.20=516."},{"id":"C","text":"$526$","is_correct":false,"explanation":"Choice C ($526$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$86$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $430 	imes (1 + 20/100) = 516$

**Step 3 — Answer B.** $516$

**Distractor analysis:**
- **A** ($430$): Choice A ($430$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($526$): Choice C ($526$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($86$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fd13041-7ce0-4e28-85ab-c9d20520ebbe', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $440.', 'passage', '[{"id":"A","text":"$440$","is_correct":false,"explanation":"Choice A ($440$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$528$","is_correct":true,"explanation":"Correct (B). **Step 1:** 440×1.20=528."},{"id":"C","text":"$538$","is_correct":false,"explanation":"Choice C ($538$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$88$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $440 	imes (1 + 20/100) = 528$

**Step 3 — Answer B.** $528$

**Distractor analysis:**
- **A** ($440$): Choice A ($440$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($538$): Choice C ($538$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($88$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('446d6a50-dfd3-4ab9-a357-bae6c12ac22a', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $450.', 'passage', '[{"id":"SPR","text":"540","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $450 	imes (1 + 20/100) = 540$

**Step 3 — Answer SPR.** 540', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
