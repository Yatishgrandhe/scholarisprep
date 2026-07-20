BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b3d27ec-8449-46eb-a175-049c0b3c72bf', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $460.', 'passage', '[{"id":"A","text":"$460$","is_correct":false,"explanation":"Choice A ($460$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$552$","is_correct":true,"explanation":"Correct (B). **Step 1:** 460×1.20=552."},{"id":"C","text":"$562$","is_correct":false,"explanation":"Choice C ($562$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$92$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $460 	imes (1 + 20/100) = 552$

**Step 3 — Answer B.** $552$

**Distractor analysis:**
- **A** ($460$): Choice A ($460$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($562$): Choice C ($562$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($92$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3cb310b-fcb1-442f-9842-44f4c1edad8b', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $470.', 'passage', '[{"id":"A","text":"$470$","is_correct":false,"explanation":"Choice A ($470$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$564$","is_correct":true,"explanation":"Correct (B). **Step 1:** 470×1.20=564."},{"id":"C","text":"$574$","is_correct":false,"explanation":"Choice C ($574$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$94$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $470 	imes (1 + 20/100) = 564$

**Step 3 — Answer B.** $564$

**Distractor analysis:**
- **A** ($470$): Choice A ($470$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($574$): Choice C ($574$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($94$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dd328964-aed2-44f2-8c06-ad57beb2deb9', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $480.', 'passage', '[{"id":"A","text":"$480$","is_correct":false,"explanation":"Choice A ($480$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$576$","is_correct":true,"explanation":"Correct (B). **Step 1:** 480×1.20=576."},{"id":"C","text":"$586$","is_correct":false,"explanation":"Choice C ($586$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$96$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $480 	imes (1 + 20/100) = 576$

**Step 3 — Answer B.** $576$

**Distractor analysis:**
- **A** ($480$): Choice A ($480$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($586$): Choice C ($586$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($96$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd38fefc-c207-4b4e-bde4-360d37e7e900', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $490.', 'passage', '[{"id":"SPR","text":"588","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $490 	imes (1 + 20/100) = 588$

**Step 3 — Answer SPR.** 588', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a5f7bf81-14b7-438d-9e5b-9c5f8d8dfb9a', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $500.', 'passage', '[{"id":"A","text":"$500$","is_correct":false,"explanation":"Choice A ($500$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$600$","is_correct":true,"explanation":"Correct (B). **Step 1:** 500×1.20=600."},{"id":"C","text":"$610$","is_correct":false,"explanation":"Choice C ($610$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$100$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $500 	imes (1 + 20/100) = 600$

**Step 3 — Answer B.** $600$

**Distractor analysis:**
- **A** ($500$): Choice A ($500$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($610$): Choice C ($610$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($100$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ac81d303-15d4-4b2a-8a07-c5ee289fc416', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $510.', 'passage', '[{"id":"A","text":"$510$","is_correct":false,"explanation":"Choice A ($510$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$612$","is_correct":true,"explanation":"Correct (B). **Step 1:** 510×1.20=612."},{"id":"C","text":"$622$","is_correct":false,"explanation":"Choice C ($622$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$102$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $510 	imes (1 + 20/100) = 612$

**Step 3 — Answer B.** $612$

**Distractor analysis:**
- **A** ($510$): Choice A ($510$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($622$): Choice C ($622$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($102$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('382078ff-e67d-4d34-b3f4-ddfdcb458e06', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $520.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Choice A ($520$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$624$","is_correct":true,"explanation":"Correct (B). **Step 1:** 520×1.20=624."},{"id":"C","text":"$634$","is_correct":false,"explanation":"Choice C ($634$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$104$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $520 	imes (1 + 20/100) = 624$

**Step 3 — Answer B.** $624$

**Distractor analysis:**
- **A** ($520$): Choice A ($520$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($634$): Choice C ($634$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($104$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dce6c8b9-04b7-4982-a985-e4d2e3fc323f', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $530.', 'passage', '[{"id":"SPR","text":"636","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $530 	imes (1 + 20/100) = 636$

**Step 3 — Answer SPR.** 636', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d152425c-ab45-42c2-98b6-2528ba831021', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $540.', 'passage', '[{"id":"A","text":"$540$","is_correct":false,"explanation":"Choice A ($540$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$648$","is_correct":true,"explanation":"Correct (B). **Step 1:** 540×1.20=648."},{"id":"C","text":"$658$","is_correct":false,"explanation":"Choice C ($658$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$108$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $540 	imes (1 + 20/100) = 648$

**Step 3 — Answer B.** $648$

**Distractor analysis:**
- **A** ($540$): Choice A ($540$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($658$): Choice C ($658$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($108$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f2032e8e-b2d8-4073-b175-d63ac196d919', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $550.', 'passage', '[{"id":"A","text":"$550$","is_correct":false,"explanation":"Choice A ($550$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$660$","is_correct":true,"explanation":"Correct (B). **Step 1:** 550×1.20=660."},{"id":"C","text":"$670$","is_correct":false,"explanation":"Choice C ($670$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$110$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $550 	imes (1 + 20/100) = 660$

**Step 3 — Answer B.** $660$

**Distractor analysis:**
- **A** ($550$): Choice A ($550$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($670$): Choice C ($670$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($110$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c55358a-7ded-468f-9b65-733da587514c', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $560.', 'passage', '[{"id":"A","text":"$560$","is_correct":false,"explanation":"Choice A ($560$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$672$","is_correct":true,"explanation":"Correct (B). **Step 1:** 560×1.20=672."},{"id":"C","text":"$682$","is_correct":false,"explanation":"Choice C ($682$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$112$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $560 	imes (1 + 20/100) = 672$

**Step 3 — Answer B.** $672$

**Distractor analysis:**
- **A** ($560$): Choice A ($560$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($682$): Choice C ($682$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($112$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60a446ff-bacf-4ab6-85e9-a28030ae9f0d', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $570.', 'passage', '[{"id":"SPR","text":"684","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $570 	imes (1 + 20/100) = 684$

**Step 3 — Answer SPR.** 684', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
