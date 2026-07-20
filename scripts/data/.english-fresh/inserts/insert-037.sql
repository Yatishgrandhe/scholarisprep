BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e88dae13-c519-4c2b-a750-a384567f3a5d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $19$ | $805$ |
| Birch Yard | $9$ | $405$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $405$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $405$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('788d0b7d-0c13-40d0-aab2-9fa7b7909b27', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('3f7bb607-ab60-4ce8-8999-f4cec762667e', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without connecting them to.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate yet.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it ignores the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
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
VALUES ('520e6405-4822-4300-b10e-99058f4af449', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d2da826c-b62f-4f68-86df-b8c5be4112f0', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $845$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the, yet the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without, describing.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea353a73-4191-484b-be3a-b24310bbe005', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11d1b424-101d-4922-80f7-6a3edbe33590', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $21$ | $781$ |
| Birch Yard | $9$ | $411$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $411$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $411$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7bcae1c5-a58b-42b6-9172-f0f85cf68e29', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d9340cf3-7cdc-4ad0-95ba-21a7ca9e5a81', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $835$ |
| Maple Lot | $21$ | $805$ |
| Birch Yard | $9$ | $415$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $415$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $415$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd85a38d-5589-4a7f-a253-970c01ed9743', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('676d86d7-3d10-4b7c-9d73-24771b2da011', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $851$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7eb757f7-e2e3-45dd-94e4-6123ff925eb9', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8dbe672-0e97-4f3a-b9f2-ecc7dc315044', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $842$ |
| Maple Lot | $19$ | $787$ |
| Birch Yard | $9$ | $417$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $417$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $417$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07020c1e-9614-4e31-a137-f6f1df683de5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $19$ | $799$ |
| Birch Yard | $9$ | $409$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $409$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $409$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('461a3f5d-4d97-43fe-8d58-28ec70ee2cce', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('567b14b9-b296-41dd-a37d-5ca37fddcdd8', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $845$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f2db79e-b431-4fcc-9360-488561e73ae1', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6248e467-bb07-41f4-a8c4-651428b16c31', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $844$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('210bc3ca-def7-41ea-8086-612e6af21a23', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb0e6fb4-d064-4909-9038-58f309db6ad0', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $843$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf5cccd0-ae26-4f64-b679-6ab345fe273b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c54c88dd-e27a-40b1-bdff-cc42c4044171', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4fffe888-6a54-44b2-956e-31bf800b8ff7', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4beab77b-e4d0-42d0-bde6-b532a04099c5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $850$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a17dac50-0e0b-4eb2-b98d-747939d233ef', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $19$ | $799$ |
| Birch Yard | $9$ | $409$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $409$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $409$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('920c61d8-51ba-4289-8a6b-f664b00cb741', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb88ca55-c70f-441b-9bdc-896e6b2bc896', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $853$ |
| Maple Lot | $19$ | $793$ |
| Birch Yard | $9$ | $413$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $413$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $413$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('336eb233-1ccf-4ab1-9277-e47d489b3006', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the, yet the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without, describing.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14f25600-0747-48c1-93fd-0a3feceb1e6f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $844$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the, yet the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without, describing.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6cdcb9d-fb18-49a0-b29d-8fa2ed38a388', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $831$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('352759f2-e7e4-48fb-8cb3-1192c9503df5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $835$ |
| Maple Lot | $21$ | $805$ |
| Birch Yard | $9$ | $415$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $415$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $415$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a6c4582-a30f-48b5-a2e2-d3291ed0447a', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('53d693c3-d455-4c5d-9625-bbf98af24e64', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00092ce2-ad48-400d-856e-d7937569449f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51eb2ea9-be41-49c1-aa40-f5b46704cd26', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $850$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8bae14aa-0e01-4ce9-853e-dd334d4ea66f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $837$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $837$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $837$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('69f2d4a1-cc36-4fde-b5f3-373ed8179e5f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e20bb083-97a2-4c21-a6fb-3c30573a3d5f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9c912a28-0e68-4024-9a02-7affa87268bf', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $840$ |
| Maple Lot | $19$ | $805$ |
| Birch Yard | $9$ | $405$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $405$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $405$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b665056-2af6-4d2f-a137-42f5cf22061b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $844$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4325907-a2ce-42cb-a7cb-2ae1ac8564f2', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $831$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a34c902-d40f-4922-ba04-b9a8096dfd2b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $843$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50d0a057-db68-4b31-b5ac-0bed286ad3b5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ee1b23dc-e445-45d7-850b-138a33c649f1', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('068760a2-1a11-492b-9aa5-a6f71e6dd901', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('41257942-3f9b-4c9b-9b48-4827d2b1d3b7', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $850$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8319f97d-1f6b-4997-a866-b16009c9bd72', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $853$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48d2784f-ae65-4614-a23d-68dc8af9fb2d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9287fb93-308f-4b7a-a8cb-691f94693300', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b7853eaa-b16f-4d6a-908f-8785dd5c5d6b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $840$ |
| Maple Lot | $19$ | $805$ |
| Birch Yard | $9$ | $405$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $405$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $405$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
