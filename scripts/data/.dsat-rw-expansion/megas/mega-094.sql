BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dcc5039-2610-4960-b61f-065aa9776565', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'Historians examining archive 4710 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:comparing}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8900ea5b-a119-45ff-bbb8-3ce5940cc170', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 4711 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b3896af-daeb-46c7-afb3-340311321208', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'A longitudinal analysis of dataset 4712 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dfdc02d2-2ece-48bc-8676-f66c2e84b89d', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 4713 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:comparing}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c7def29-f20b-47fc-9daf-072d3523ea75', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'The novelist writing in passage 4714 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('844d6e92-a154-4a53-8c15-5ef6e218ade0', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'A longitudinal analysis of dataset 4715 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3dd49bb-39c4-4831-9ea3-9820018fa0fa', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'Historians examining archive 4716 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:comparing}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13ecf8ac-b15f-4dc7-ba45-0fee8ca17dbe', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 4717 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7937431-8ac2-490d-bdcd-27d7df9d71d0', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'A longitudinal analysis of dataset 4718 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c79bc521-1eaa-490d-a468-9953017a920a', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 4719 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:comparing}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae511dee-6c0a-4cbd-ab45-52f3d1d2cce6', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'The novelist writing in passage 4720 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3c1a1250-16ee-4619-b444-35af3a5dce75', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'A longitudinal analysis of dataset 4721 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cc33a60f-7fed-42b9-9cbd-f75d3e7b0094', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'Historians examining archive 4722 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:comparing}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72cad8a5-1eba-469c-a603-a2a80fb16128', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 4723 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: Irrelevant to adaptation speed during logistics failures.
- C: Contradicts the passage''s premise that supply chains stalled.
- D: Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"supporting_finding","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6532b14a-cb0a-4749-a70d-1be38e558d6f', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'A longitudinal analysis of dataset 4724 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:measurement}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"textual_evidence","rw_format":"two_part_evidence","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
