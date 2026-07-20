BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b37fbf8-50c6-4c46-8ce8-8f3ee1c3d363', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('d06d7415-a9b7-4b42-b997-c690c9449e99', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('1304362d-0d01-46b7-9f0a-1e6d88d3b90e', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('fac88096-98e0-4961-b5af-a69f80abd66e', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('cf8d300d-5398-4629-9a47-b22ea4d44fe4', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('2185915d-5007-452c-9d35-74f19692d85b', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between failed and successful trials."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies consequence rather than contrast."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('e13d523c-bc18-4500-8a58-85224a219eba', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('ef4bc5ae-5be8-4774-a0b6-0465e99a6e21', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":true,"explanation":"Correct (A). Qualifying the sweeping claim made in the prior sentence, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Reinforcing the cumulative case the passage has assembled,","is_correct":false,"explanation":"Reinforcing the cumulative case the passage has assembled, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Grounding the general statement in a specific instance,","is_correct":false,"explanation":"Grounding the general statement in a specific instance, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Undermining the neat separation outlined above,","is_correct":false,"explanation":"Undermining the neat separation outlined above, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Qualifying the sweeping claim made in the prior sentence,.

Distractor analysis:
- B: Reinforcing the cumulative case the passage has assembled, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Grounding the general statement in a specific instance, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Undermining the neat separation outlined above, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52b74a42-aa4e-4a65-b490-bcc05293a027', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Blurring the sharp contrast the passage has drawn,","is_correct":true,"explanation":"Correct (A). Blurring the sharp contrast the passage has drawn, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Adding a parallel example that deepens the same point,","is_correct":false,"explanation":"Adding a parallel example that deepens the same point, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Complicating the binary the author has established,","is_correct":false,"explanation":"Complicating the binary the author has established, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Drawing the logical consequence from the evidence just presented,","is_correct":false,"explanation":"Drawing the logical consequence from the evidence just presented, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Blurring the sharp contrast the passage has drawn,.

Distractor analysis:
- B: Adding a parallel example that deepens the same point, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Complicating the binary the author has established, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Drawing the logical consequence from the evidence just presented, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba94ab4e-68eb-4941-ad68-a6a949f22a05', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Complicating the binary the author has established,","is_correct":true,"explanation":"Correct (A). Complicating the binary the author has established, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Illustrating the abstract claim with a concrete case,","is_correct":false,"explanation":"Illustrating the abstract claim with a concrete case, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Undermining the neat separation outlined above,","is_correct":false,"explanation":"Undermining the neat separation outlined above, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Extending the causal chain the author has begun to trace,","is_correct":false,"explanation":"Extending the causal chain the author has begun to trace, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Complicating the binary the author has established,.

Distractor analysis:
- B: Illustrating the abstract claim with a concrete case, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Undermining the neat separation outlined above, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Extending the causal chain the author has begun to trace, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0ee404cc-9eb0-4f92-a86c-a9cf6719f44f', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Undermining the neat separation outlined above,","is_correct":true,"explanation":"Correct (A). Undermining the neat separation outlined above, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Grounding the general statement in a specific instance,","is_correct":false,"explanation":"Grounding the general statement in a specific instance, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":false,"explanation":"Qualifying the sweeping claim made in the prior sentence, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Building directly on the mechanism described above,","is_correct":false,"explanation":"Building directly on the mechanism described above, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Undermining the neat separation outlined above,.

Distractor analysis:
- B: Grounding the general statement in a specific instance, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Qualifying the sweeping claim made in the prior sentence, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Building directly on the mechanism described above, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b9986f0c-e04a-4819-a409-49ad968fd2e7', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":true,"explanation":"Correct (A). Qualifying the sweeping claim made in the prior sentence, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Blurring the sharp contrast the passage has drawn,","is_correct":false,"explanation":"Blurring the sharp contrast the passage has drawn, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Drawing the logical consequence from the evidence just presented,","is_correct":false,"explanation":"Drawing the logical consequence from the evidence just presented, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Extending the author''s line of reasoning further,","is_correct":false,"explanation":"Extending the author''s line of reasoning further, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Qualifying the sweeping claim made in the prior sentence,.

Distractor analysis:
- B: Blurring the sharp contrast the passage has drawn, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Drawing the logical consequence from the evidence just presented, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Extending the author''s line of reasoning further, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a75d8856-0e1f-4ebc-ab51-a4b6f9e44037', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Blurring the sharp contrast the passage has drawn,","is_correct":true,"explanation":"Correct (A). Blurring the sharp contrast the passage has drawn, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Undermining the neat separation outlined above,","is_correct":false,"explanation":"Undermining the neat separation outlined above, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Extending the causal chain the author has begun to trace,","is_correct":false,"explanation":"Extending the causal chain the author has begun to trace, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Reinforcing the cumulative case the passage has assembled,","is_correct":false,"explanation":"Reinforcing the cumulative case the passage has assembled, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Blurring the sharp contrast the passage has drawn,.

Distractor analysis:
- B: Undermining the neat separation outlined above, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Extending the causal chain the author has begun to trace, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Reinforcing the cumulative case the passage has assembled, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('380f0569-72f1-4f9b-a40d-2d98360055cd', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Complicating the binary the author has established,","is_correct":true,"explanation":"Correct (A). Complicating the binary the author has established, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":false,"explanation":"Qualifying the sweeping claim made in the prior sentence, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Building directly on the mechanism described above,","is_correct":false,"explanation":"Building directly on the mechanism described above, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Adding a parallel example that deepens the same point,","is_correct":false,"explanation":"Adding a parallel example that deepens the same point, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Complicating the binary the author has established,.

Distractor analysis:
- B: Qualifying the sweeping claim made in the prior sentence, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Building directly on the mechanism described above, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Adding a parallel example that deepens the same point, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7e5748b3-d956-4342-ad5e-b280d8968f14', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Undermining the neat separation outlined above,","is_correct":true,"explanation":"Correct (A). Undermining the neat separation outlined above, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Drawing the logical consequence from the evidence just presented,","is_correct":false,"explanation":"Drawing the logical consequence from the evidence just presented, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Extending the author''s line of reasoning further,","is_correct":false,"explanation":"Extending the author''s line of reasoning further, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Illustrating the abstract claim with a concrete case,","is_correct":false,"explanation":"Illustrating the abstract claim with a concrete case, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Undermining the neat separation outlined above,.

Distractor analysis:
- B: Drawing the logical consequence from the evidence just presented, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: Extending the author''s line of reasoning further, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: Illustrating the abstract claim with a concrete case, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","rw_format":"transition_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
