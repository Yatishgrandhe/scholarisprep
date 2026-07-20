BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f2b0e16-9a9d-48ba-972e-4dae8ed2c24c', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4621 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4621 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4621 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe0aa62a-b896-4208-82a2-04662405cbfd', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4622 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4622 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4622 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59a9f06b-260d-4fff-9167-81ccee21a455', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4623 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4623 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4623 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('196ae967-dc72-4e60-9521-ec75213df11d', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4624 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4624 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4624 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('353cceac-a0d4-4661-abde-0a4aa3b853d9', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4625 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4625 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4625 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be119a4a-2f92-4c63-b1ba-7c2db3ce28a3', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4626 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4626 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4626 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a62480d-9660-4a1a-921e-7082d64515fe', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4627 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4627 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4627 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed60226a-5cb3-428b-8321-90e457dbb28a', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4628 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4628 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4628 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('097965b3-91aa-4d96-83f1-09e015fd777a', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4629 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4629 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4629 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('39e017c2-61de-4228-9d3a-9ed9a8eefded', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4630 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4630 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4630 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('98cbae5e-4726-4597-bf37-b854e797a5ad', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4631 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4631 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4631 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c93a8cd0-c0b3-410f-9bc4-f177520978c7', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4632 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4632 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4632 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('61a57db3-51e4-4e65-ba49-af4a622fbb90', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4633 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4633 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4633 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5591b431-f09e-48ba-9692-19c8488cea66', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4634 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4634 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4634 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5812503e-8a8a-4e94-99fe-38618ec4d659', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4635 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4635 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4635 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0342eb6-db88-416e-ad36-26942ccd5e1e', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4636 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4636 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4636 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a9cd92f-162d-4e89-9ab6-89fe8ec7ac79', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4637 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4637 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4637 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2762ab38-6584-481e-bbad-ddee768392ed', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4638 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4638 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4638 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f8ee1c3-fa81-4132-879e-0c23dddf7d2f', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4639 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4639 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4639 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b7a9a4f-8b4f-4947-bf32-3b00a7f7196d', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4640 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4640 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4640 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
