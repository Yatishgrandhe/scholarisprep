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
WHERE id = 'c49214b5-ef16-4eff-8ed0-24a07031b01e';
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
WHERE id = '47ed21c0-e420-4229-91ef-add3dca25c4e';
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
WHERE id = 'f36a04f0-4225-4e12-884f-af3e6240d70a';
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
WHERE id = '3391c9d9-c771-433e-ab5b-ff8417722fdf';
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
WHERE id = 'd904b9ce-b545-4575-b048-0a8b6e6f9dc6';
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
WHERE id = '1d5efda9-6555-46b0-b538-b892585f5182';
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
WHERE id = '104f1b89-15e0-4521-8fca-ebcce6987e91';
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
WHERE id = 'ccd44996-b247-44e5-a66c-51acf38f6ea1';
COMMIT;
