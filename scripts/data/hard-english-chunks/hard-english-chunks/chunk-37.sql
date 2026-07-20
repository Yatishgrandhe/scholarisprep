BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The manuscript underwent three rounds of revision each round addressed structural weaknesses identified by external reviewers ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…revision; each…","is_correct":true,"explanation":"Two independent clauses joined without a coordinating conjunction require a semicolon. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…revision, each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision, each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…revision each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…revision: each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision: each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses joined without a coordinating conjunction require a semicolon. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '23571e13-1e43-46fc-ae8e-7e4c162880bb';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the comprehensive proposal it was thorough meticulously documented and addressed every stakeholder concern ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses require a semicolon (or comma plus coordinating conjunction) between them. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses require a semicolon (or comma plus coordinating conjunction) between them. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '712a85c5-ced0-4bf5-a343-56e5cbd5aaba';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

Although the keynote lecture concluded without interruption the audience members queued for follow-up questions that extended well past the scheduled break ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…interruption, the…","is_correct":true,"explanation":"An introductory dependent clause requires a comma before the main clause begins. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…interruption the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…interruption the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…interruption; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…interruption; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…interruption: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…interruption: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause requires a comma before the main clause begins. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '68146a2a-abde-47f4-bb88-76710017df3a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The manuscript underwent three rounds of revision each round addressed structural weaknesses identified by external reviewers ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…revision; each…","is_correct":true,"explanation":"Two independent clauses joined without a coordinating conjunction require a semicolon. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…revision, each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision, each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…revision each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…revision: each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision: each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses joined without a coordinating conjunction require a semicolon. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6c3abbb7-91d9-4b31-858a-33ccdd237772';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the comprehensive proposal it was thorough meticulously documented and addressed every stakeholder concern ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses require a semicolon (or comma plus coordinating conjunction) between them. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses require a semicolon (or comma plus coordinating conjunction) between them. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd2c8cb27-b480-49ee-a9dc-86d34053a6ce';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

Although the keynote lecture concluded without interruption the audience members queued for follow-up questions that extended well past the scheduled break ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…interruption, the…","is_correct":true,"explanation":"An introductory dependent clause requires a comma before the main clause begins. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…interruption the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…interruption the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…interruption; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…interruption; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…interruption: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…interruption: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause requires a comma before the main clause begins. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd6ef20e3-0a43-4b85-974a-25b0afc71c61';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The manuscript underwent three rounds of revision each round addressed structural weaknesses identified by external reviewers ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…revision; each…","is_correct":true,"explanation":"Two independent clauses joined without a coordinating conjunction require a semicolon. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…revision, each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision, each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…revision each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…revision: each…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…revision: each…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses joined without a coordinating conjunction require a semicolon. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5aae958e-835c-42fc-a05d-4026ca2e9186';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the comprehensive proposal it was thorough meticulously documented and addressed every stakeholder concern ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses require a semicolon (or comma plus coordinating conjunction) between them. Choice A inserts the boundary punctuation the sentence requires without creating a run-on or comma splice."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions tested on hard items."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses require a semicolon (or comma plus coordinating conjunction) between them. Hard boundary questions reward recognizing where one clause ends and the next begins. Choice A is correct because it aligns with the textual logic: x. Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.877Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.378Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4925d706-6244-4778-bd34-b512b758f73e';
COMMIT;
