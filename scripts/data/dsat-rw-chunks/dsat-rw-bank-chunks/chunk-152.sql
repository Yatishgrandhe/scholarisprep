BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50fabb00-7f0f-4b66-b08d-9b986923aaa9', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4541 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4541 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4541 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f766caf-982c-4bdc-b191-84bcc1aaedc5', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4542 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4542 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4542 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ced078b2-b9ee-41d1-8196-e0bd52811528', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4543 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4543 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4543 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('637806b0-db3b-42be-910e-36c493f8cfe7', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4544 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4544 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4544 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('92753e61-4438-412b-98d5-26411f249e7c', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4545 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4545 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4545 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('664fe628-0881-4d42-a999-5f88aa0e51a3', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4546 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4546 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4546 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf6dcbcc-2638-4c1f-b2f5-4fc16c93129f', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4547 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4547 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4547 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b03eaa6-ebe2-48e9-963a-6d50732c6b99', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4548 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4548 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4548 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('79622820-cfe2-4df8-9483-f0988ec803e8', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4549 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4549 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4549 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('922f15cb-fdf8-453d-8355-cabfb3311ec6', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4550 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4550 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4550 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38f6ec7b-b931-4d80-9c5e-ed83d329997f', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4551 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4551 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4551 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('540cdef5-f2b2-4d53-a3be-ed9063d29b69', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4552 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4552 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4552 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d701d8e-8b07-4206-a2b4-8929aa18a59d', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4553 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4553 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4553 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13ac3472-3335-4ca1-8fda-bb1d2cbbc5f4', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4554 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4554 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4554 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('214c0463-43ff-4b0f-8af9-05db6bee0b85', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4555 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4555 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4555 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36f1df24-6915-41b5-ad4c-fd73134db914', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4556 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4556 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4556 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cddc700b-2280-4f70-9d2e-adbda1910b81', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4557 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4557 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4557 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0160f506-8674-4c61-9383-b0f1564cd9f5', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4558 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4558 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4558 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da6b859b-776b-4c79-a6b2-518117516419', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4559 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4559 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4559 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e318a3bd-895d-473c-bf92-0a82b50b20a7', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4560 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4560 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4560 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
