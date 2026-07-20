BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6a30e79a-0f7e-4d38-83fb-259571487049', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('b231b92f-7e08-4710-beba-b3e85b6dac6a', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('6f8a7f1b-32be-460a-9359-30df9fc444da', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('c5e6faaf-b626-4597-9d8b-27e100fcb75c', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('5209494d-8159-4e16-9268-409d9efb9634', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('0f361195-b321-46ad-93ca-82680ab8a9db', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('5a6be99d-d059-4ec2-af70-b1fe027c7713', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('b44a09f2-e077-442e-a640-30cf28c74834', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('ca041376-23c0-4971-a45f-9ebee19a99e0', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('45e832de-4468-44c5-beff-499547ee1764', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('6cdb4f3c-f40e-41ae-ba76-58944a932c14', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('36ceed80-7d30-466f-a325-dc21f93828da', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('b4286f8f-f471-4b77-940d-7a24abb6b327', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('4bcc7f7d-a1ca-413f-b0cc-0fcba18e6d15', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('f78c4d34-54e3-4d33-b7b0-dcb6abb453cd', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
