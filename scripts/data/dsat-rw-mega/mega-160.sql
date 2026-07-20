BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0cb5473d-a64c-41bc-a78e-95b481fcc74c', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 4701 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('04b558e1-5f30-49af-82e8-34c835abf922', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'The novelist writing in passage 4702 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('3c8eaee4-3232-459f-8b0a-419e74141f56', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'A longitudinal analysis of dataset 4703 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('cf8128b5-dc34-4f4d-80ec-e3bd69f36b44', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'Historians examining archive 4704 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('1b4520f2-3814-44eb-8d53-e1d017732496', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 4705 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('8ceabf8b-0c67-4b64-b002-f26e2bd45788', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'A longitudinal analysis of dataset 4706 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('e4ef522f-2e75-4631-adaf-185f6304563a', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 4707 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('62c38ade-463b-4d3f-a4ad-e129ff4d2b23', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'The novelist writing in passage 4708 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('3ae42151-b2d0-42e2-840d-3964e74482a0', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'A longitudinal analysis of dataset 4709 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('f5e6d4ab-4b86-4b31-bd22-bfd8c0ab9e58', 'Part A: Which choice best states the author''s main claim about reef recovery?

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
VALUES ('f680fbfa-da8b-430b-bce0-3e48661170b2', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 4711 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('b7ec4a0b-82c0-4e02-bf93-4c875b7b5269', 'Part A: Which choice best states the author''s main claim about reef recovery?

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
VALUES ('6e74005b-a8e0-4301-b514-be56e935405e', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 4713 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('9af2319f-cff8-4ccb-ad7c-f1c8a5c56c8c', 'Part A: Which choice best states the author''s main claim about reef recovery?

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
VALUES ('fbe2bfdf-fb3d-4d4e-93a3-1270762b5f17', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'A longitudinal analysis of dataset 4715 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('448a0f3d-b716-4cac-a422-19b04d2cb02b', 'Part A: Which choice best states the author''s main claim about reef recovery?

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
VALUES ('72238661-aa94-4bed-a878-1418e240fb43', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 4717 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('2da148ed-141f-440e-8de5-f6a0c6083244', 'Part A: Which choice best states the author''s main claim about reef recovery?

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
VALUES ('77237e0f-9cd7-45d6-bbcd-3838c42e1dae', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 4719 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
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
VALUES ('8f5ac8a7-4f75-4508-b6fc-4b866a5ac50c', 'Part A: Which choice best states the author''s main claim about reef recovery?

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
COMMIT;
