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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":752,"opensat_domain":"Standard English Conventions","opensat_raw_id":"245f9000","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f0ee12ff-7616-4218-a13d-bcf3baed2160';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":789,"opensat_domain":"Standard English Conventions","opensat_raw_id":"1a966f88","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7ee715de-b28f-48cd-8d3f-bd44efba8408';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":820,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a2","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e72db2f0-31dd-4def-8267-d8092df3ccb9';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":845,"opensat_domain":"Standard English Conventions","opensat_raw_id":"c8c2e146","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.920Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fd16ee5c-1122-46d4-9f43-d7aabd837f8c';
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
COMMIT;
