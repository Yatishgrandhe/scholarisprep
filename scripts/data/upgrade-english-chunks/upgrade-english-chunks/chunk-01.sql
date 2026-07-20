BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f545f95a-e694-4272-b71a-8e3e19a04214';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fe2c57c5-213f-40e6-b9cb-96e8eda4ecfd';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2a3d5c8e-d045-40f6-91ef-44f94e34719a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd27563c8-cebd-432e-8a80-68cf7efee495';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '1955ee8e-a220-4b90-b72b-1da32f8f7ccf';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2ed2f19d-1aac-4493-a9d1-339289b93e20';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"An introductory dependent clause needs a comma before the main clause. Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended; the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…ended: the…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'An introductory dependent clause needs a comma before the main clause. On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '9d2d9e33-a617-4603-bcd7-69d68bbaccf6';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Two independent clauses need a semicolon (or comma plus coordinating conjunction). Choice A inserts the boundary punctuation the sentence requires."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal, it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: inserting \"…proposal: it…\" creates a run-on, comma splice, or fragment relative to Standard English conventions."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Two independent clauses need a semicolon (or comma plus coordinating conjunction). On the Digital SAT, boundary questions reward recognizing where one clause ends and the next begins. Choice A fixes the sentence without altering meaning.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.876Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b451132a-2b0a-4e5e-b268-54059f3966da';
COMMIT;
