BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f9e0ecb-c677-4e71-8165-4f5df6696265', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('7e555c93-21dd-4fa2-81d9-21326bf588b9', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('21fd821f-6665-4fba-85af-9bd170a62e63', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('04784fa1-3cf9-4fb0-9ac8-2040d902c7d5', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('2fc08499-114e-412c-b6d0-1dcc4b8ce802', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('64a48e72-3e14-4a2f-b043-72421860ae5d', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('fd8e4230-8575-4aee-9e2d-d7dfe2abbc86', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('900b3a54-d237-4be8-ac3d-a1dc558e4825', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('821b0e38-da1f-48ca-ba68-861323152598', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('6b51b692-2a9e-405c-844f-b124213ab159', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('2c01e026-6162-418d-8650-41fbff19e27f', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('6da6bcb8-4d2b-4805-8df9-247cea7a7fc6', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('7f8215e5-0bf9-4b44-a6d7-913ecc58cb7c', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('6bca2c6f-4835-4564-867e-20c3b102a39f', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('8cc1f689-4307-43f7-8be0-45d659c1170d', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
COMMIT;
