BEGIN;
DELETE FROM public.questions WHERE id IN ('ac32fcb3-219c-4f79-8eb0-673d10fa3d84','2c10c2ec-c91d-4f64-afb8-78dae6294f08','5aa02c23-a1d6-4a15-a442-1a9cc08e38b4','8a14c349-4dac-422b-a1b6-bb49a344fa82','7825dbff-9de1-4965-b644-c91a8c7e09fe','c9957304-8c8a-484d-a487-7928993ff12b','0274ae0d-af9d-4837-be06-da0c684bdbb1','e54e1456-647e-4e1f-a5fc-b86be59b6794','ddc9e789-2aad-4679-9e82-215fb4b2c288');
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('41e0177c-ce2a-4c55-a310-5fde4336ccda', 'Which choice most effectively uses data from the table to support the researchers'' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?', 'Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout.

The table summarizes results from the study described above.

| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $22$ | $840$ |
| Maple Lot | $18$ | $790$ |
| Birch Yard | $9$ | $410$ |', 'passage', '[{"id":"A","text":"Cedar Plot logged $22$ volunteer hours and harvested $840$ pounds, whereas Birch Yard logged $9$ hours and harvested only $410$ pounds.","is_correct":true,"explanation":"Correct: compares a garden above the $15$-hour threshold with one below it, showing the higher-hour site produced a larger harvest."},{"id":"B","text":"Maple Lot harvested $790$ pounds even though Cedar Plot logged more volunteer hours.","is_correct":false,"explanation":"Both gardens exceed $15$ hours; the comparison does not test the threshold claim against a low-hour garden."},{"id":"C","text":"Every garden in the study harvested more than $400$ pounds of vegetables.","is_correct":false,"explanation":"Accurate but irrelevant: total harvest floors do not link volunteer hours to productivity."},{"id":"D","text":"Birch Yard recorded the fewest volunteer hours of any garden in the study.","is_correct":false,"explanation":"States a ranking without connecting hours to harvest size relative to the $15$-hour cutoff."}]'::jsonb, 'A', 'Step 1 — Read the table
Locate volunteer hours and harvest for each garden, noting which sites meet the $15$-hour threshold.

Step 2 — Connect data to the claim
The claim requires showing that gardens at or above $15$ hours outproduced gardens below that level.

Step 3 — Select supported conclusion
Choice A pairs Cedar Plot ($22$ hours, $840$ lbs) with Birch Yard ($9$ hours, $410$ lbs), directly supporting the hypothesis.

Distractor analysis:
- B: Partial support — compares two above-threshold gardens only.
- C: Irrelevant trend — true harvest minimums do not test the labor hypothesis.
- D: Data misread — identifies the lowest-hour garden but omits harvest comparison.', 'Compare a garden above $15$ hours with one below it.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"social_studies"}'::jsonb, 'coe-quant-easy-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('62c749d2-c178-4282-be6a-70db29f3a3f6', 'Which choice most effectively uses data from the table to support Dr. Lee''s claim that bean seedlings receiving at least $10$ hours of light per day grew taller than those receiving less?', 'Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial. Lee argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days.

The table summarizes results from the study described above.

| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $11.2$ |
| $10$ | $18.4$ |
| $14$ | $19.1$ |', 'passage', '[{"id":"A","text":"Seedlings under $14$-hour days averaged $19.1$ cm, only $0.7$ cm taller than seedlings under $10$-hour days.","is_correct":false,"explanation":"Compares two groups that both meet the $10$-hour minimum; it does not contrast long and short days."},{"id":"B","text":"Seedlings under $6$-hour days averaged $11.2$ cm, while seedlings under $10$-hour days averaged $18.4$ cm.","is_correct":true,"explanation":"Correct: contrasts below-threshold ($6$ hours) with at-threshold ($10$ hours) light, showing greater height with longer exposure."},{"id":"C","text":"Mean stem height increased from the $6$-hour condition to the $14$-hour condition.","is_correct":false,"explanation":"Describes an overall upward trend but does not isolate the $10$-hour cutoff named in the claim."},{"id":"D","text":"The greatest mean stem height recorded in the trial was $19.1$ cm.","is_correct":false,"explanation":"Reports the maximum value without comparing sub-$10$-hour and $10$-plus-hour groups."}]'::jsonb, 'B', 'Step 1 — Read the table
Read mean heights for the $6$, $10$, and $14$ hour light treatments.

Step 2 — Connect data to the claim
Lee''s claim compares seedlings below $10$ hours with those receiving at least $10$ hours.

Step 3 — Select supported conclusion
Choice B contrasts $6$ hours ($11.2$ cm) with $10$ hours ($18.4$ cm), supporting the claim.

Distractor analysis:
- A: Partial support — both groups satisfy the $10$-hour minimum.
- C: Irrelevant trend — endpoint comparison ignores the stated cutoff.
- D: Data misread — cites a maximum without the required group contrast.', 'Contrast the $6$-hour group with the $10$-hour group.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"science"}'::jsonb, 'coe-quant-easy-002', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('e99cb520-25b7-4684-8b45-a18f3d62dad9', 'Which choice most effectively uses data from the table to support Torres''s claim that the city adopting a $$15$ minimum wage had lower unemployment one year later than the city with an $$11$ minimum wage?', 'Economist Torres compared two mid-sized cities that raised minimum wages in the same calendar year but chose different dollar amounts. She tracked each city''s unemployment rate twelve months after the policy took effect, controlling for major industry mix. Torres concluded that the $$15$ city experienced lower unemployment than the $$11$ city after one year.

The table summarizes results from the study described above.

| City | Minimum wage | Unemployment rate (%) |
| --- | --- | --- |
| Westport | $$15$ | $4.2$ |
| Oakridge | $$11$ | $6.8$ |', 'passage', '[{"id":"A","text":"Westport''s unemployment rate was $4.2%$ after adopting a $$15$ minimum wage, compared with $6.8%$ in Oakridge after its $$11$ wage.","is_correct":true,"explanation":"Correct: directly pairs each city''s wage level with its unemployment rate, showing the higher-wage city had lower unemployment."},{"id":"B","text":"Oakridge''s unemployment rate was $6.8%$ one year after the wage change.","is_correct":false,"explanation":"Reports one city''s rate without comparing it to Westport."},{"id":"C","text":"Both cities set minimum wages above $$10$ per hour.","is_correct":false,"explanation":"True wage fact that does not address relative unemployment outcomes."},{"id":"D","text":"Westport adopted a higher minimum wage than Oakridge did.","is_correct":false,"explanation":"Restates policy difference without linking wages to unemployment rates."}]'::jsonb, 'A', 'Step 1 — Read the table
Match each city''s minimum wage with its unemployment rate after one year.

Step 2 — Connect data to the claim
Torres claims the $$15$ city had lower unemployment than the $$11$ city.

Step 3 — Select supported conclusion
Choice A cites Westport at $4.2%$ versus Oakridge at $6.8%$, directly supporting the claim.

Distractor analysis:
- B: Partial support — omits the comparative city.
- C: Irrelevant trend — wage floor comparison ignores unemployment.
- D: Data misread — notes policy gap without outcome data.', 'Pair each city''s wage with its unemployment percentage.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"social_studies"}'::jsonb, 'coe-quant-easy-003', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('22a2cf7e-0b15-4ec8-a6c3-8c7c3983078d', 'Which choice most effectively uses data from the table to support the researchers'' conclusion that nitrate levels fell as native fish populations recovered during the stream restoration?', 'Environmental scientists monitored four sampling stations along a restored urban stream from 2019 through 2022, measuring mean nitrate concentration and counts of native fish species present. Restoration crews reduced agricultural runoff while replanting riparian buffers that filter nutrients before they enter the channel. The team argued that as nitrate pollution declined over the study period, native fish populations would recover in tandem, reflecting improving water quality rather than a single-year anomaly. Field technicians sampled the same stations each spring so year-to-year comparisons would not reflect changes in monitoring location.

The table summarizes results from the study described above.

| Year | Mean nitrate (mg/L) | Native fish count |
| --- | --- | --- |
| 2019 | $4.8$ | $120$ |
| 2020 | $3.9$ | $185$ |
| 2021 | $2.7$ | $240$ |
| 2022 | $1.5$ | $310$ |', 'passage', '[{"id":"A","text":"In 2019, mean nitrate was $4.8$ mg/L while the native fish count was $120$.","is_correct":false,"explanation":"Describes only the first year and does not show co-occurring decline and recovery."},{"id":"B","text":"From 2019 to 2022, mean nitrate fell from $4.8$ to $1.5$ mg/L while native fish counts rose from $120$ to $310$.","is_correct":true,"explanation":"Correct: tracks both variables across the full restoration window, showing nitrate decline alongside fish recovery."},{"id":"C","text":"Native fish counts exceeded $200$ in both 2021 and 2022.","is_correct":false,"explanation":"Fish counts alone do not demonstrate that nitrate levels simultaneously declined."},{"id":"D","text":"The lowest nitrate reading ($1.5$ mg/L) occurred in 2022.","is_correct":false,"explanation":"Identifies the nitrate minimum without linking it to rising fish populations over time."}]'::jsonb, 'B', 'Step 1 — Read the table
Scan all four years for paired nitrate concentrations and fish counts.

Step 2 — Connect data to the claim
The conclusion requires a multi-year pattern: falling nitrate alongside rising fish numbers.

Step 3 — Select supported conclusion
Choice B documents nitrate dropping from $4.8$ to $1.5$ mg/L while fish counts climb from $120$ to $310$.

Distractor analysis:
- A: Partial support — single-year snapshot omits the trend.
- C: Irrelevant trend — fish counts without nitrate change.
- D: Data misread — cites nitrate low point but not fish recovery.', 'Look for simultaneous change across all four years.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"science"}'::jsonb, 'coe-quant-medium-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('612892fe-36ce-47a7-a5ac-6522ed608e85', 'Which choice most effectively uses data from the table to support the researchers'' claim that Fertilizer B produced a greater yield increase than Fertilizer A across the three growing seasons?', 'Agricultural researchers applied two slow-release fertilizers to otherwise identical corn plots for three consecutive seasons, comparing percent yield increase relative to unfertilized controls. Irrigation, seed variety, and planting dates were held constant so seasonal differences reflected fertilizer performance rather than weather luck alone. The team hypothesized that Fertilizer B would outperform Fertilizer A in each season, producing a consistently larger boost to yield. County extension agents verified that pest pressure and soil pH remained within normal ranges across all plots during the trial.

The table summarizes results from the study described above.

| Season | Fertilizer A (% increase) | Fertilizer B (% increase) |
| --- | --- | --- |
| 2021 | $8$ | $12$ |
| 2022 | $10$ | $14$ |
| 2023 | $9$ | $13$ |', 'passage', '[{"id":"A","text":"In 2022, Fertilizer A increased yield by $10%$ while Fertilizer B increased yield by $14%$.","is_correct":false,"explanation":"Supports only one season; the claim covers all three seasons collectively."},{"id":"B","text":"In each season, Fertilizer B''s percent yield increase exceeded Fertilizer A''s increase.","is_correct":true,"explanation":"Correct: $12>8$, $14>10$, and $13>9$ in successive seasons, showing B''s advantage throughout the trial."},{"id":"C","text":"Fertilizer B produced at least a $12%$ yield increase in every season tested.","is_correct":false,"explanation":"True of B alone but does not compare B against A as the claim requires."},{"id":"D","text":"Fertilizer A''s yield increase rose from $8%$ in 2021 to $10%$ in 2022 before falling to $9%$ in 2023.","is_correct":false,"explanation":"Describes A''s internal trend without establishing B''s superior performance."}]'::jsonb, 'B', 'Step 1 — Read the table
Compare Fertilizer A and B percentages season by season.

Step 2 — Connect data to the claim
The claim requires B to beat A across the full three-season comparison, not in one year only.

Step 3 — Select supported conclusion
Choice B shows B''s increase exceeded A''s in 2021, 2022, and 2023.

Distractor analysis:
- A: Partial support — one season cannot represent the multi-year claim.
- C: Irrelevant trend — B''s floor ignores comparison to A.
- D: Data misread — tracks A alone, not A versus B.', 'Check whether B beats A in every season row.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"science"}'::jsonb, 'coe-quant-medium-002', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('90e21404-4884-42e4-869d-42bd2593c117', 'Which choice most effectively uses data from the chart to support Chen''s claim that employees working remotely at least three days per week reported larger productivity gains than those remote only one or two days?', 'Sociologist Chen surveyed office workers six months after their employers adopted hybrid schedules, grouping respondents by how many days per week they worked remotely. Self-reported productivity change was averaged within each group. Chen controlled for job type and tenure so comparisons reflected remote frequency rather than career stage. She concluded that employees remote at least three days per week saw larger productivity gains than colleagues remote only one or two days.

The chart below plots mean productivity change (%) by remote days per week.

| Remote days/week | Mean productivity change (%) |
| --- | --- |
| $1$–$2$ | $+4$ |
| $3$–$4$ | $+11$ |
| $5$ | $+13$ |', 'passage', '[{"id":"A","text":"Workers remote $5$ days per week reported a $+13%$ productivity change, the highest value in the chart.","is_correct":false,"explanation":"Highlights one group without contrasting it against the $1$–$2$ day category."},{"id":"B","text":"Workers remote $1$–$2$ days averaged a $+4%$ change, lower than any group working at least three remote days.","is_correct":true,"explanation":"Correct: $+11%$ and $+13%$ for the $geq 3$-day groups both exceed the $+4%$ gain among $1$–$2$ day workers."},{"id":"C","text":"Productivity change increased as remote days rose from $1$–$2$ to $5$ per week.","is_correct":false,"explanation":"Describes a monotonic trend but does not explicitly contrast sub-three-day and three-plus-day groups."},{"id":"D","text":"Workers remote $3$–$4$ days reported an $+11%$ productivity change.","is_correct":false,"explanation":"Reports one above-threshold group without comparing it to the $1$–$2$ day baseline."}]'::jsonb, 'B', 'Step 1 — Read the table
Read productivity changes for the $1$–$2$, $3$–$4$, and $5$-day remote groups.

Step 2 — Connect data to the claim
Chen''s claim separates employees below three remote days from those at three or more.

Step 3 — Select supported conclusion
Choice B shows $+4%$ for $1$–$2$ days versus higher gains ($+11%$, $+13%$) for all $geq 3$-day groups.

Distractor analysis:
- A: Partial support — cites the maximum without the sub-three-day comparison.
- C: Irrelevant trend — overall slope does not name the three-day cutoff.
- D: Data misread — one above-threshold row, no contrast with $1$–$2$ days.', 'Compare the $1$–$2$ day group with every group at three or more days.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"social_studies"}'::jsonb, 'coe-quant-medium-003', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('1594b3ff-43f8-4dac-a4cd-1458233de2ab', 'Which choice most effectively uses data from the table to support Dr. Park''s claim that Antibiotic M outperformed Antibiotic N only under acidic conditions, not at neutral pH?', 'Microbiologist Dr. Park cultured identical bacterial colonies and exposed them to Antibiotic M or Antibiotic N for $48$ hours under either neutral (pH $7.0$) or acidic (pH $4.5$) conditions. Colony reduction percentage measured how effectively each antibiotic limited growth. Park hypothesized that M would surpass N only in acidic media, reflecting a pH-dependent mechanism reported in earlier bench studies. At neutral pH she expected N to remain the stronger agent because its molecular stability does not depend on proton availability. Reviewers noted that any valid conclusion must compare both antibiotics within each pH level rather than averaging across conditions. Laboratory staff replicated each culture plate twice to ensure that small pipetting errors did not distort the reported percentages. Park therefore presented the table as the definitive within-condition comparison her manuscript required.

The table summarizes results from the study described above.

| Condition | Antibiotic M (% reduction) | Antibiotic N (% reduction) |
| --- | --- | --- |
| pH $7.0$ | $62$ | $78$ |
| pH $4.5$ | $85$ | $54$ |', 'passage', '[{"id":"A","text":"At pH $4.5$, Antibiotic M reduced colonies by $85%$ compared with $54%$ for Antibiotic N, whereas at pH $7.0$ Antibiotic N achieved $78%$ reduction versus $62%$ for Antibiotic M.","is_correct":true,"explanation":"Correct: M leads under acidity while N leads at neutral pH, matching the conditional claim."},{"id":"B","text":"Antibiotic M achieved $85%$ colony reduction, the highest single value recorded in the table.","is_correct":false,"explanation":"Cites M''s best outcome without showing N''s superiority at neutral pH."},{"id":"C","text":"At pH $7.0$, both antibiotics reduced more than $60%$ of colonies.","is_correct":false,"explanation":"True at neutral pH but ignores which antibiotic performed better in each condition."},{"id":"D","text":"Antibiotic N reduced colonies by $54%$ under acidic conditions.","is_correct":false,"explanation":"Reports N''s acidic result without establishing M''s advantage there or N''s lead at pH $7.0$."}]'::jsonb, 'A', 'Step 1 — Read the table
Compare M and N within each pH row before drawing cross-condition conclusions.

Step 2 — Connect data to the claim
Park claims M beats N only at pH $4.5$, with N stronger at pH $7.0$.

Step 3 — Select supported conclusion
Choice A documents M''s $85%$ versus N''s $54%$ under acidity and reverses the leader at neutral pH ($78%$ vs. $62%$).

Distractor analysis:
- B: Partial support — peak value omits the neutral-pH reversal.
- C: Irrelevant trend — both exceed $60%$ but do not identify the better antibiotic per condition.
- D: Data misread — acidic N result without M comparison or neutral condition.', 'Compare M and N separately at pH $7.0$ and pH $4.5$.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"science"}'::jsonb, 'coe-quant-hard-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('ab2e6ca9-3dce-44e5-bf08-e12f030cfe8b', 'Which choice most effectively uses data from the table to support the engineers'' claim that carbon-capture efficiency was highest at low temperatures only when relative humidity exceeded $60%$?', 'Environmental engineers tested identical carbon-capture filters at $10^circ	ext{C}$ and $28^circ	ext{C}$, crossing each temperature with low ($45%$) and high ($72%$) relative humidity chambers. They recorded grams of CO$_2$ absorbed per hour after $6$ hours of continuous operation. The team argued that low temperature maximized capture only when humidity rose above $60%$, because dry cold air limited the moisture-mediated reaction pathway. At $28^circ	ext{C}$, they expected humidity to matter less since kinetic energy already drove absorption. Stakeholders asked for evidence that combined temperature and humidity rather than citing a single peak reading in isolation. Each chamber was calibrated before the run, and engineers discarded the first hour of data to allow filters to reach steady state. The published summary therefore compares only fully stabilized absorption rates across the four temperature–humidity pairings.

The table summarizes results from the study described above.

| Temperature | Humidity (%) | CO₂ absorbed (g/hr) |
| --- | --- | --- |
| $10^circ	ext{C}$ | $45$ | $2.1$ |
| $10^circ	ext{C}$ | $72$ | $6.8$ |
| $28^circ	ext{C}$ | $45$ | $5.4$ |
| $28^circ	ext{C}$ | $72$ | $5.9$ |', 'passage', '[{"id":"A","text":"At $10^circ\text{C}$ and $72%$ humidity, the filter absorbed $6.8$ g/hr—the table''s highest rate—while at $10^circ\text{C}$ and $45%$ humidity absorption fell to $2.1$ g/hr; at $28^circ\text{C}$ both humidity levels yielded lower peaks ($5.4$ and $5.9$ g/hr).","is_correct":true,"explanation":"Correct: low temperature peaks only under high humidity and does not dominate when humidity is low or temperature is high."},{"id":"B","text":"Absorption increased from $2.1$ to $6.8$ g/hr when humidity rose at $10^circ\text{C}$.","is_correct":false,"explanation":"Shows humidity''s effect at low temperature but omits comparison with $28^circ\text{C}$ rows."},{"id":"C","text":"At $28^circ\text{C}$, absorption was $5.9$ g/hr under $72%$ humidity.","is_correct":false,"explanation":"Reports one warm, humid cell without establishing that low temperature wins only above $60%$ humidity."},{"id":"D","text":"The filter absorbed more than $5$ g/hr in three of the four test conditions.","is_correct":false,"explanation":"Counts high-output runs without linking the maximum to the temperature–humidity interaction."}]'::jsonb, 'A', 'Step 1 — Read the table
Identify the highest absorption rate and note humidity at each temperature level.

Step 2 — Connect data to the claim
The claim requires low temperature to win only when humidity exceeds $60%$, not universally.

Step 3 — Select supported conclusion
Choice A shows $6.8$ g/hr at cold/high humidity beats all other cells, including cold/low humidity ($2.1$ g/hr).

Distractor analysis:
- B: Partial support — humidity swing at one temperature only.
- C: Irrelevant trend — warm humid cell does not test the conditional maximum.
- D: Data misread — frequency of $>5$ g/hr ignores which condition is optimal.', 'Find the table maximum and check humidity at $10^circ	ext{C}$ versus $28^circ	ext{C}$.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"science"}'::jsonb, 'coe-quant-hard-002', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('76063638-8c15-4f36-a5c1-e44edf50375e', 'Which choice most effectively uses data from the table to support the analysts'' claim that export growth exceeded import growth for manufacturing but not for services after the tariff adjustment?', 'Trade policy analysts measured year-over-year export and import growth rates for manufacturing and service sectors in the year following a targeted tariff adjustment. They separated sectors because manufacturing supply chains responded quickly to price signals, whereas services trade often depends on licensing agreements that adjust more slowly. The analysts claimed export growth outpaced import growth in manufacturing alone; for services they expected imports to rise faster as domestic consumers shifted spending toward foreign digital platforms. Congressional staff requested evidence that compared within-sector export and import growth rather than ranking sectors by absolute percentages alone. Analysts adjusted figures for inflation so percentage changes reflected real trade volumes rather than price swings. The briefing table therefore shows side-by-side export and import growth within each sector, which is the comparison lawmakers said they needed.

The table summarizes results from the study described above.

| Sector | Export growth (%) | Import growth (%) |
| --- | --- | --- |
| Manufacturing | $+8.2$ | $+3.1$ |
| Services | $+4.5$ | $+6.7$ |', 'passage', '[{"id":"A","text":"Manufacturing exports grew $+8.2%$ while manufacturing imports grew only $+3.1%$, but in services imports grew $+6.7%$ while exports grew $+4.5%$.","is_correct":true,"explanation":"Correct: exports beat imports in manufacturing while the opposite holds in services."},{"id":"B","text":"Manufacturing export growth ($+8.2%$) was the highest percentage in the table.","is_correct":false,"explanation":"Identifies the largest export figure without comparing imports within each sector."},{"id":"C","text":"Service-sector imports grew $+6.7%$, exceeding service exports at $+4.5%$.","is_correct":false,"explanation":"Supports only the services half of the claim and omits manufacturing."},{"id":"D","text":"Both sectors recorded positive export growth after the tariff adjustment.","is_correct":false,"explanation":"True directional fact that does not compare export and import growth within either sector."}]'::jsonb, 'A', 'Step 1 — Read the table
Within each sector row, compare export growth to import growth.

Step 2 — Connect data to the claim
The claim requires manufacturing exports to outpace manufacturing imports while services show the reverse pattern.

Step 3 — Select supported conclusion
Choice A cites $+8.2%$ vs. $+3.1%$ for manufacturing and $+4.5%$ vs. $+6.7%$ for services.

Distractor analysis:
- B: Partial support — peak export rate without import comparison or services sector.
- C: Partial support — services only; ignores manufacturing.
- D: Irrelevant trend — positive exports in both sectors do not test relative growth.', 'Compare export and import percentages inside each sector row.', 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"quantitative_table","rw_format":"table_chart","generator":"generate-coe-quant-batches.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"social_studies"}'::jsonb, 'coe-quant-hard-003', now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;