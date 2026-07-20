BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2cb4417e-8e2b-4e5d-bb8f-97c24337e27e', 'As used in the passage, "scrutinize" most nearly means', 'Historians examining archive 5235 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the scrutinize is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"to worsen","is_correct":false,"explanation":"\"to worsen\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to lessen or make less severe","is_correct":true,"explanation":"Correct (B). \"mitigate\" fits \"to lessen or make less severe\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to ignore","is_correct":false,"explanation":"\"to ignore\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to multiply","is_correct":false,"explanation":"\"to multiply\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:holding}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to lessen or make less severe.

Distractor analysis:
- A: "to worsen" contradicts the sentence logic requiring a provisional judgment.
- C: "to ignore" contradicts the sentence logic requiring a provisional judgment.
- D: "to multiply" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('54643d7b-0fad-464e-b680-ed2481103bc8', 'As used in the passage, "mitigate" most nearly means', 'The novelist writing in passage 5236 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the mitigate is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"obvious","is_correct":false,"explanation":"\"obvious\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"fragile or weakly supported","is_correct":true,"explanation":"Correct (B). \"tenuous\" fits \"fragile or weakly supported\" given the provisional conclusion awaiting replication."},{"id":"C","text":"permanent","is_correct":false,"explanation":"\"permanent\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"loud","is_correct":false,"explanation":"\"loud\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:intervention}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: fragile or weakly supported.

Distractor analysis:
- A: "obvious" contradicts the sentence logic requiring a provisional judgment.
- C: "permanent" contradicts the sentence logic requiring a provisional judgment.
- D: "loud" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2be6e837-5a7a-4fb3-b68f-5f22a5ef5899', 'As used in the passage, "tenuous" most nearly means', 'A longitudinal analysis of dataset 5237 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the tenuous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"to weaken","is_correct":false,"explanation":"\"to weaken\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to support or strengthen","is_correct":true,"explanation":"Correct (B). \"bolster\" fits \"to support or strengthen\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to hide","is_correct":false,"explanation":"\"to hide\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to erase","is_correct":false,"explanation":"\"to erase\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to support or strengthen.

Distractor analysis:
- A: "to weaken" contradicts the sentence logic requiring a provisional judgment.
- C: "to hide" contradicts the sentence logic requiring a provisional judgment.
- D: "to erase" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af0f13a0-3e3f-4f66-9e29-df65a3efeda4', 'As used in the passage, "bolster" most nearly means', 'Historians examining archive 5238 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the bolster is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"ambiguous\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90b5557a-dd25-4cc5-a53e-64ce1cbf3d20', 'As used in the passage, "ambiguous" most nearly means', 'The novelist writing in passage 5239 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the ambiguous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"scrutinize\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('213f489a-d13a-4fcb-ba13-d90827a39715', 'As used in the passage, "scrutinize" most nearly means', 'A longitudinal analysis of dataset 5240 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the scrutinize is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"to worsen","is_correct":false,"explanation":"\"to worsen\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to lessen or make less severe","is_correct":true,"explanation":"Correct (B). \"mitigate\" fits \"to lessen or make less severe\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to ignore","is_correct":false,"explanation":"\"to ignore\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to multiply","is_correct":false,"explanation":"\"to multiply\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to lessen or make less severe.

Distractor analysis:
- A: "to worsen" contradicts the sentence logic requiring a provisional judgment.
- C: "to ignore" contradicts the sentence logic requiring a provisional judgment.
- D: "to multiply" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b252e3ad-9dfa-48c2-90c7-453c28508bd7', 'As used in the passage, "mitigate" most nearly means', 'Historians examining archive 5241 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the mitigate is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"obvious","is_correct":false,"explanation":"\"obvious\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"fragile or weakly supported","is_correct":true,"explanation":"Correct (B). \"tenuous\" fits \"fragile or weakly supported\" given the provisional conclusion awaiting replication."},{"id":"C","text":"permanent","is_correct":false,"explanation":"\"permanent\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"loud","is_correct":false,"explanation":"\"loud\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: fragile or weakly supported.

Distractor analysis:
- A: "obvious" contradicts the sentence logic requiring a provisional judgment.
- C: "permanent" contradicts the sentence logic requiring a provisional judgment.
- D: "loud" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26d6c05a-22e4-43a0-a82e-dadb9ff56c05', 'As used in the passage, "tenuous" most nearly means', 'The novelist writing in passage 5242 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the tenuous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"to weaken","is_correct":false,"explanation":"\"to weaken\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to support or strengthen","is_correct":true,"explanation":"Correct (B). \"bolster\" fits \"to support or strengthen\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to hide","is_correct":false,"explanation":"\"to hide\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to erase","is_correct":false,"explanation":"\"to erase\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to support or strengthen.

Distractor analysis:
- A: "to weaken" contradicts the sentence logic requiring a provisional judgment.
- C: "to hide" contradicts the sentence logic requiring a provisional judgment.
- D: "to erase" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84f61587-57b9-4449-9dcd-f67fe0c20fa2', 'As used in the passage, "bolster" most nearly means', 'A longitudinal analysis of dataset 5243 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the bolster is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"ambiguous\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:intervention}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fbe35b3b-8e5f-4078-8274-ef6a5c80189a', 'As used in the passage, "ambiguous" most nearly means', 'Historians examining archive 5244 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the ambiguous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"scrutinize\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f38a5a0d-9afb-4d15-85b8-7fefad92ec43', 'As used in the passage, "scrutinize" most nearly means', 'The novelist writing in passage 5245 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the scrutinize is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"to worsen","is_correct":false,"explanation":"\"to worsen\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to lessen or make less severe","is_correct":true,"explanation":"Correct (B). \"mitigate\" fits \"to lessen or make less severe\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to ignore","is_correct":false,"explanation":"\"to ignore\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to multiply","is_correct":false,"explanation":"\"to multiply\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to lessen or make less severe.

Distractor analysis:
- A: "to worsen" contradicts the sentence logic requiring a provisional judgment.
- C: "to ignore" contradicts the sentence logic requiring a provisional judgment.
- D: "to multiply" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e072c732-2765-458d-82c3-3b30de849645', 'As used in the passage, "mitigate" most nearly means', 'A longitudinal analysis of dataset 5246 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the mitigate is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"obvious","is_correct":false,"explanation":"\"obvious\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"fragile or weakly supported","is_correct":true,"explanation":"Correct (B). \"tenuous\" fits \"fragile or weakly supported\" given the provisional conclusion awaiting replication."},{"id":"C","text":"permanent","is_correct":false,"explanation":"\"permanent\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"loud","is_correct":false,"explanation":"\"loud\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:intervention}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: fragile or weakly supported.

Distractor analysis:
- A: "obvious" contradicts the sentence logic requiring a provisional judgment.
- C: "permanent" contradicts the sentence logic requiring a provisional judgment.
- D: "loud" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87462c5a-c3ce-4e3b-bfd0-164fac7fa538', 'As used in the passage, "tenuous" most nearly means', 'Historians examining archive 5247 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the tenuous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"to weaken","is_correct":false,"explanation":"\"to weaken\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to support or strengthen","is_correct":true,"explanation":"Correct (B). \"bolster\" fits \"to support or strengthen\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to hide","is_correct":false,"explanation":"\"to hide\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to erase","is_correct":false,"explanation":"\"to erase\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:holding}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to support or strengthen.

Distractor analysis:
- A: "to weaken" contradicts the sentence logic requiring a provisional judgment.
- C: "to hide" contradicts the sentence logic requiring a provisional judgment.
- D: "to erase" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d7a7b560-c937-4ec2-ae78-ba1085ec29ea', 'As used in the passage, "bolster" most nearly means', 'The novelist writing in passage 5248 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the bolster is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"ambiguous\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:intervention}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09856cdb-871b-4ba8-801a-a0fb4d971f1d', 'As used in the passage, "ambiguous" most nearly means', 'A longitudinal analysis of dataset 5249 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the ambiguous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"\"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"scrutinize\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"\"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"\"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:periods}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
