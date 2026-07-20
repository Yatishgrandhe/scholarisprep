BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a1ece97-5911-46c2-80e0-e2bd22a1bee8', 'If the original price is $690$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$699$","is_correct":true,"explanation":"Correct (A). **Step 1:** $690×1.35=932$. **Step 2:** $932×0.75=699$."},{"id":"B","text":"$690$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$932$","is_correct":false,"explanation":"Choice C ($932$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$759$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $690$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $690×(1+35/100)=932$.
**Step 2:** Discount on new price: $932×(1-25/100)=699$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $699$

**Distractor analysis:**
- **B** ($690$): Ignores both percent changes.
- **C** ($932$): Choice C ($932$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($759$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('431a47a3-81f6-437a-bc90-581f4b6a26ab', 'If the original price is $705$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$839$","is_correct":true,"explanation":"Correct (A). **Step 1:** $705×1.4=987$. **Step 2:** $987×0.85=839$."},{"id":"B","text":"$705$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$987$","is_correct":false,"explanation":"Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$881$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $705$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $705×(1+40/100)=987$.
**Step 2:** Discount on new price: $987×(1-15/100)=839$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $839$

**Distractor analysis:**
- **B** ($705$): Ignores both percent changes.
- **C** ($987$): Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($881$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1ab82a1-edbe-4c36-8a53-5f3016a7468a', 'If the original price is $720$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$720$","is_correct":true,"explanation":"Correct (A). **Step 1:** $720×1.25=900$. **Step 2:** $900×0.8=720$."},{"id":"B","text":"$720$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$900$","is_correct":false,"explanation":"Choice C ($900$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$756$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $720$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $720×(1+25/100)=900$.
**Step 2:** Discount on new price: $900×(1-20/100)=720$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $720$

**Distractor analysis:**
- **B** ($720$): Ignores both percent changes.
- **C** ($900$): Choice C ($900$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($756$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb2164b6-0014-4c64-8218-84a93f9d8895', 'If the original price is $735$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"SPR","text":"717","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $735$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $735×(1+30/100)=956$.
**Step 2:** Discount on new price: $956×(1-25/100)=717$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 717', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('589181e2-2f6d-40a1-a05d-5f32dc3d448b', 'If the original price is $750$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$861$","is_correct":true,"explanation":"Correct (A). **Step 1:** $750×1.35=1013$. **Step 2:** $1013×0.85=861$."},{"id":"B","text":"$750$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1013$","is_correct":false,"explanation":"Choice C ($1013$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$900$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $750$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $750×(1+35/100)=1013$.
**Step 2:** Discount on new price: $1013×(1-15/100)=861$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $861$

**Distractor analysis:**
- **B** ($750$): Ignores both percent changes.
- **C** ($1013$): Choice C ($1013$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($900$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f9c41dd-dd6b-4f55-a40e-89610a718aba', 'If the original price is $765$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$857$","is_correct":true,"explanation":"Correct (A). **Step 1:** $765×1.4=1071$. **Step 2:** $1071×0.8=857$."},{"id":"B","text":"$765$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1071$","is_correct":false,"explanation":"Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$918$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $765$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $765×(1+40/100)=1071$.
**Step 2:** Discount on new price: $1071×(1-20/100)=857$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $857$

**Distractor analysis:**
- **B** ($765$): Ignores both percent changes.
- **C** ($1071$): Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($918$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb9f2687-c020-4fa4-b10b-21a48942255f', 'If the original price is $780$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$731$","is_correct":true,"explanation":"Correct (A). **Step 1:** $780×1.25=975$. **Step 2:** $975×0.75=731$."},{"id":"B","text":"$780$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$975$","is_correct":false,"explanation":"Choice C ($975$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$780$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $780$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $780×(1+25/100)=975$.
**Step 2:** Discount on new price: $975×(1-25/100)=731$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $731$

**Distractor analysis:**
- **B** ($780$): Ignores both percent changes.
- **C** ($975$): Choice C ($975$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($780$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('91b14698-ba7c-44b8-9422-2fad8f21fbdb', 'If the original price is $795$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"SPR","text":"879","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $795$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $795×(1+30/100)=1034$.
**Step 2:** Discount on new price: $1034×(1-15/100)=879$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 879', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1eadedda-49e0-4129-9d03-17c00ac5f487', 'If the original price is $810$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$875$","is_correct":true,"explanation":"Correct (A). **Step 1:** $810×1.35=1094$. **Step 2:** $1094×0.8=875$."},{"id":"B","text":"$810$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1094$","is_correct":false,"explanation":"Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$931$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $810$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $810×(1+35/100)=1094$.
**Step 2:** Discount on new price: $1094×(1-20/100)=875$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $875$

**Distractor analysis:**
- **B** ($810$): Ignores both percent changes.
- **C** ($1094$): Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($931$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a0ad903-6187-464d-83d8-4aadada217d0', 'If the original price is $825$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$866$","is_correct":true,"explanation":"Correct (A). **Step 1:** $825×1.4=1155$. **Step 2:** $1155×0.75=866$."},{"id":"B","text":"$825$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1155$","is_correct":false,"explanation":"Choice C ($1155$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$949$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $825$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $825×(1+40/100)=1155$.
**Step 2:** Discount on new price: $1155×(1-25/100)=866$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $866$

**Distractor analysis:**
- **B** ($825$): Ignores both percent changes.
- **C** ($1155$): Choice C ($1155$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($949$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11cea2c2-e882-4ee2-89c4-7c2eaf480f9a', 'If the original price is $840$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$893$","is_correct":true,"explanation":"Correct (A). **Step 1:** $840×1.25=1050$. **Step 2:** $1050×0.85=893$."},{"id":"B","text":"$840$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1050$","is_correct":false,"explanation":"Choice C ($1050$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$924$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $840$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $840×(1+25/100)=1050$.
**Step 2:** Discount on new price: $1050×(1-15/100)=893$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $893$

**Distractor analysis:**
- **B** ($840$): Ignores both percent changes.
- **C** ($1050$): Choice C ($1050$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($924$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38797f0b-f5f1-4e4b-9734-2ec369632262', 'If the original price is $855$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"SPR","text":"890","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $855$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $855×(1+30/100)=1112$.
**Step 2:** Discount on new price: $1112×(1-20/100)=890$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 890', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
