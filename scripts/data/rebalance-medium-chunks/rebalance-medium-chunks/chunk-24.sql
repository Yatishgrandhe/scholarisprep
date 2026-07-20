BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1250,"opensat_domain":"Standard English Conventions","opensat_raw_id":"b89af982","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '87d12a21-b24c-4c75-aaa0-c6c77b51e312';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1281,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e1","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a27928ac-6155-4771-ab95-b84f4c0d18c9';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1331,"opensat_domain":"Standard English Conventions","opensat_raw_id":"9481235b","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '03d25532-7fa1-4e86-b4a3-d4cc238ae0f1';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1392,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c1","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '79a61056-ad34-4f1b-a78e-da9930cff011';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1379,"opensat_domain":"Standard English Conventions","opensat_raw_id":"547f912a","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2cd6bff6-7bde-4987-a1f5-77002049ca87';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1409,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e2","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '57a678d8-b648-40e3-9c88-0fbafe1f0222';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1422,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e2","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '9f31b476-dd26-49e7-8b93-1e4b917821c7';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1435,"opensat_domain":"Standard English Conventions","opensat_raw_id":"37148a9f","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a7691f26-dc47-40fc-a3b9-95d00072ce40';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":1430,"opensat_domain":"Standard English Conventions","opensat_raw_id":"b41b7924","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.375Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.921Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2d6ff309-0592-490f-9789-f6de2fb786a7';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e30ee20a-a09c-4881-b684-c13dfd158d3f';
COMMIT;
