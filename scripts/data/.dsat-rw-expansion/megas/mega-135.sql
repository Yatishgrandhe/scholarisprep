BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('497d368a-64be-40f2-bcc4-2494c3b98877', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 3775 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21e1fab6-3b44-47a8-ae21-fbe1583ce281', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 3776 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d32825bf-096b-49e2-b718-a1cea7b6e380', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 3777 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:comparing}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c8af619-d064-4dcc-a9c9-ea7154c8cffe', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 3778 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('389253f5-10d7-46a9-b076-d88dbe2400cb', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 3779 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d38dc1bb-ab90-466c-b674-41a8e8bec2ee', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 3780 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:comparing}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('537f76cb-4cf4-4ffd-85d9-c87f456fa5ff', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 3781 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1fe0a907-b2bf-43b2-baa8-7ed22cf855c6', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 3782 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7a5623f8-9a91-45b0-851d-e54daf5022f1', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 3783 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:comparing}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccfd1b67-6cbd-4282-b065-92f8b757202f', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 3784 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7ac4245a-2246-4b29-bc75-7eb8983fdecd', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 3785 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3023017b-1336-40cf-93ae-63151036e860', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 3786 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:comparing}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f3e7c58-0ec6-48e9-b15a-c0a3e9c60efb', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 3787 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('609d800c-bc03-43e9-8f9b-ae5971a1d31a', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 3788 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:measurement}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('788b1c6e-2dd5-4729-b4ee-79a967a958ee', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 3789 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:comparing}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"general","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
