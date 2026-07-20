BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4ef5d9d-533a-41bd-95af-7413a8f42764', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4781 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4781 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4781 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1026499-c48d-41ae-b175-f101a3625790', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4782 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4782 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4782 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd76bff6-1af3-4c64-a26a-0986b8d50f24', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4783 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4783 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4783 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('233e8a86-e930-4eb5-8a9f-73842916bce8', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4784 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4784 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4784 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f3db5775-794e-4594-8a3f-b75faefe9c21', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4785 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4785 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4785 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4063afb8-2979-4a9e-a3d7-0aaa5a1395ee', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4786 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4786 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4786 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4566ec49-c3e0-4ce0-953c-e0a63373489d', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4787 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4787 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4787 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b513a4f-312c-4371-bf6f-ccf452089f28', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4788 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4788 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4788 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2466e41b-d2f9-430e-8f66-1c9f0c469ae3', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4789 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4789 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4789 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4af89b4-6e3f-41b3-a682-c372c86c5769', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4790 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4790 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4790 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3566fd9-85ff-49fc-9613-a6dea9cb8501', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4791 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4791 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4791 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e075b984-af72-410c-8b54-0b447fc20ad6', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4792 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4792 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4792 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5236d9a4-54b1-44b0-b8af-8900709ee959', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4793 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4793 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4793 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('088168e2-8b46-415c-ae1e-89f97015b16a', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4794 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4794 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4794 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('181076bf-9815-48a3-8e35-98747b7d2a76', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4795 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4795 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4795 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('05204877-00e6-41f8-9236-37823e901821', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4796 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4796 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4796 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('359c491b-b10f-4988-b6dd-cbc97ae7e978', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4797 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4797 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4797 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e3e5b7e9-835a-4ee5-88b6-34ceb4af1a27', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4798 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4798 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4798 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a36b2270-7c41-4a26-823c-0d39cf4dc4bc', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4799 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4799 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4799 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('563d64aa-a19a-4c2f-839f-2290f8372449', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4800 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4800 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4800 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
