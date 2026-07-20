BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fed638a1-a05c-4e4f-b0ef-45f4aabcd8ce', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the harvest or.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage claim.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ad44c61-06c3-446b-a4f3-86eb2eb09180', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $831$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b574878-8f84-46a8-a727-2b8bec2e3f2f', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5895d30c-f318-491c-9abd-96bdd4b824c2', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4f346b4-6d7f-49bf-b294-e215ce58006b', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a figure.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('393578a8-0675-4b97-acbc-fb50d39d26e4', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $846$ |
| Maple Lot | $19$ | $781$ |
| Birch Yard | $9$ | $401$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $401$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $401$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f76fb260-7eda-460f-b415-ed91d37a53d6', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the passage.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, reporting a ranking without the harvest or outcome comparison the claim.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b486f95-6f37-432c-997e-2a25e555b781', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $837$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $837$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $837$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93ec591c-83ae-4b67-8114-3b1db88c3053', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the, yet the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without, describing.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('44630201-fa45-4faf-a005-5eb6284fe9c2', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e197a7d8-bdc2-43c9-adaf-4c72d967cb86', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $840$ |
| Maple Lot | $21$ | $805$ |
| Birch Yard | $9$ | $415$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires., yet the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, yet the comparison omits the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $415$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the cross-row contrast the claim.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $415$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('862ce060-4e90-403f-b246-32f47d1dbf08', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 296 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim, accurate, reporting, a true, yet the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, describing one row only rather than the cross-row contrast the claim, yet the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage, which restates, a true, yet the, describing.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d2580018-0563-4b15-a950-c11b0ca9cebd', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, accurate, reporting.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the, reporting, a.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to contrast the groups named in the passage''s central.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d2da156-b353-48ce-95a3-41de6a17dfdc', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $843$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e917483d-3682-481b-99c7-fcae1cb0fe22', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e1240c6-c12f-497a-8ab6-5c515085dfdd', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet, reporting a.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8baa0c2-08b2-4f88-a7b7-faf2bcf72161', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet, reporting a.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa396bf0-0a5f-47d7-ad28-734b251cc85f', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e816f83d-65ca-4f86-a579-a3b0b321a4b8', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table values.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ebb54741-a82e-42b5-9dbc-01bdb7295d99', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ceeb58ca-b6a0-4ed9-b055-c224313e80d2', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bdd0f6c-26f8-4c49-a2eb-edab574a8584', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without connecting them to.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate yet.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it ignores the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9badd77c-302f-438f-b1b5-842aadf7fc56', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row only rather.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to contrast the groups named in the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a ranking.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c5eb1de7-5573-4494-b74f-8eb94ec8f332', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 248 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the, yet the, a figure, describing.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, describing, which, but the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('54d486af-3d56-4a4b-ad94-3be4d2739452', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8c85172-28a5-4b07-905b-26555a6c76f7', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b944d9b9-0a56-460d-b311-942cc3c9b8a0', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the, a figure, describing, but.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires., a true floor value, which.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does not compare treatments.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97063db3-bb10-4d84-8e6c-f1d489654126', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff2ede22-91fa-4657-9c04-b22e20a011bb', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $19$ | $793$ |
| Birch Yard | $9$ | $413$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $413$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $413$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce1bef52-969c-418e-b1ed-0b68b3d3579c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $845$ |
| Maple Lot | $19$ | $805$ |
| Birch Yard | $9$ | $405$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $405$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $405$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcfb6668-759f-4127-a01b-5aec085c7ab9', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('69fd9663-c7cd-4b22-bbef-f546c06f5c51', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the, yet the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without, describing.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('86d04800-baf9-49d5-bac3-48c546333596', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f8253aeb-fd48-44bc-8de5-58dffad5cd68', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does not compare.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers'' stated.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b38e506b-6f5f-4ae7-b67e-a4084c81bd6b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d60e802-917d-404e-9f25-a83b456383e1', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 260 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the, but the, accurate.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, reporting, a true.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('91e8cbd8-2098-42b9-b144-2404ae6371cd', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, accurate, reporting.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the, reporting, a.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to contrast the groups named in the passage''s central.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3259f74d-09ed-4a6d-a166-f52d727b6263', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $842$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f9016a6-e6f5-4084-b580-d0f2377bf5f4', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('559fd8b3-70a1-4dfd-8eb9-86fbd4cb54dd', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, but the statement fails to contrast the groups named in the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9935cef9-4bb7-4b05-8395-c48b49fbb308', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, reporting a ranking.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('29e84fd6-9792-4668-9512-3772a9e95ad9', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4bf6931-d9a1-4e9f-879a-5ba79edd5226', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table values.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d873e0c-757f-4810-a52c-a2ebe6fcb3b6', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4d714e7e-e129-40ae-855f-6661b4dc770a', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $835$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('435ad19a-c7a6-4acf-8836-6279547d4441', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than the cross-row, reporting, a true.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the passage., but the, a true.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82d44cf6-0ca8-4b58-a75e-8d5313609d83', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $851$ |
| Maple Lot | $21$ | $781$ |
| Birch Yard | $9$ | $411$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $411$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $411$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0891552-ed75-43d8-a9e2-a21133cd33c3', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 272 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, a true floor.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a389faf-3d14-4f08-a8a5-56c4513f9d01', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c78335e-46d1-4d3d-b293-e7bac0d8ffc3', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
