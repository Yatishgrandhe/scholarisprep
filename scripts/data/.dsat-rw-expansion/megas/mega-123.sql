BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ded4ff32-caf1-4711-8805-91826f969564', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5020 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Year | Sample size | Mean score | Std. dev. |
| --- | --- | --- | --- |
| 2018 | 25150 | 72 | 5 |
| 2019 | 25165 | 76 | 6 |
| 2020 | 25180 | 80 | 7 |
| 2021 | 25195 | 64 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cfac85e-6b2f-49b9-8c83-57b879e79a1f', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5021 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Group | Hours studied | Post-test % | Gain |
| --- | --- | --- | --- |
| 2018 | 25155 | 73 | 5 |
| 2019 | 25170 | 77 | 6 |
| 2020 | 25185 | 81 | 7 |
| 2021 | 25200 | 65 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e524ed0f-6e8b-4ce8-a5a4-7e649fbd161a', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5022 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 25160 | 74 | 5 |
| 2019 | 25175 | 78 | 6 |
| 2020 | 25190 | 62 | 7 |
| 2021 | 25205 | 66 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:unrelated}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf2c5b9f-22ef-4254-9f50-39b342da0b36', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5023 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.

The table summarizes results from the study described above.

| Quarter | Units sold | Return rate % | Margin % |
| --- | --- | --- | --- |
| 2018 | 25165 | 75 | 5 |
| 2019 | 25180 | 79 | 6 |
| 2020 | 25195 | 63 | 7 |
| 2021 | 25210 | 67 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('206ce728-4417-4a93-a436-f5e62b23e5a6', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5024 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.

The table summarizes results from the study described above.

| Year | Sample size | Mean score | Std. dev. |
| --- | --- | --- | --- |
| 2018 | 25170 | 76 | 5 |
| 2019 | 25185 | 80 | 6 |
| 2020 | 25200 | 64 | 7 |
| 2021 | 25215 | 68 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f283e17b-63c9-451a-b3b7-d66202e05143', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5025 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Group | Hours studied | Post-test % | Gain |
| --- | --- | --- | --- |
| 2018 | 25175 | 77 | 5 |
| 2019 | 25190 | 81 | 6 |
| 2020 | 25205 | 65 | 7 |
| 2021 | 25220 | 69 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:variables}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0979f2e5-4dd5-4bfe-9e58-44bdb69ba7aa', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5026 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 25180 | 78 | 5 |
| 2019 | 25195 | 62 | 6 |
| 2020 | 25210 | 66 | 7 |
| 2021 | 25225 | 70 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62eda446-be9b-45e7-86c6-3e86889e9f68', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5027 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.

The table summarizes results from the study described above.

| Quarter | Units sold | Return rate % | Margin % |
| --- | --- | --- | --- |
| 2018 | 25185 | 79 | 5 |
| 2019 | 25200 | 63 | 6 |
| 2020 | 25215 | 67 | 7 |
| 2021 | 25230 | 71 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73501664-f6b2-46de-b513-10cb5e882347', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5028 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.

The table summarizes results from the study described above.

| Year | Sample size | Mean score | Std. dev. |
| --- | --- | --- | --- |
| 2018 | 25190 | 80 | 5 |
| 2019 | 25205 | 64 | 6 |
| 2020 | 25220 | 68 | 7 |
| 2021 | 25235 | 72 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f0659dd-78f2-4b45-a5b4-788e47b8d2b4', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5029 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.

The table summarizes results from the study described above.

| Group | Hours studied | Post-test % | Gain |
| --- | --- | --- | --- |
| 2018 | 25195 | 81 | 5 |
| 2019 | 25210 | 65 | 6 |
| 2020 | 25225 | 69 | 7 |
| 2021 | 25240 | 73 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('905d56cc-4861-4f86-9e19-44ac97949761', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5030 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 25200 | 62 | 5 |
| 2019 | 25215 | 66 | 6 |
| 2020 | 25230 | 70 | 7 |
| 2021 | 25245 | 74 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:unrelated}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('67fa9652-d586-4531-9bda-6277fd2ad77b', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5031 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Quarter | Units sold | Return rate % | Margin % |
| --- | --- | --- | --- |
| 2018 | 25205 | 63 | 5 |
| 2019 | 25220 | 67 | 6 |
| 2020 | 25235 | 71 | 7 |
| 2021 | 25250 | 75 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:holding}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ba22a32-a39f-4c7b-afed-2eaa60a865d8', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5032 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Year | Sample size | Mean score | Std. dev. |
| --- | --- | --- | --- |
| 2018 | 25210 | 64 | 5 |
| 2019 | 25225 | 68 | 6 |
| 2020 | 25240 | 72 | 7 |
| 2021 | 25255 | 76 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:expected}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2c3f7049-d48a-4f74-a268-40ddbcb3f80b', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5033 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Group | Hours studied | Post-test % | Gain |
| --- | --- | --- | --- |
| 2018 | 25215 | 65 | 5 |
| 2019 | 25230 | 69 | 6 |
| 2020 | 25245 | 73 | 7 |
| 2021 | 25260 | 77 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:expected}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('784cfd46-fb4f-454e-b81d-eeaa33878d12', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5034 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 25220 | 66 | 5 |
| 2019 | 25235 | 70 | 6 |
| 2020 | 25250 | 74 | 7 |
| 2021 | 25265 | 78 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:mechanism}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: Means are not identical across rows.
- D: Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"quantitative_table","rw_format":"table_chart","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
