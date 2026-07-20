BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb84dc33-cef5-4ea7-9081-62f3e72e52e6', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $841$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d14cd65f-5b72-4a1f-89e9-212710e6fcf9', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than the cross-row, reporting, a true.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, which restates table values without connecting them to the hypothesis in the passage., but the, a true.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the groups named.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
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
VALUES ('f1a70187-6540-400e-9acd-49ceb5460e47', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $832$ |
| Maple Lot | $21$ | $787$ |
| Birch Yard | $9$ | $407$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $407$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $787$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, reporting a ranking without the harvest or outcome comparison the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $832$ to $407$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e78ef37-32c6-4b59-805a-d71e822256c9', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 248 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d1eaa33c-9f6b-4274-b9eb-397629189d89', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('c261ce53-b817-4ff8-9332-6b383059300c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $835$ |
| Maple Lot | $20$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $410$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $835$ to $410$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b070d68-cfa2-49da-8727-5194fdf2680c', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value that does.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73fb8b51-1b57-4c15-b891-f92c2860af4a', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a figure accurate in isolation but not linked to the researchers''.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
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
VALUES ('4aedad41-34db-44f9-9614-a9107714eeb9', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $838$ |
| Maple Lot | $19$ | $793$ |
| Birch Yard | $9$ | $413$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $413$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $838$ to $413$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d9d2e2f-7370-49a1-8ef3-d27e05d42674', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $850$ |
| Maple Lot | $19$ | $805$ |
| Birch Yard | $9$ | $405$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $805$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $405$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $850$ to $405$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38b33e30-3613-463d-9527-b1ee4e46c299', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('8a935d7e-93f5-46d0-a1b8-be9d9ed27b7d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $841$ |
| Maple Lot | $18$ | $796$ |
| Birch Yard | $9$ | $416$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $416$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $841$ to $416$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d15787a5-3a8c-40b0-825b-f42aa9eb255d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $853$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0887a944-790d-467a-8024-e7a2523a289d', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $840$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('78f58f93-4f0e-455b-b460-0408bc97be55', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $844$ |
| Maple Lot | $21$ | $799$ |
| Birch Yard | $9$ | $419$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $419$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $844$ to $419$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f566a3ec-a42b-42a7-b23d-543e979b511e', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 260 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim, accurate, reporting, a true, yet the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, describing one row only rather than the cross-row contrast the claim, yet the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage, which restates, a true, yet the, describing.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
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
VALUES ('47644fec-a407-4f11-bbed-99845f3eb27f', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 272 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('2267e447-8371-45a1-b3d5-a4cac196f93f', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $847$ |
| Maple Lot | $20$ | $802$ |
| Birch Yard | $9$ | $402$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $847$ to $402$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('502150cc-7342-4dc6-8f37-831d5c5c3164', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, describing one row.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, but the statement fails to contrast the groups named in.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers emphasize., reporting a.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11ed045b-6f72-4bc8-910e-d87dd6b40e9b', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('41bcfca9-60c8-44c5-881f-7c569bfb158f', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('0a12080b-5f3e-4e6d-b208-2ff04ca49d0a', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('c8227ca6-2280-4caf-a2e8-f34fa01b9250', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('c70b4fb0-c05b-4d09-bafc-ac652edf9368', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $853$ |
| Maple Lot | $18$ | $808$ |
| Birch Yard | $9$ | $408$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $853$ to $408$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff228197-0aff-4f94-b04b-063f0525f54a', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $840$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the, yet the comparison omits.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, a figure accurate in isolation but not linked to the, describing.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b596872c-a18f-495c-8412-9f9c85090817', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.6$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, which restates table values without.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.6$ and mean stem height (cm) was $18.6$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('3b599c44-3cdc-4d32-a588-9cf582b6a0ff', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('711bf020-3546-4643-bdfa-4ad4ce4ba0d3', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 272 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('4d3621fc-073e-4408-955a-d3e864004181', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, reporting a ranking without the harvest or outcome, describing, which, but the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a true floor value that does not compare treatments as the stem requires., yet the comparison omits.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, yet the comparison omits the pairing required to test.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
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
VALUES ('2675ac36-b527-4684-a763-1efed0fb1926', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $834$ |
| Maple Lot | $20$ | $784$ |
| Birch Yard | $9$ | $414$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test the passage claim directly., a figure.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a figure accurate in isolation but not.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $834$ to $414$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b68c6dac-b958-4f31-99a6-c9d347f9e03a', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('04de4ffd-10d6-443f-9107-8083a0a6e22b', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('ef960a8d-36cd-4be7-af2b-c99de7dd0a20', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('eac325d4-1fab-420a-951b-1e9dfb1acca9', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $19$ | $799$ |
| Birch Yard | $9$ | $409$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $409$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $409$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be62941c-53ae-4e2d-a4f7-4426d53ec212', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
VALUES ('e3536688-a3f6-49f1-9280-b4fe2cdd0dbe', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $840$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $400$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $400$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $790$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $840$ to $400$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('498d0b03-88ae-46c2-85f1-443811839f77', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 281 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('852e73bf-6532-4c6d-96cb-08c970b94416', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, reporting a ranking without the harvest or outcome comparison.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e48a164-c152-4cc8-a82f-3f2afd2de32a', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $843$ |
| Maple Lot | $21$ | $793$ |
| Birch Yard | $9$ | $403$ |', 'passage', '[{"id":"A","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, a true floor value.","is_correct":false,"explanation":"[Data Misread] Data misread — states the wrong directional trend for the secondary metric."},{"id":"B","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $403$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (B). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"C","text":"In Maple Lot, weekly volunteer hours was $21$ and harvest (lbs) was $793$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"D","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires., which restates table.","is_correct":false,"explanation":"[True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison."}]'::jsonb, 'B', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice B is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $843$ to $403$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Data misread — states the wrong directional trend for the secondary metric.
- C: [Under-Specified Support] Partial support — single-row snapshot omits the multi-period comparison.
- D: [True-But-Irrelevant] Irrelevant trend — accurate table fact without diagnostic comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('03160472-72c2-4e50-acef-a1258af8fbfc', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 284 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

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
VALUES ('2beafaaa-6f1c-4aa7-aafa-00cb92f6a3cf', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.3$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a figure accurate in isolation but not linked to the researchers'' stated conclusion, accurate, reporting.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, describing one row only rather than the, reporting, a.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.3$ and mean stem height (cm) was $18.3$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, but the statement fails to contrast the groups named in the passage''s central.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('16115aef-c579-4e38-b7f6-8c89b0585e80', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $846$ |
| Maple Lot | $20$ | $796$ |
| Birch Yard | $9$ | $406$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the claim requires.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which restates table values.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $406$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $796$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, accurate yet non-diagnostic because it ignores the variable the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $846$ to $406$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3640ca30-b5a7-4252-9b66-f0ccf9b56030', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $833$ |
| Maple Lot | $20$ | $808$ |
| Birch Yard | $9$ | $418$ |', 'passage', '[{"id":"A","text":"In Maple Lot, weekly volunteer hours was $20$ and harvest (lbs) was $808$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, describing one row only rather than the.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"B","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, which restates table values without connecting them to the hypothesis in the passage, but the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"C","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, but the statement fails to contrast the.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."},{"id":"D","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $418$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (D). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."}]'::jsonb, 'D', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice D is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $833$ to $418$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- B: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- C: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e1e8e81-20c3-41ab-bbbd-18f075cf08d6', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.0$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, but the statement fails to contrast the groups named in the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, accurate.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.0$ and mean stem height (cm) was $18.0$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, a true floor value that does not compare.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('ca7a3b89-652e-4f2c-bf1d-5c2cd0af57c0', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $849$ |
| Maple Lot | $19$ | $799$ |
| Birch Yard | $9$ | $409$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, accurate yet non-diagnostic because it ignores the variable the researchers.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, reporting a ranking without the.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $409$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $19$ and harvest (lbs) was $799$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, yet the comparison omits the pairing required to test the passage.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $849$ to $409$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6d05268-d919-4ee9-a919-248fb67a13d2', 'Which choice best uses data from the table to support Dr. Wei''s hypothesis?', 'Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site 290 were analyzed each season using identical extraction protocols. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Sediment depth | Spring ($\mu\text{g/L}$) | Summer ($\mu\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\text{--}5\text{ cm}$) | $12.6$ | $4.0$ |
| Deep ($30\text{--}35\text{ cm}$) | $24.0$ | $24.0$ |', 'passage', '[{"id":"A","text":"Every row records summer ($\\mu\\text{g/l}$) values in the table, a directional summary that does not compare Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the stem requires, reporting a ranking without the harvest or outcome comparison the claim requires., a true floor.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows spring ($\\mu\\text{g/l}$) falling from Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$) despite spring ($\\mu\\text{g/l}$) moving from $12.6$ to $24.0$, misreading the direction of change the researchers describe in the passage, a true floor value that does not compare.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Surface ($0\\text{--}5\\text{ cm}$) to Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) rose from $12.6$ to $24.0$ while summer ($\\mu\\text{g/l}$) shifted from $4.0$ to $24.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Deep ($30\\text{--}35\\text{ cm}$), spring ($\\mu\\text{g/l}$) was $24.0$ and summer ($\\mu\\text{g/l}$) was $24.0$, citing one mid-study row without contrasting Surface ($0\\text{--}5\\text{ cm}$) and Deep ($30\\text{--}35\\text{ cm}$) as the researchers'' claim requires, a figure accurate in isolation but not linked to the.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('0b8dd877-9f33-4f01-8fa4-f231c9da646e', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.0$ |
| $10$ | $18.9$ |
| $14$ | $19.0$ |', 'passage', '[{"id":"A","text":"Every row records mean stem height (cm) values in the table, a directional summary that does not compare $6$ and $14$ as the stem requires, a true floor value that does not compare treatments as the stem requires., yet the.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows mean stem height (cm) falling from $6$ to $14$ despite mean stem height (cm) moving from $11.0$ to $19.0$, misreading the direction of change the researchers describe in the passage, yet the comparison omits the pairing.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From $6$ to $14$, mean stem height (cm) rose from $11.0$ to $19.0$ while mean stem height (cm) shifted from $11.0$ to $19.0$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In $10$, mean stem height (cm) was $18.9$ and mean stem height (cm) was $18.9$, citing one mid-study row without contrasting $6$ and $14$ as the researchers'' claim requires, describing one row only rather than the cross-row contrast the claim requires.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
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
VALUES ('0ded72e4-598b-44b5-8494-dbb7637c5c61', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $852$ |
| Maple Lot | $18$ | $802$ |
| Birch Yard | $9$ | $412$ |', 'passage', '[{"id":"A","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, yet the comparison omits the pairing required to test.","is_correct":false,"explanation":"[Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"B","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage.","is_correct":false,"explanation":"[Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric."},{"id":"C","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $412$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (C). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"D","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $802$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, which restates table values without.","is_correct":false,"explanation":"[True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $852$ to $412$, aligning with the passage''s reporte….

Distractor analysis:
- A: [Data Misread] Irrelevant trend — accurate table fact without diagnostic comparison.
- B: [Under-Specified Support] Data misread — states the wrong directional trend for the secondary metric.
- D: [True-But-Irrelevant] Partial support — single-row snapshot omits the multi-period comparison.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48af5846-0560-40db-956b-e24b349175bb', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $23$ | $839$ |
| Maple Lot | $18$ | $784$ |
| Birch Yard | $9$ | $404$ |', 'passage', '[{"id":"A","text":"From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reported improvement across the full study period described above.","is_correct":true,"explanation":"Correct (A). Correct: cites two metrics across early and late rows, linking table trends to the passage claim."},{"id":"B","text":"In Maple Lot, weekly volunteer hours was $18$ and harvest (lbs) was $784$, citing one mid-study row without contrasting Cedar Plot and Birch Yard as the researchers'' claim requires, a figure accurate.","is_correct":false,"explanation":"[Data Misread] Partial support — single-row snapshot omits the multi-period comparison."},{"id":"C","text":"Every row records harvest (lbs) values in the table, a directional summary that does not compare Cedar Plot and Birch Yard as the stem requires, describing one row only rather than the cross-row contrast the.","is_correct":false,"explanation":"[Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison."},{"id":"D","text":"The table shows weekly volunteer hours falling from Cedar Plot to Birch Yard despite weekly volunteer hours moving from $23$ to $9$, misreading the direction of change the researchers describe in the passage, which.","is_correct":false,"explanation":"[True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric."}]'::jsonb, 'A', 'Step 1 — Read the table
Focus on {{yellow:methods}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice A is correct: From Cedar Plot to Birch Yard, weekly volunteer hours rose from $23$ to $9$ while harvest (lbs) shifted from $839$ to $404$, aligning with the passage''s reporte….

Distractor analysis:
- B: [Data Misread] Partial support — single-row snapshot omits the multi-period comparison.
- C: [Under-Specified Support] Irrelevant trend — accurate table fact without diagnostic comparison.
- D: [True-But-Irrelevant] Data misread — states the wrong directional trend for the secondary metric.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","dsat_blueprint_v1":true,"rw_format":"table_chart","generator":"regenerate-english-fresh.mjs","master_manual_section":"6","coe_quant_regen_v2":true,"regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9429845d-2968-4678-a10d-9fe0c481af19', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments. The authors caution that replication remains necessary before treating the finding as settled.

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
COMMIT;
