BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":103,"opensat_domain":"Standard English Conventions","opensat_raw_id":"152d892d","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.371Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.333Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '744bfe1a-077a-4597-8698-bab697ffa1c3';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":302,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a8","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.339Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '82ad299e-9532-4e5c-b343-0aed5bc16b9b';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":466,"opensat_domain":"Standard English Conventions","opensat_raw_id":"73a7d521","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3823f4a9-bf28-4232-81d3-367dd845f4fb';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":459,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e5","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ec4cbd7c-6b6a-4540-bd49-bedc551ca096';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":469,"opensat_domain":"Standard English Conventions","opensat_raw_id":"a967243c","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'accda0fa-5580-439d-ab9f-87181676b651';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":628,"opensat_domain":"Standard English Conventions","opensat_raw_id":"a23c9548","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e268e1fe-59ca-4538-bf42-e7b80d6db30d';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":688,"opensat_domain":"Standard English Conventions","opensat_raw_id":"947bc92f","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f1e18d78-3f5f-400d-9735-17e92d46443d';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":709,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c3","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.886Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5c69ef52-30a6-4ec2-adea-fe03b354c924';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":887,"opensat_domain":"Standard English Conventions","opensat_raw_id":"873634bc","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.887Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '88b463a4-3d2d-4428-a69f-5e001d8a8cba';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Boundary items require recognizing where one clause ends and the next begins. Choice A is correct: x. Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"BOU","domain_id":"conventions","opensat_index":934,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_a8","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.372Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.887Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"boundaries","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.340Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0eea1e69-b9c8-4bb9-a53b-9e80936cbcc5';
COMMIT;
