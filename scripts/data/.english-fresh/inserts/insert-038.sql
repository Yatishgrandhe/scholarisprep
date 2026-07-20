BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('69895531-f057-4d8f-8313-7bdf63b1608c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $852$ |
| Maple Lot | $19$ | $787$ |
| Birch Yard | $9$ | $417$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $417$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $417$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('03c15091-4587-4473-8e88-ebe42cd174fb', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('cf79ca81-e799-4804-905f-4ba37276dda1', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $843$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f74868ea-423d-4802-8a77-5271c11a37a2', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the, yet the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without, describing.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dcb79533-553d-4bfb-8543-8c019e1b4003', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
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
VALUES ('08885443-1634-496f-9b58-3c1f8b278f0e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $846$ |
| Maple Lot | $21$ | $781$ |
| Birch Yard | $9$ | $411$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires., yet the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, yet the comparison omits the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $411$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the cross-row contrast the claim.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $411$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6fec264-8ec4-403a-8420-a22c8e26519c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a true floor value that does not compare treatments as the stem requires., yet the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, yet the comparison omits the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the cross-row contrast the claim.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('200da1cc-819a-4eef-9406-5310c79b7ec6', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('993251b6-1bed-49af-b9fd-fb2d02430311', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('29a9c4ef-e213-4e6a-b019-c0c5dc02c5e0', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f52feaf-ba9c-41c0-8749-de6515f764f5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1aa9e3ff-d849-4afe-b4f0-fb6f8e7ee794', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $852$ |
| Maple Lot | $19$ | $787$ |
| Birch Yard | $9$ | $417$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $417$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $417$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9b6a29b7-46e8-48d9-9b25-f1759ae053e2', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b76b9824-afd1-409d-a4e5-e1000cfb2556', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('46555080-cd14-499e-9fdd-76ebc40b8e5e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90c772ff-90a0-4e73-8716-eba190258acf', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $842$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f638fbf4-c14e-47a9-a462-9036c92d459e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $846$ |
| Maple Lot | $21$ | $781$ |
| Birch Yard | $9$ | $411$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $411$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $411$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6897126-3dc1-4dc8-8c85-5e48fe03878c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49264511-1403-471a-be69-de7d8b6e1f98', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('5240dc9a-3913-44b6-b1f9-fcf9f3126af5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb1971a2-e178-4468-8a2f-4c539e47f907', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('9f3cff0c-cfb5-4fb8-8de6-79fb10975a58', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4e5b7fe1-a429-4e4b-a875-6b4e1089bf16', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $852$ |
| Maple Lot | $19$ | $787$ |
| Birch Yard | $9$ | $417$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $417$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $417$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aab5217e-7a75-4daa-a016-9552834846d6', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43fe8ed4-3445-47ac-937d-34b655bde13e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('836622a3-1d3f-48f1-a9a6-da647bb3d6dc', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7059fc56-652b-41ca-b23c-2079bbd84b79', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $842$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efbf04a9-7b88-4d75-b29e-203b9bb6025d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
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
VALUES ('b1ca1cd8-f38b-4a18-ac59-cc94816ef86d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3c023214-f774-4a0b-bbbd-f75a0ff1f3b0', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $845$ |
| Maple Lot | $21$ | $805$ |
| Birch Yard | $9$ | $415$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $415$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $415$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87931a66-cbdf-4ff5-9072-d9895a128398', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02d42609-ec5a-4797-ac39-add4d2449cbd', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $836$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $836$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c513b74f-aba8-4c81-af1b-085c65cc3b06', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('111d9a44-7e35-4919-a90d-a3e06974ed03', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $835$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99c0244d-74b1-49d9-b139-3c10015916e2', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $19$ | $799$ |
| Birch Yard | $9$ | $409$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $409$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $409$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5bcd0137-93d9-456c-ab2a-ccdff5fcd4be', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d530d92c-8ceb-43e2-99eb-e1d6056cb4c3', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $846$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef7051e9-b761-4201-8e85-8b9c78eb1a7e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $842$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efb6d1c8-9046-4543-b6e7-7d8b67997eac', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('9e9d46eb-ed86-4929-ae09-815ec021c69c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $841$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62486344-ab3e-44ae-8fde-1214aaf95916', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $853$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fb7d2e5-79dd-4f40-96b9-e5230880b267', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c20dfb7d-7f90-4ee9-a897-008f1edfc9cb', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $844$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a9ed30f-8276-497c-8f7e-88838f123f64', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $848$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $848$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2dd631bd-970c-46e1-ab27-bafa2bcc84f5', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $835$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('74dadbcc-d0f0-4430-a827-16b4b4bdba3e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c8a24c4d-2d64-46b5-9a49-0faba6080cab', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $851$ |
| Maple Lot | $19$ | $781$ |
| Birch Yard | $9$ | $401$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $401$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $401$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e07640c7-32f8-49f5-bf37-eb820d29062e', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $846$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c2489daa-3c6c-4572-b4e5-b51505d81ab1', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0c35801-74b4-4511-b537-9d72b0163a8b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
