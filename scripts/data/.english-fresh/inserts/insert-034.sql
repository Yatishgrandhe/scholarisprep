BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c0d0183a-5219-4e19-977f-7a465c78e079', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $830$ |
| Maple Lot | $21$ | $805$ |
| Birch Yard | $9$ | $415$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $415$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $830$ to $415$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('803da1c5-6396-4cf5-a75d-52229f98a042', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 296 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim, a figure.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9be90253-2f39-4d4b-91ee-436ff785a324', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2692e448-2c2e-4b64-8771-81892a04d4dc', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a312cf60-1070-4491-ba6e-297bb7c1d626', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the, a figure, describing, but.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires., a true floor value, which.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does not compare treatments.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f995867-1748-4613-869e-e967e83179b3', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a figure.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('c6b23c8b-f669-4e4a-891d-2e62cde804e3', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a figure.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('35d35fce-7e1f-490e-be2a-7d22ad1a2921', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6ece548-e815-4e3a-bc8e-402d1af9f573', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without connecting them to.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate yet.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it ignores the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9015aa57-0d43-4d7a-80a0-097d8bb55025', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70247411-d19d-4853-8efd-60fd56e785b3', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 245 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.2$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.4$ | $24.3$ |', 'passage', '[{"id":"A","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.4$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the harvest or.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.4$ while summer ($\\mu\\text{g/l}$) shifted from $4.2$ to $24.3$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.4$ and summer ($\\mu\\text{g/l}$) was $24.3$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, yet the comparison omits the pairing required to test the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.4$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f5fe78e-336e-471f-b895-3734124939b3', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does not compare.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers'' stated.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('e19a374d-c7bf-442e-b18e-8c5db239f308', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $842$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $842$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7966f15f-e169-4596-a3ff-e35bbeaccd81', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 248 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim, but the, accurate, reporting, a true.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, a figure accurate in isolation but not linked to the researchers'', a true.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage, describing one row, reporting, a true, a figure.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00d8f202-d729-44b9-81ff-3e2c8d7899a6', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, which restates table values without connecting them.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14213297-8019-446b-ae56-0bc886fa6d0f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $845$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $845$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1295c8ff-4363-433e-91b2-7fae95816f35', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8324b054-9f56-41a3-86d7-1af42ba08031', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet, reporting a.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dae903c2-cffe-44b3-b6a8-c71f934e55d8', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d2371f3-33a3-4997-bd45-be16cbeb0836', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet, reporting a.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6011bc0e-3774-4f84-a1e6-89a9fbe927ae', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, yet the comparison omits the pairing required to test.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion., describing one.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the cross-row.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bedab535-e9c4-4906-bfc4-f53e2e859a57', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $851$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $851$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fdff7c43-93dc-4c84-b055-75fd397cca89', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccbb106c-62cf-4989-888d-618f73028b76', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without connecting them to.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate yet.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it ignores the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('475f77b5-e0da-49ed-874b-5a6251f5058b', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $854$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $854$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49bdd9f0-e2a7-4e94-9907-528d93df5819', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 260 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, a true floor.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4976a35b-76d8-47f3-97d6-fe5abdee8ab5', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('265c7991-04ad-4045-ae99-dceaf1fb418f', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3efb607f-bf8a-4ad9-a034-39251f7caeec', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic, a figure, describing, a.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare treatments as the stem, which.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure accurate in.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c61fbbdf-c75a-47f6-b054-ff9bb59faec8', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, describing one row only rather than the cross-row contrast the claim.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, which restates table.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3b4de3b6-cd4f-45d0-82bf-402bbde654fe', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, yet the comparison omits the pairing required to test the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a figure.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('b110cbff-d04c-47c0-a57f-0518f0e8ef80', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $19$ | $787$ |
| Birch Yard | $9$ | $417$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $417$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $417$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f95de78-a501-488e-9bb5-6ecc94faed0d', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f976938-d1f7-425d-b046-b49cfe947950', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef3189c1-6b48-45e3-9439-11fa4d2bff76', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $850$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9c4a246-ae63-4c0f-895d-20f7d141fd77', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the, describing, which.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion., describing one row only.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7681c80a-9fda-4a4a-9853-e7d0a8e7e670', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $841$ |
| Maple Lot | $21$ | $781$ |
| Birch Yard | $9$ | $411$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $411$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $781$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $411$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04617410-a9dc-4ab6-a8db-6633fc5a099f', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 272 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the, but the, accurate.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, reporting, a true.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, which restates table values without connecting them to the hypothesis in the.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('921c2348-7697-4b11-85cb-b72d0da60e57', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than the cross-row, reporting, a true.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the passage., but the, a true.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76073ddc-a469-440b-aa5e-e39cba65d26d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $844$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('514ca747-dc3e-498a-969f-4d26f3f8bae3', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $831$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $831$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8bb63449-42d7-4ca3-a74f-58684135f9b0', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet, reporting a.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aad29d7c-77c0-4721-aa8a-7c45d2bed7de', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $19$ | $787$ |
| Birch Yard | $9$ | $417$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $417$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $417$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c991b56-bfa3-4f8e-8bcb-c583542cccf0', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, reporting a ranking.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bc515b6-c13e-4721-a7ca-e4d2195f4f0e', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table values.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06fe89e3-f14a-4ef0-835d-4f0b073668bb', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $850$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb51f09b-c53f-4255-92e8-edc02a41a96c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $837$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $837$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $837$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d1a1cbf-ed20-40f1-bab6-8a15138a39cc', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row only rather.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to contrast the groups named in the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a ranking.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:receiving}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s report….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a807748-4fce-4a5d-ba82-c625d06f7003', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $853$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without connecting.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, but the statement fails to contrast the groups named in the passage''s central claim., accurate.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, accurate yet non-diagnostic because it.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00134b00-5eee-4b3c-bd0c-219f3dc2b95c', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 284 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the, yet the, a figure, describing.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, describing, which, but the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, a true floor value that does not compare treatments as the stem requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:sediments}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Surface ($0\text{--}5\text{ cm}$) to Deep ($30\text{--}35\text{ cm}$), spring ($\mu\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\mu\text{g/l}$) s….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
