BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8cdd15a1-ae73-484d-8d35-dd16106e1e33', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2008, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2022 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94f96391-9654-491a-88c9-fb089739f90e', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2009, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2023 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c9f2ac0c-a6e5-4300-b41b-372242cf54af', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2010, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2024 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38b00677-6888-474a-a716-62a7ac6a6953', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2011, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2025 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ab55ecdf-ccc7-45ae-98a4-ea29e1544980', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2012, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2018 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('01c58729-0cf3-44dc-8fb5-f4a206f5fbca', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2013, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2019 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ded37c3-9aa6-48c9-b5bf-e7fab99c8bc4', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2014, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2020 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('25c45bee-12d6-4bea-be59-db19cc72dd09', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2015, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2021 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1486986c-e850-4205-848d-2a875f1fa0bb', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2016, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2022 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7725584-89b1-4878-94cc-a04c281cfd8a', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2017, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2023 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16e9f851-c004-4ffa-b3b0-84a1b35ee679', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2008, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2024 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0bdc83c7-941b-44ab-8458-3ff7dfc6a249', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2009, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2025 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9484538a-b13e-4872-8ecb-520368d1d813', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2010, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2018 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4df80de8-e685-45ee-a369-975bff2303c0', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2011, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2019 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('abdc64c9-63ec-4517-ac9c-0b3ac6c6bf90', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2012, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2020 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
