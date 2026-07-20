BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9bee94fd-d35b-4090-b68c-cba335eabc2d', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $320.', 'passage', '[{"id":"A","text":"$320$","is_correct":false,"explanation":"Choice A ($320$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$384$","is_correct":true,"explanation":"Correct (B). **Step 1:** 320×1.20=384."},{"id":"C","text":"$394$","is_correct":false,"explanation":"Choice C ($394$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $320 	imes (1 + 20/100) = 384$

**Step 3 — Answer B.** $384$

**Distractor analysis:**
- **A** ($320$): Choice A ($320$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($394$): Choice C ($394$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($64$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3e8f8345-1bea-4de9-98fa-9f66d5c9c744', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $330.', 'passage', '[{"id":"A","text":"$330$","is_correct":false,"explanation":"Choice A ($330$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$396$","is_correct":true,"explanation":"Correct (B). **Step 1:** 330×1.20=396."},{"id":"C","text":"$406$","is_correct":false,"explanation":"Choice C ($406$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$66$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $330 	imes (1 + 20/100) = 396$

**Step 3 — Answer B.** $396$

**Distractor analysis:**
- **A** ($330$): Choice A ($330$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($406$): Choice C ($406$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($66$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e19c005-9ddc-4464-a346-3828d4ccfb12', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $340.', 'passage', '[{"id":"A","text":"$340$","is_correct":false,"explanation":"Choice A ($340$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$408$","is_correct":true,"explanation":"Correct (B). **Step 1:** 340×1.20=408."},{"id":"C","text":"$418$","is_correct":false,"explanation":"Choice C ($418$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$68$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $340 	imes (1 + 20/100) = 408$

**Step 3 — Answer B.** $408$

**Distractor analysis:**
- **A** ($340$): Choice A ($340$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($418$): Choice C ($418$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($68$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ee905823-2874-4bf6-a69e-36607ae4a0f1', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $350.', 'passage', '[{"id":"SPR","text":"420","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $350 	imes (1 + 20/100) = 420$

**Step 3 — Answer SPR.** 420', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('166c233c-21c1-47d2-b5ef-2f61986275f1', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $360.', 'passage', '[{"id":"A","text":"$360$","is_correct":false,"explanation":"Choice A ($360$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$432$","is_correct":true,"explanation":"Correct (B). **Step 1:** 360×1.20=432."},{"id":"C","text":"$442$","is_correct":false,"explanation":"Choice C ($442$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$72$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $360 	imes (1 + 20/100) = 432$

**Step 3 — Answer B.** $432$

**Distractor analysis:**
- **A** ($360$): Choice A ($360$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($442$): Choice C ($442$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($72$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bcc77a70-8d98-4b63-a698-78692b3e6bd2', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $370.', 'passage', '[{"id":"A","text":"$370$","is_correct":false,"explanation":"Choice A ($370$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$444$","is_correct":true,"explanation":"Correct (B). **Step 1:** 370×1.20=444."},{"id":"C","text":"$454$","is_correct":false,"explanation":"Choice C ($454$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$74$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $370 	imes (1 + 20/100) = 444$

**Step 3 — Answer B.** $444$

**Distractor analysis:**
- **A** ($370$): Choice A ($370$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($454$): Choice C ($454$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($74$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cca0d54-e8fc-4cdb-ad40-c388e0894d84', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $380.', 'passage', '[{"id":"A","text":"$380$","is_correct":false,"explanation":"Choice A ($380$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$456$","is_correct":true,"explanation":"Correct (B). **Step 1:** 380×1.20=456."},{"id":"C","text":"$466$","is_correct":false,"explanation":"Choice C ($466$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$76$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $380 	imes (1 + 20/100) = 456$

**Step 3 — Answer B.** $456$

**Distractor analysis:**
- **A** ($380$): Choice A ($380$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($466$): Choice C ($466$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($76$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32a437ea-196b-47b4-ba23-ee7d418278ad', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $390.', 'passage', '[{"id":"SPR","text":"468","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $390 	imes (1 + 20/100) = 468$

**Step 3 — Answer SPR.** 468', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a6f8644-a688-423e-83ec-21df3c987781', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $400.', 'passage', '[{"id":"A","text":"$400$","is_correct":false,"explanation":"Choice A ($400$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$480$","is_correct":true,"explanation":"Correct (B). **Step 1:** 400×1.20=480."},{"id":"C","text":"$490$","is_correct":false,"explanation":"Choice C ($490$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$80$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $400 	imes (1 + 20/100) = 480$

**Step 3 — Answer B.** $480$

**Distractor analysis:**
- **A** ($400$): Choice A ($400$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($490$): Choice C ($490$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($80$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bbec0cf2-5b29-432e-8e55-87f11bb567ff', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $410.', 'passage', '[{"id":"A","text":"$410$","is_correct":false,"explanation":"Choice A ($410$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$492$","is_correct":true,"explanation":"Correct (B). **Step 1:** 410×1.20=492."},{"id":"C","text":"$502$","is_correct":false,"explanation":"Choice C ($502$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$82$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $410 	imes (1 + 20/100) = 492$

**Step 3 — Answer B.** $492$

**Distractor analysis:**
- **A** ($410$): Choice A ($410$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($502$): Choice C ($502$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($82$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2891e9fb-0a1a-45bf-bbf6-ee1476da2bbe', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $420.', 'passage', '[{"id":"A","text":"$420$","is_correct":false,"explanation":"Choice A ($420$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$504$","is_correct":true,"explanation":"Correct (B). **Step 1:** 420×1.20=504."},{"id":"C","text":"$514$","is_correct":false,"explanation":"Choice C ($514$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$84$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $420 	imes (1 + 20/100) = 504$

**Step 3 — Answer B.** $504$

**Distractor analysis:**
- **A** ($420$): Choice A ($420$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($514$): Choice C ($514$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($84$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3dfae1dc-e692-49c7-8e32-0529c3517a8e', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $430.', 'passage', '[{"id":"SPR","text":"516","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $430 	imes (1 + 20/100) = 516$

**Step 3 — Answer SPR.** 516', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
