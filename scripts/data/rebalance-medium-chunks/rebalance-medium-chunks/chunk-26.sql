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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3763a8bd-003d-499f-bcce-8a45857c6ced';
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
WHERE id = '214eea5b-d636-489c-9273-8bb7a3850839';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '93bbb568-e65b-41f5-a34b-7cf7641c4a74';
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
WHERE id = '87977449-2090-4336-87c1-7ea9be35dd69';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ccf26665-9e1f-4abc-9531-d9d173993744';
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
WHERE id = '71a23460-1a4f-4b78-bd4f-6db41c70ee76';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3282774a-0bbb-4e70-b8d9-74633d6fa289';
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
WHERE id = '618b4cff-3bf9-466f-8306-82d55500d965';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.345Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a6fc0f2e-6f75-493f-9f7a-f7522dc916cb';
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
WHERE id = 'f57e01c9-56f9-48f6-8180-692bba6e03c7';
COMMIT;
