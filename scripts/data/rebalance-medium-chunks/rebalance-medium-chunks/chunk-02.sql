BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '45892cf5-d3f9-43dd-80b2-09b5601435f4';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd6ef20e3-0a43-4b85-974a-25b0afc71c61';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '66f829d6-8c8d-43ba-b885-5d2ddbce645d';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '06ac7207-77a4-4c83-8f73-a9009cd1670b';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e586400e-8034-4b49-b669-84f00edadb0f';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b906dc30-9636-424b-aac2-d66fa4440614';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a61572c5-8342-49c4-a725-69b92381f469';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bc8b90ff-dc9c-4e62-8894-0c3a0e575f7d';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '7ec235d5-1663-40a9-bd4d-d864bb8646bc';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b9cfe77e-46e8-4066-a0c5-93d981491639';
COMMIT;
