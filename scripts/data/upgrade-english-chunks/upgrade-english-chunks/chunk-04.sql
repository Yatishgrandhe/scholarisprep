BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '1b967bb6-75da-4f75-bcd4-fc8a5de78b21';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'dac26f9f-a115-4124-9966-462ccf189331';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a2ad3144-ad92-4bf1-a016-4935eb7faca1';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f7899edd-b472-4cda-aedb-78a87d524977';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '25dc6898-c10b-4409-821d-86c6ceb652d5';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '18633e20-5121-4428-a21d-17a48628759c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bc0d2c85-f91a-4ad6-8f61-b26e4999855a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'aaae638d-a4af-4180-b948-8df04f20bcac';
COMMIT;
