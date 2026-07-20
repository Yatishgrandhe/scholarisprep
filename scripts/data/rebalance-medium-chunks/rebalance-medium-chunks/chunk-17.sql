BEGIN;
UPDATE public.questions SET
  stimulus_text = 'Text 1
Economist Dr. Helena Marsh argued in 2017 that automation would uniformly reduce manufacturing employment within a decade, citing early robotics deployments at automotive plants. Her widely cited forecast treated every factory task as equally susceptible to machine substitution and predicted that retraining programs could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim, and several legislatures debated emergency wage subsidies before longitudinal plant-level data had accumulated. Marsh acknowledged uncertainty in footnotes but insisted that historical parallels with earlier mechanization waves supported a rapid net job loss scenario rather than a gradual occupational reshuffling.

Text 2
A 2023 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining automated cells and logistics staff managing reconfigured supply lines. Productivity gains appeared gradually over four years, and total headcount at studied plants remained within five percent of pre-automation levels while output per shift rose. The report emphasized that firms paired technology purchases with apprenticeship tracks, contradicting narratives of instantaneous workforce collapse. Surveyed managers ranked task redesign and safety retraining as more decisive than the robots themselves for sustaining employment quality.',
  question_text = 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 advances a narrow claim; Text 2 documents broader benefits or gradual effects that complicate Text 1. The stimulus anchors the correct choice in language such as "Text 1 Economist Dr. Helena Marsh argued in 2017 that automation would uniformly reduce manufacturin…". Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.379Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.878Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"cross_text_response","rw_format":"text_1_text_2","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2b5e805c-aa53-408c-84d1-0a66dd46cb5c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":32,"opensat_domain":"Standard English Conventions","opensat_raw_id":"b307477f","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd75fc305-760c-429b-a1f2-52060369b04c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":65,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e7","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2a737757-e280-4005-bed8-c79ad691670a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":53,"opensat_domain":"Standard English Conventions","opensat_raw_id":"f94c0c33","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '54c4d70a-3c85-4bce-a5b1-3f1116758fd8';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":74,"opensat_domain":"Standard English Conventions","opensat_raw_id":"a6b2f89c","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fc797893-1db0-4b1f-aad8-4ed7af410d3b';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":100,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c1","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '741d2a72-b35a-4a0d-86fa-19faca3b1c65';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":142,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e1","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '12d2d6e5-ef86-4004-9582-2173e16c7b1a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":193,"opensat_domain":"Standard English Conventions","opensat_raw_id":"e4962f22","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b971f7d5-e6c8-4e01-a0b0-c465450e5764';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Agreement error: requires \"was\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\"."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense: \"have been\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "was" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":182,"opensat_domain":"Standard English Conventions","opensat_raw_id":"2835734f","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '535179d8-e5b5-49bb-a3ab-86209533091c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Agreement error: requires \"suggests\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\"."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense: \"have suggested\"."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires "suggests" for agreement. Choice B is correct: . Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.',
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":204,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e5","hard_content_v2":false,"prior_difficulty":"medium","english_content_v2":true,"opensat_difficulty":"Hard","hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","hard_content_upgrade_method":"generate-hard-english.mjs","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","rw_subtype":"form_structure_sense","english_medium_rebalance":"english_medium_rebalance_v1","english_medium_rebalanced_at":"2026-06-12T20:57:24.344Z","rebalance_method":"rebalance-english-medium.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '068ac3f4-bcc3-4bab-a5f9-4d8ab8ef77ec';
COMMIT;
