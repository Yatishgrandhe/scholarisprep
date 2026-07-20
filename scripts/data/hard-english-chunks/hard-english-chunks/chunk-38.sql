BEGIN;
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
WHERE id = '45892cf5-d3f9-43dd-80b2-09b5601435f4';
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
WHERE id = 'b906dc30-9636-424b-aac2-d66fa4440614';
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
WHERE id = 'b3299d0e-70fc-4e5a-b314-a32702a3ffe9';
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
WHERE id = 'a61572c5-8342-49c4-a725-69b92381f469';
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
WHERE id = '089bdf71-7ac8-454e-911a-c9074e0d1038';
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
WHERE id = 'bc8b90ff-dc9c-4e62-8894-0c3a0e575f7d';
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
WHERE id = '7ec235d5-1663-40a9-bd4d-d864bb8646bc';
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
WHERE id = 'b9cfe77e-46e8-4066-a0c5-93d981491639';
COMMIT;
