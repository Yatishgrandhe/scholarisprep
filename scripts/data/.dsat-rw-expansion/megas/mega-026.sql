BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a580f77-2c06-47e5-bc81-613ea816d263', 'Which choice best describes the overall structure of the passage?', 'A longitudinal analysis of dataset 3965 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b9ba44dd-5a8d-421c-8c2c-fa6320e4c1b6', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 3966 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:comparing}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2c5ddcd6-904e-4dd2-9bde-d2dac3833155', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 3967 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e45b5ec2-cca8-4f50-84d2-28269366f801', 'Which choice best describes the overall structure of the passage?', 'A longitudinal analysis of dataset 3968 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dfcde23b-5b3b-46c2-9618-01e8cd94c949', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 3969 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:comparing}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26133cb1-8d17-4477-86cb-79998b3e8cb6', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 3970 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0759c473-60d2-4231-ad3d-6c43adc72737', 'Which choice best describes the overall structure of the passage?', 'A longitudinal analysis of dataset 3971 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('772d77ed-214e-4294-82aa-7a06b8bf5629', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 3972 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:comparing}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('74c2faa4-3e35-4e5a-b401-dbf9e59786c6', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 3973 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('816855e1-835c-4c43-a182-de720227daaf', 'Which choice best describes the overall structure of the passage?', 'A longitudinal analysis of dataset 3974 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e69f5fce-d655-4c20-8ffe-eed76be3c1e5', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 3975 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:comparing}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8f0eefa9-c882-4ee2-aab2-75cfb6332ee0', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 3976 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('872be874-9534-4fa7-a844-480a6c1f3ecc', 'Which choice best describes the overall structure of the passage?', 'A longitudinal analysis of dataset 3977 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b320ac7b-7f85-4dba-b197-9c1b232786d3', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 3978 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:comparing}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6c545c1-e44e-4836-8cf3-a030a26d7d48', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 3979 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
