BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3069092-7243-493f-bd2f-c8165b779c12', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 4155 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:comparing}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00fc0201-0ae3-4e84-b8c2-54f2a66f30c5', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 4156 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('85d4a772-5ece-46fa-a430-d6f886345534', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 4157 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('757be2e5-6b84-4f71-9d6c-10ad05a8cdc1', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 4158 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:comparing}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06b7b932-1d1f-4c0c-8adb-ac54b6405cd2', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 4159 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf222b34-62ec-4d99-87c9-88ee5d398552', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 4160 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('88c3ec01-73df-43f5-82ca-35c4049ef694', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 4161 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:comparing}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b882cf03-6006-4e78-9ead-4159aa3268ac', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 4162 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20150ad0-93af-4467-a6fd-29921dcac68b', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 4163 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('504e8247-0e82-41e1-860a-552b8962cc33', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 4164 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:comparing}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f6c31a1-a99e-444b-93b2-d36454e6e304', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 4165 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1ca201ae-d5a5-4d29-8b7e-7410f7f6037a', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 4166 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82ecb10c-5840-4768-8495-e90f249c7efa', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 4167 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:comparing}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: The passage explicitly cautions against overgeneralization.
- D: No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a043217-65ab-4cf7-859f-5dd782ab65a1', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 4168 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: The passage reports published findings; it does not suggest suppression.
- B: Too absolute; the passage compares groups under controlled conditions.
- D: No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43425321-f3e6-430e-9462-a57b5e803748', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 4169 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:measurement}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: The passage reports published findings; it does not suggest abandoning the project.
- B: The authors explicitly call for replication rather than treating one pilot as definitive.
- D: The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"implication","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
