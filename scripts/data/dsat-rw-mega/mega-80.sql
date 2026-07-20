BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21f5e8a7-57ab-4a03-8bad-545dfc88fea2', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4761 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4761 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4761 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cc0b0a88-982e-47b0-9ff6-5205ed5f5cbd', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4762 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4762 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4762 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c07ba16c-4a76-433a-8776-3189983090c7', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4763 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4763 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4763 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aff35c63-c71a-44ad-8800-7973415303f2', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4764 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4764 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4764 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b4e0e81-cc8f-4661-83a4-1fec9b2be5c0', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4765 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4765 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4765 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('138ef8c5-15ac-426a-aaee-fab40d46028b', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4766 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4766 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4766 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52b2cd67-3e4d-41ec-9666-f8bf07d2c939', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4767 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4767 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4767 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f3638491-2d93-43d8-9716-34a0b9a71473', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4768 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4768 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4768 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cfc68960-0b23-4ec6-a546-2bf421ed7e80', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4769 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4769 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4769 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9858a1a-d97d-411e-8d80-d5c5d85d7b51', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4770 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4770 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4770 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ebc6efcb-9d5c-4856-a5d0-e659657e6fa8', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4771 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4771 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4771 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8433d66-fa2a-426f-b6c9-4c63310733ee', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4772 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4772 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4772 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff9e88bc-f272-4e61-9690-d1cea4e83d35', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4773 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4773 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4773 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3527c8a9-212c-4adb-a494-eaede74ca527', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4774 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4774 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4774 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('19ee93ff-8fda-4326-9445-004f56c649fc', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4775 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4775 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4775 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b7856607-15a1-4551-bf8b-8bcdb30572ab', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4776 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4776 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4776 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7a9ce9ce-27d3-431f-81a6-3b0a1b3556f6', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4777 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4777 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4777 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d44e0c6-ef78-471f-8fb1-5a7544e6d7a4', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4778 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4778 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4778 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('008171fa-5bfa-45ec-b761-69990d30bdf7', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4779 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4779 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4779 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cff844bf-c64d-4cc6-a05f-c2ac4364d313', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4780 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4780 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4780 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
