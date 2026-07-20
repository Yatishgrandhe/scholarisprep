BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":835,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c8","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '129a9841-9924-4846-a697-8a3e16657305';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":860,"opensat_domain":"Standard English Conventions","opensat_raw_id":"81c61705","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2e464e2d-a41c-41e2-a4af-639f98cc29d5';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":894,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e4","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '528da5c5-5119-4aa0-ad9b-845f395701c3';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":876,"opensat_domain":"Standard English Conventions","opensat_raw_id":"e6666126","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bc03056a-d32a-4c96-bb06-a6f910e0b21f';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":877,"opensat_domain":"Standard English Conventions","opensat_raw_id":"13865c71","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ef2a1325-5f31-4ed4-905d-b0a62b24b57d';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":910,"opensat_domain":"Standard English Conventions","opensat_raw_id":"54b7c3c3","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c35fbfa2-7f62-477b-ba4d-149ad261ccc6';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":922,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a8","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ea1e5545-e847-4d9c-8dfd-3cab85ed73b8';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":903,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e1","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '509bb1b0-beb2-4988-a680-8dfa25c42830';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":921,"opensat_domain":"Standard English Conventions","opensat_raw_id":"9876c53a","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '24283a2b-77ae-4824-86fb-e46045f53c06';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":978,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c5","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e9e8232d-b9ce-4f5b-b242-4ee8868e01e5';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":995,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c1","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b7398fa5-4c37-4eca-b93d-eff23f02c1e9';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1018,"opensat_domain":"Standard English Conventions","opensat_raw_id":"f84f5d1c","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '07f69fd7-6828-43a8-abef-a8ccb65c85af';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1037,"opensat_domain":"Standard English Conventions","opensat_raw_id":"9d921b1f","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f4c36f17-a7e5-4621-b66d-c38d9e3e4dfd';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1074,"opensat_domain":"Standard English Conventions","opensat_raw_id":"2a67536d","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0a96ec42-0a3f-46ef-a900-a1bf7954578c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1063,"opensat_domain":"Standard English Conventions","opensat_raw_id":"628e561d","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a9470f97-d17f-4f89-b3f3-7d8107853c1f';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1085,"opensat_domain":"Standard English Conventions","opensat_raw_id":"7a45c12b","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e653c3ec-2609-42a8-befd-02fa70dea409';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1116,"opensat_domain":"Standard English Conventions","opensat_raw_id":"7f7c3993","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b9e8476c-6195-4f1e-9bbc-154298941bd8';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1129,"opensat_domain":"Standard English Conventions","opensat_raw_id":"f765438a","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b61bb63e-5c3d-41b8-ae51-9e95195b8125';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1132,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c9","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ab845cec-cb63-42ba-a0b2-abab70dea816';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1183,"opensat_domain":"Standard English Conventions","opensat_raw_id":"119b489c","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '748859b5-34ae-4176-93a4-b12cb124ff9e';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1201,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e8","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '45968ff4-5c76-4bcc-bb20-01651871eea8';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1211,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a2","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ab480310-306d-4fd6-b0fd-b27c295bd59b';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1204,"opensat_domain":"Standard English Conventions","opensat_raw_id":"8a34e70f","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '166abfc8-2585-467c-ab4c-f314788101a0';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1208,"opensat_domain":"Standard English Conventions","opensat_raw_id":"92ef1d2e","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '55e647b3-a20a-472b-94b0-cad1d1270863';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1231,"opensat_domain":"Standard English Conventions","opensat_raw_id":"85939da5","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '32e78709-fe5b-4915-ad72-ded2fc5be5db';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1226,"opensat_domain":"Standard English Conventions","opensat_raw_id":"a73a908a","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd8e28441-8801-45f1-ba87-9b0c23de3817';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1250,"opensat_domain":"Standard English Conventions","opensat_raw_id":"b89af982","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '87d12a21-b24c-4c75-aaa0-c6c77b51e312';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1269,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a3","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fa5914b5-8f64-452b-af53-0515398599b5';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1281,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e1","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a27928ac-6155-4771-ab95-b84f4c0d18c9';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1331,"opensat_domain":"Standard English Conventions","opensat_raw_id":"9481235b","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03d25532-7fa1-4e86-b4a3-d4cc238ae0f1';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1379,"opensat_domain":"Standard English Conventions","opensat_raw_id":"547f912a","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2cd6bff6-7bde-4987-a1f5-77002049ca87';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1392,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c1","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '79a61056-ad34-4f1b-a78e-da9930cff011';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1409,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e2","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '57a678d8-b648-40e3-9c88-0fbafe1f0222';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1422,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e2","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9f31b476-dd26-49e7-8b93-1e4b917821c7';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1430,"opensat_domain":"Standard English Conventions","opensat_raw_id":"b41b7924","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2d6ff309-0592-490f-9789-f6de2fb786a7';
COMMIT;
