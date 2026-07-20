BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a48a7c6c-0c9a-42a7-99de-b4b51d674c6c', 'If the original price is $930$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', NULL, '[{"id":"A","text":"$1068$","is_correct":true,"explanation":"Correct (A). **Step 1:** $930×1.35=1256$. **Step 2:** $1256×0.85=1068$."},{"id":"B","text":"$930$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1256$","is_correct":false,"explanation":"Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1116$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $930×(1+35/100)=1256$.
**Step 2:** Discount on new price: $1256×(1-15/100)=1068$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($930$): Ignores both percent changes.
- **C** ($1256$): Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1116$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":74}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2f761a7-0aca-4396-b63b-021f57478d9d', 'If the original price is $945$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', NULL, '[{"id":"A","text":"$1058$","is_correct":true,"explanation":"Correct (A). **Step 1:** $945×1.4=1323$. **Step 2:** $1323×0.8=1058$."},{"id":"B","text":"$945$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1323$","is_correct":false,"explanation":"Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1134$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $945×(1+40/100)=1323$.
**Step 2:** Discount on new price: $1323×(1-20/100)=1058$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($945$): Ignores both percent changes.
- **C** ($1323$): Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1134$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":75}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('957ff73a-31da-461f-ac70-92eca66de6ad', 'If the original price is $960$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', NULL, '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $960×1.25=1200$. **Step 2:** $1200×0.75=900$."},{"id":"B","text":"$960$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1200$","is_correct":false,"explanation":"Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$960$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $960×(1+25/100)=1200$.
**Step 2:** Discount on new price: $1200×(1-25/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($960$): Ignores both percent changes.
- **C** ($1200$): Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($960$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":76}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd403134-5636-41a3-839f-0d9c7dafa9f3', 'If the original price is $975$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', NULL, '[{"id":"A","text":"$1078$","is_correct":true,"explanation":"Correct (A). **Step 1:** $975×1.3=1268$. **Step 2:** $1268×0.85=1078$."},{"id":"B","text":"$975$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1268$","is_correct":false,"explanation":"Choice C ($1268$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1121$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $975×(1+30/100)=1268$.
**Step 2:** Discount on new price: $1268×(1-15/100)=1078$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($975$): Ignores both percent changes.
- **C** ($1268$): Choice C ($1268$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1121$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":77}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1fe7c4d8-e6bd-4631-a67f-b52386321eb9', 'If the original price is $990$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', NULL, '[{"id":"A","text":"$1070$","is_correct":true,"explanation":"Correct (A). **Step 1:** $990×1.35=1337$. **Step 2:** $1337×0.8=1070$."},{"id":"B","text":"$990$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1337$","is_correct":false,"explanation":"Choice C ($1337$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1139$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $990×(1+35/100)=1337$.
**Step 2:** Discount on new price: $1337×(1-20/100)=1070$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($990$): Ignores both percent changes.
- **C** ($1337$): Choice C ($1337$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1139$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":78}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96a64a77-955e-4aed-99e3-4af0b6316669', 'If the original price is $1005$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', NULL, '[{"id":"A","text":"$1055$","is_correct":true,"explanation":"Correct (A). **Step 1:** $1005×1.4=1407$. **Step 2:** $1407×0.75=1055$."},{"id":"B","text":"$1005$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1407$","is_correct":false,"explanation":"Choice C ($1407$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1156$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $1005×(1+40/100)=1407$.
**Step 2:** Discount on new price: $1407×(1-25/100)=1055$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($1005$): Ignores both percent changes.
- **C** ($1407$): Choice C ($1407$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1156$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":79}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db9d1d32-1057-44ac-be11-5eb4f1d0b825', 'What is the missing score $x$?', 'Five test scores: 7, 11, 15, 19, and one score $x$ is unknown. The mean is 11.2.', NULL, '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=11.2×5=56$. **Step 2:** $x=4$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=11.2×5=56$.
**Step 2:** Known sum $=52$.
**Step 3:** $x=56-52=4$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($1$): Pulls the mean down too far.
- **C** ($7$): Too high for the given mean.
- **D** ($11$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":80}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c031c78-c1a1-4017-8310-a6678bc3e8e6', 'What is the missing score $x$?', 'Five test scores: 8, 12, 16, 20, and one score $x$ is unknown. The mean is 12.2.', NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=12.2×5=61$. **Step 2:** $x=5$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=12.2×5=61$.
**Step 2:** Known sum $=56$.
**Step 3:** $x=61-56=5$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($2$): Pulls the mean down too far.
- **C** ($8$): Too high for the given mean.
- **D** ($12$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":81}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
