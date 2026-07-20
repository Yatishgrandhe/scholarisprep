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
COMMIT;
