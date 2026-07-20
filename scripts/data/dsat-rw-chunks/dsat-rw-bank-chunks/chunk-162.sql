BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93fb23d2-fa66-419a-9c68-3ca1193c0358', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4741 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4741 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4741 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ceffd83-8421-41c2-bca9-324d6d3d0605', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4742 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4742 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4742 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90a389cf-8c21-4102-bb72-4c1eff63871e', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4743 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4743 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4743 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('567a1b9b-c57c-48df-9bb9-0de752d4a595', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4744 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4744 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4744 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('78d6af08-2bdb-4a67-a6ff-a7ce84a91050', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4745 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4745 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4745 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae33d72f-3c94-46e1-b208-e0b83dca9ee1', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4746 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4746 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4746 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99c7e1f4-6496-4867-b3c2-44e3c1f3e3ea', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4747 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4747 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4747 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb727fb6-9e6e-431c-9530-b95b352e9667', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4748 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4748 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4748 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3250cd11-3cc0-4f07-8971-327139c7221b', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4749 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4749 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4749 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb8e6ae8-dd5b-433a-b5ef-87b3da0f551f', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4750 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4750 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4750 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60edc56b-9ae3-4278-99b5-124577797f88', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4751 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4751 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4751 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a70d7d6-710a-4645-b810-8776ee216b3d', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4752 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4752 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4752 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9c8f254c-91a1-40a7-afc5-3e0de72e7498', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4753 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4753 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4753 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d919df0-6b59-4fc7-8cf0-9875d48c24e1', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4754 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4754 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4754 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b5b6a864-e099-4ae9-b19c-1f8bafea0128', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4755 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4755 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4755 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0221f218-1bcc-4fd0-bfbe-d3bdaa7bd1fe', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4756 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4756 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4756 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b4c1a1f-8a18-4a2a-b219-b2892fab60a2', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Turbine prototype 4757 employs tubercle-inspired blade geometry modeled on humpback whale fins
• Field tests documented twelve-percent efficiency gains at moderate wind speeds
• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons
• Overnight noise monitoring confirmed compliance with local residential ordinances
• Six-month field monitoring showed gains persisted across seasonal wind variability', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4757 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:efficiency}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4757 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d31bf06-16d9-4303-b5f7-037c7e771639', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Reef survey 4758 compared sites with depleted parrotfish biomass to no-take reserve sites
• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity
• Transects showed bare rock patches reappeared only when herbivore populations recovered
• Policy briefs recommend no-take zones sized to herbivore home ranges
• Authors caution that local reef geology still influences settlement success', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4758 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:intensity}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4758 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b08b615-be0e-4f51-9253-7a4f77fbab56', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Memory study 4759 matched study duration across sleep and wake cohorts
• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests
• Hippocampal imaging subsamples showed differential activation during retrieval
• Researchers plan replication with longer study materials
• Lab conditions may limit generalization to classroom learning', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4759 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:delayed}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4759 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62a38406-f1c3-48c4-b1cd-8b7fc637b4cf', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Literacy intervention 4760 mandated structured pair-discussion protocols during informational-text units
• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts
• Teachers observed students citing textual evidence during disagreements
• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim
• District coaches recorded higher engagement during observed lessons in discussion classrooms', 'passage', '[{"id":"A","text":"Structured pair discussion in intervention 4760 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.","is_correct":true,"explanation":"Correct (A). Synthesizes the notes to highlight the approach linked to the largest measured gain."},{"id":"B","text":"Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.","is_correct":false,"explanation":"Contradicted by the notes'' reported gains for discussion."},{"id":"D","text":"Reported score changes in the notes prove instructional methods never influence learning.","is_correct":false,"explanation":"Contradicted by documented score changes for both cohorts."}]'::jsonb, 'A', 'Step 1 — Review the notes
Focus on {{yellow:cohorts}} in the passage. The notes synthesis item asks you to review the notes before comparing choices.

Step 2 — Match the rhetorical goal
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select effective synthesis
Choice A is correct: Structured pair discussion in intervention 4760 outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations..

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by the notes'' reported gains for discussion.
- D: Contradicted by documented score changes for both cohorts.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
