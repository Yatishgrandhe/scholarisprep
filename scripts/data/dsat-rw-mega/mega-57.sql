BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5c0a996-f467-4588-b4a6-c11723b0e89b', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e35b494a-8060-488a-9613-85c12e327cd0', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7459fa95-2841-409c-a651-26df7e359dd9', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b7e6b98-b1af-495d-a37e-bdfa86f22571', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('22ef465c-f012-4574-9827-ba670c3b01bc', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('44bffc6f-f357-4601-bd4c-328137cd45fd', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd9c805d-9b4a-41f1-9523-16eaa10280f8', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e9b168c-d881-44a0-a207-0c1dc51c1d8e', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce9ded00-af16-4bb1-9a8e-a732280adbed', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18549a5a-4de2-485e-850c-9438d6e1a606', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6a4c4065-4ced-4a4c-9b51-25415c55f825', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a1a2b55-e983-4209-8143-6cf26d848215', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('540dcffd-823a-4e9f-9780-c5704ad66fdd', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de65341e-a2ca-43c4-ab9f-c385b3143a76', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca1b6165-04d5-4a57-8b1b-88dd2729a224', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('46757139-28eb-4a90-b3a3-700dd5d8feac', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3e6cb4ba-6163-459d-b5cb-a9bac119b03f', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('377669c1-2993-41d6-8f75-2f880f55f8ce', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30f90be0-e531-49fc-b051-64bb048420a3', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: Thus, implies consequence rather than contrast.
- C: Meanwhile, suggests addition or simultaneity where contrast is required.
- D: In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7909492c-9d73-47e1-a75b-b56ad0962521', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: Therefore, implies consequence rather than contrast.
- C: Similarly, suggests addition or simultaneity where contrast is required.
- D: For example, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
