BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('53d92b03-e24f-40bf-8c57-7b09bd83d07f', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $440.', 'passage', '[{"id":"A","text":"$440$","is_correct":false,"explanation":"Choice A ($440$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$528$","is_correct":true,"explanation":"Correct (B). **Step 1:** 440×1.20=528."},{"id":"C","text":"$538$","is_correct":false,"explanation":"Choice C ($538$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$88$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $440 	imes (1 + 20/100) = 528$

**Step 3 — Answer B.** $528$

**Distractor analysis:**
- **A** ($440$): Choice A ($440$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($538$): Choice C ($538$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($88$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76ffe894-c830-4e96-8d9e-39ebc27a7d8a', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $450.', 'passage', '[{"id":"A","text":"$450$","is_correct":false,"explanation":"Choice A ($450$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$540$","is_correct":true,"explanation":"Correct (B). **Step 1:** 450×1.20=540."},{"id":"C","text":"$550$","is_correct":false,"explanation":"Choice C ($550$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$90$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $450 	imes (1 + 20/100) = 540$

**Step 3 — Answer B.** $540$

**Distractor analysis:**
- **A** ($450$): Choice A ($450$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($550$): Choice C ($550$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($90$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ad5641a-d961-454a-b54b-b08869d7490f', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $460.', 'passage', '[{"id":"A","text":"$460$","is_correct":false,"explanation":"Choice A ($460$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$552$","is_correct":true,"explanation":"Correct (B). **Step 1:** 460×1.20=552."},{"id":"C","text":"$562$","is_correct":false,"explanation":"Choice C ($562$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$92$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $460 	imes (1 + 20/100) = 552$

**Step 3 — Answer B.** $552$

**Distractor analysis:**
- **A** ($460$): Choice A ($460$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($562$): Choice C ($562$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($92$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('86ca80d5-d30f-4ee0-9133-abeeb8b6426e', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $470.', 'passage', '[{"id":"SPR","text":"564","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $470 	imes (1 + 20/100) = 564$

**Step 3 — Answer SPR.** 564', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8efe96d5-7bd8-4a4e-adca-a70ed156067f', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $480.', 'passage', '[{"id":"A","text":"$480$","is_correct":false,"explanation":"Choice A ($480$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$576$","is_correct":true,"explanation":"Correct (B). **Step 1:** 480×1.20=576."},{"id":"C","text":"$586$","is_correct":false,"explanation":"Choice C ($586$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$96$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $480 	imes (1 + 20/100) = 576$

**Step 3 — Answer B.** $576$

**Distractor analysis:**
- **A** ($480$): Choice A ($480$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($586$): Choice C ($586$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($96$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c389987-7276-4ffa-a296-57ed44cd41cb', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $490.', 'passage', '[{"id":"A","text":"$490$","is_correct":false,"explanation":"Choice A ($490$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$588$","is_correct":true,"explanation":"Correct (B). **Step 1:** 490×1.20=588."},{"id":"C","text":"$598$","is_correct":false,"explanation":"Choice C ($598$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$98$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $490 	imes (1 + 20/100) = 588$

**Step 3 — Answer B.** $588$

**Distractor analysis:**
- **A** ($490$): Choice A ($490$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($598$): Choice C ($598$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($98$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e2b14f2-9bda-4255-a092-f82ebf836fbd', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $500.', 'passage', '[{"id":"A","text":"$500$","is_correct":false,"explanation":"Choice A ($500$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$600$","is_correct":true,"explanation":"Correct (B). **Step 1:** 500×1.20=600."},{"id":"C","text":"$610$","is_correct":false,"explanation":"Choice C ($610$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$100$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $500 	imes (1 + 20/100) = 600$

**Step 3 — Answer B.** $600$

**Distractor analysis:**
- **A** ($500$): Choice A ($500$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($610$): Choice C ($610$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($100$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b23ec00-943d-4e16-ae95-383ab81d7550', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $510.', 'passage', '[{"id":"SPR","text":"612","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $510 	imes (1 + 20/100) = 612$

**Step 3 — Answer SPR.** 612', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cb4659a-a38d-44da-bd6f-47e231e5c673', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $520.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Choice A ($520$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$624$","is_correct":true,"explanation":"Correct (B). **Step 1:** 520×1.20=624."},{"id":"C","text":"$634$","is_correct":false,"explanation":"Choice C ($634$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$104$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $520 	imes (1 + 20/100) = 624$

**Step 3 — Answer B.** $624$

**Distractor analysis:**
- **A** ($520$): Choice A ($520$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($634$): Choice C ($634$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($104$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7445d099-7d7a-4e8d-8097-6b1a3b2147f4', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $530.', 'passage', '[{"id":"A","text":"$530$","is_correct":false,"explanation":"Choice A ($530$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$636$","is_correct":true,"explanation":"Correct (B). **Step 1:** 530×1.20=636."},{"id":"C","text":"$646$","is_correct":false,"explanation":"Choice C ($646$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$106$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $530 	imes (1 + 20/100) = 636$

**Step 3 — Answer B.** $636$

**Distractor analysis:**
- **A** ($530$): Choice A ($530$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($646$): Choice C ($646$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($106$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e22686f-6eae-4180-ac5b-7fe9b21e6343', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $540.', 'passage', '[{"id":"A","text":"$540$","is_correct":false,"explanation":"Choice A ($540$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$648$","is_correct":true,"explanation":"Correct (B). **Step 1:** 540×1.20=648."},{"id":"C","text":"$658$","is_correct":false,"explanation":"Choice C ($658$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$108$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $540 	imes (1 + 20/100) = 648$

**Step 3 — Answer B.** $648$

**Distractor analysis:**
- **A** ($540$): Choice A ($540$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($658$): Choice C ($658$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($108$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d02106ab-7373-4207-9243-5090b56a7b4f', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $550.', 'passage', '[{"id":"SPR","text":"660","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $550 	imes (1 + 20/100) = 660$

**Step 3 — Answer SPR.** 660', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
