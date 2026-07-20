BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":288,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a6","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '36d0af2a-a4b6-4bd4-8f3e-29a95ccbb846';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":294,"opensat_domain":"Standard English Conventions","opensat_raw_id":"397b667f","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.919Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5771cd06-779f-4197-b536-19ee70ce1ec6';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":299,"opensat_domain":"Standard English Conventions","opensat_raw_id":"2173a929","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '851ad4a7-9aef-4698-9de1-4d7803d986e2';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":295,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a5","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.919Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a5db9e29-6227-4bd2-9800-91a6b0784d6c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":305,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c7","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.919Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0d09edaa-25de-4854-8ac6-061acc140934';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":323,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_b6","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.919Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd73aaa7f-6292-4dcf-8a40-63cbc520c504';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":318,"opensat_domain":"Standard English Conventions","opensat_raw_id":"e12f48df","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.919Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6415b757-4b0a-45b1-bc73-901cea947c76';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":377,"opensat_domain":"Standard English Conventions","opensat_raw_id":"894f566c","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.919Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2bc19fc1-9f64-46b0-95d8-84e0514d9add';
COMMIT;
