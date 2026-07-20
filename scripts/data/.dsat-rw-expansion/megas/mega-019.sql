BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d7fd0657-36a5-4b63-bc83-087cd038777d', 'As used in the passage, "garrulous" most nearly means', 'Historians examining archive 5385 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the garrulous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"unambiguous","is_correct":false,"explanation":"\"unambiguous\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"open to more than one interpretation","is_correct":true,"explanation":"Correct (B). \"equivocal\" fits \"open to more than one interpretation\" given the provisional conclusion awaiting replication."},{"id":"C","text":"permanently settled","is_correct":false,"explanation":"\"permanently settled\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"fabricated","is_correct":false,"explanation":"\"fabricated\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:expected}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: open to more than one interpretation.

Distractor analysis:
- A: "unambiguous" contradicts the sentence logic requiring a provisional judgment.
- C: "permanently settled" contradicts the sentence logic requiring a provisional judgment.
- D: "fabricated" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('12182544-fe20-4ae5-a01d-db0211c51803', 'As used in the passage, "equivocal" most nearly means', 'The novelist writing in passage 5386 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the equivocal is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"perfunctory\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd9f1873-d0a2-4807-8612-d982ce5ff772', 'As used in the passage, "perfunctory" most nearly means', 'A longitudinal analysis of dataset 5387 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the perfunctory is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"sanguine\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18244668-eeae-4f78-ba95-167b6ead676f', 'As used in the passage, "sanguine" most nearly means', 'Historians examining archive 5388 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the sanguine is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"obfuscate\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f587b4ea-62e8-432c-93d0-458afd4f6a9c', 'As used in the passage, "obfuscate" most nearly means', 'The novelist writing in passage 5389 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the obfuscate is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"laconic\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1a32f34-c27f-43e0-9088-d40de8513b5a', 'As used in the passage, "laconic" most nearly means', 'A longitudinal analysis of dataset 5390 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the laconic is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"ephemeral\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:expected}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4953854-c251-4808-b7f1-91027684bc62', 'As used in the passage, "ephemeral" most nearly means', 'Historians examining archive 5391 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the ephemeral is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"intransigent\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4bff46e4-777a-48d5-b6fe-d27b5616d19b', 'As used in the passage, "intransigent" most nearly means', 'The novelist writing in passage 5392 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the intransigent is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"profligate\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eeb16ff6-8ba1-4884-bc8c-47cae9283954', 'As used in the passage, "profligate" most nearly means', 'A longitudinal analysis of dataset 5393 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the profligate is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"surreptitious\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3e095dba-84f2-4380-822d-1c8d9153f939', 'As used in the passage, "surreptitious" most nearly means', 'Historians examining archive 5394 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the surreptitious is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"veracious\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:expected}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1c88b9a-7d3d-46e2-bfd0-37f2949d3a63', 'As used in the passage, "veracious" most nearly means', 'The novelist writing in passage 5395 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the veracious is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"abstruse\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:expected}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f64c9e56-fd87-4c93-8332-674d34394853', 'As used in the passage, "abstruse" most nearly means', 'A longitudinal analysis of dataset 5396 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the abstruse is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"capricious\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9fab3ca1-8a3c-4c45-b5bd-8d70491af03d', 'As used in the passage, "capricious" most nearly means', 'Historians examining archive 5397 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the capricious is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"didactic\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:expected}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff89380e-2bf9-4d1a-933b-a229caac17ed', 'As used in the passage, "didactic" most nearly means', 'The novelist writing in passage 5398 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the didactic is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"fastidious\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('038aa34f-5556-43c9-b041-bd6af4b73e61', 'As used in the passage, "fastidious" most nearly means', 'A longitudinal analysis of dataset 5399 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the fastidious is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"garrulous\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
