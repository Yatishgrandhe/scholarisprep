BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f14ea653-0708-4045-a3cc-dc2216be328d', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3961 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7fc3ae98-d334-40f3-958b-8821ec9a48d9', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3962 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cff9e721-ff42-48ba-a969-85e6b27a5b41', 'Which choice best states the main idea of the passage?', 'Historians examining archive 3963 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:comparing}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0af1942e-7fff-4a9f-b551-ef82d4a61f01', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3964 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c49a7b7e-83ea-4954-98fb-98a774bae867', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3965 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1fd511a0-925c-4c34-ac42-758e340bff46', 'Which choice best states the main idea of the passage?', 'Historians examining archive 3966 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:comparing}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f9a2435-63af-4a3a-9894-bd0eb57c4cfb', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3967 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e9ad898-889a-473f-b370-cd2e31bd5cfa', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3968 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31f67fff-49ef-456f-a872-6e3ae1eda1c0', 'Which choice best states the main idea of the passage?', 'Historians examining archive 3969 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:comparing}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d1312351-655b-440d-8e4e-247490c25324', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3970 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f7d639d-1f28-45d4-a097-e8166b256496', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3971 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fe51c53-c0a6-4cf5-a8a9-32b15d988346', 'Which choice best states the main idea of the passage?', 'Historians examining archive 3972 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:comparing}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('daad7e05-4801-4134-8938-09de3a507826', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3973 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a723ab1-3a8f-4b96-9dcd-f07421142ea1', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3974 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70e9f970-96a5-44c3-a878-ad6439ccb63b', 'Which choice best states the main idea of the passage?', 'Historians examining archive 3975 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:comparing}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc42c35b-7dbc-4bd0-a5c4-9d1f06667c13', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3976 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('408b5525-e713-46d0-82b3-3f6b4bbf4a64', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3977 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('deb5da1b-f8c5-49cb-b930-388863c37d3a', 'Which choice best states the main idea of the passage?', 'Historians examining archive 3978 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:comparing}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccec51c4-17dc-4a91-a710-057c18b0085d', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 3979 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be1533f7-8c5c-47d0-b2e7-0f5aecd9d77b', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 3980 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: The passage cites research and field surveys; it does not reject scientific methods.
- D: The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"main_idea","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
