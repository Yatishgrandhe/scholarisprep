BEGIN;
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
WHERE id = 'f7b7555b-a94f-4f86-a814-07a5bd02af13';
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
WHERE id = '35de1b70-135c-4954-b60d-37d2884f05e9';
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
WHERE id = '5633757b-aa15-4971-a872-09141b6bed6e';
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
WHERE id = '42d0a13f-e94e-43f7-850a-88854d1adaac';
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
WHERE id = 'c06ca9d7-714d-4ab9-b248-9b6c7e9b4d86';
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
WHERE id = 'ff637e8d-4cf4-4ef6-aff1-9e95af9e7d12';
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
WHERE id = '712a85c5-ced0-4bf5-a343-56e5cbd5aaba';
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
WHERE id = '23571e13-1e43-46fc-ae8e-7e4c162880bb';
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
WHERE id = '4e621e94-7e27-4601-a508-feaf86e09d7d';
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
WHERE id = '6c3abbb7-91d9-4b31-858a-33ccdd237772';
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
WHERE id = 'd2c8cb27-b480-49ee-a9dc-86d34053a6ce';
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
WHERE id = '68146a2a-abde-47f4-bb88-76710017df3a';
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
WHERE id = 'bd0eacd1-4dfa-438c-9706-fcd9457cec58';
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
WHERE id = 'b9cfe77e-46e8-4066-a0c5-93d981491639';
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
WHERE id = '7ec235d5-1663-40a9-bd4d-d864bb8646bc';
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
WHERE id = 'bc8b90ff-dc9c-4e62-8894-0c3a0e575f7d';
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
WHERE id = 'a61572c5-8342-49c4-a725-69b92381f469';
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
WHERE id = 'b3299d0e-70fc-4e5a-b314-a32702a3ffe9';
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
WHERE id = 'b906dc30-9636-424b-aac2-d66fa4440614';
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
WHERE id = '4925d706-6244-4778-bd34-b512b758f73e';
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
WHERE id = 'dcae577b-b338-4473-9046-a121fd3c15f0';
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
WHERE id = '5aae958e-835c-42fc-a05d-4026ca2e9186';
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
WHERE id = 'e586400e-8034-4b49-b669-84f00edadb0f';
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
WHERE id = '089bdf71-7ac8-454e-911a-c9074e0d1038';
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
WHERE id = '06ac7207-77a4-4c83-8f73-a9009cd1670b';
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
WHERE id = '66f829d6-8c8d-43ba-b885-5d2ddbce645d';
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
WHERE id = '45892cf5-d3f9-43dd-80b2-09b5601435f4';
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
WHERE id = 'b51296d2-953f-4562-8f04-734db32c990d';
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
WHERE id = 'd6ef20e3-0a43-4b85-974a-25b0afc71c61';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 2 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 2 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'According to the passage, which statement is best supported by the text?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The passage links coral larvae settle on bare rock when grazing is sustained to measurable reef recovery after disturbance.","is_correct":true,"explanation":"The passage explicitly discusses coral larvae settle on bare rock when grazing is sustained as evidence tied to reef health. This answer restates that supported relationship without overclaiming."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"The passage describes recovery mechanisms; it does not claim reefs are permanently lost once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"The passage states larvae settle on bare rock when grazing permits it, contradicting this absolute claim."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The passage explains how grazing, algae growth, and coral settlement interact to shape reef recovery. The author supports this main idea with seasonal tracking data and comparisons across sites with different parrotfish abundance. Choice A synthesizes that evidence without adding unsupported claims. The wrong answers either overstate permanence, mischaracterize the author''s stance toward science, or deny details the passage affirms.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.877Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ed648c93-4fe3-4833-8ba4-940f5c526da2';
COMMIT;
