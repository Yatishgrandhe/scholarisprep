BEGIN;
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '241d856a-5708-4f96-a357-8a03ea92e98f';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3a729f46-a44a-450c-b3b6-410adff86cd4';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '6665bc73-3002-4260-ae12-1e3e8279b6dd';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'dfd41d7f-3cff-4a85-9d29-6ba2b43eaf34';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '6108d96a-c0c2-449a-8d85-0e6b123284b7';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8aa82d6d-6227-461b-ac2a-0e99c6a9da19';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'da67b700-0391-4428-ae2d-db2f5986827c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e30ee20a-a09c-4881-b684-c13dfd158d3f';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'c84b993e-2030-4907-99be-121d17542a99';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '38484783-e581-4159-b280-dd5942aebf71';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '76f85150-a5d9-4470-a2e5-acc4c9f78e5a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4011d346-090d-4145-9440-787b2f7a9d5e';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3763a8bd-003d-499f-bcce-8a45857c6ced';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '71a23460-1a4f-4b78-bd4f-6db41c70ee76';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3282774a-0bbb-4e70-b8d9-74633d6fa289';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ccf26665-9e1f-4abc-9531-d9d173993744';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '87977449-2090-4336-87c1-7ea9be35dd69';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ab2e25a3-89d2-49bd-9bfe-bdb3fc2eccd4';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '93bbb568-e65b-41f5-a34b-7cf7641c4a74';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '352bb5bf-82e7-4ceb-bcd9-0ae41c3286b1';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0536c545-cbd0-4de9-984d-95957fff248a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '80819832-6435-44b6-974d-1f36ba3d4f13';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a6fc0f2e-6f75-493f-9f7a-f7522dc916cb';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '618b4cff-3bf9-466f-8306-82d55500d965';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '214eea5b-d636-489c-9273-8bb7a3850839';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the coaches nor the athlete were ready ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"was\", not \"were\"."},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the governing subject in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the singular subject controlling the verb."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f57e01c9-56f9-48f6-8180-692bba6e03c7';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The data from the experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the nearer subject requires \"suggests\", not \"suggest\"."},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the governing subject in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the singular subject controlling the verb."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B satisfies Standard English conventions while the distractors mismatch number or tense.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '6e103a2c-704f-4d86-b255-62c42879ef60';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 2 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 2 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd4d8d58d-a813-47e5-bf55-a9310322c463';
UPDATE public.questions SET
  stimulus_text = 'In her essay on urban soundscapes, writer 3 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e9bf7c6b-67f4-4fcb-a75d-3e4c675b5ef5';
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 4 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '58790cef-1e3f-440c-aa9d-b64a6f4ecc3a';
UPDATE public.questions SET
  stimulus_text = 'Archaeologists at site 5 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b65b3001-c6a4-45dd-a3a0-beada5030ce8';
UPDATE public.questions SET
  stimulus_text = 'Psychologists testing memory task 6 reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0a4cc4a1-dd3d-41cf-b80f-d2f0a48eb28d';
UPDATE public.questions SET
  stimulus_text = 'Engineers prototyping turbine 7 demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins. Standard flat blades stall when air flow separates early, wasting kinetic energy that never reaches the generator. The prototype''s tubercle-like ridges delay separation, maintaining lift across a wider range of wind speeds common in residential installations. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits. The engineers note that biomimicry here is not decorative; it directly addresses a performance bottleneck that limits small-scale renewable adoption. The passage moves from biological observation to mechanical testing to a practical deployment implication.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '37e2819b-cc1c-4936-b6de-72bb00e29d4f';
UPDATE public.questions SET
  stimulus_text = 'Educators reviewing literacy program 8 concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone. Teachers in the pair-discussion classrooms reported that students referenced textual evidence when disagreeing, a behavior rarely observed during silent worksheet completion. Standardized pre- and post-tests showed a twelve-point average gain for the discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit. The educators emphasize that discussion prompts were structured—not unstructured chat—and required each partner to cite a line from the text. They argue that collaborative talk externalizes comprehension strategies that weaker readers otherwise keep invisible. The passage supports structured peer dialogue as an instructional lever rather than a replacement for independent reading.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b118bba4-f767-432b-98f0-54aeebd296cd';
UPDATE public.questions SET
  stimulus_text = 'Marine biologists studying reef ecosystem 9 found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season, turning complex habitat into a uniform green mat. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure. At those sites, coral recruitment—the process by which free-floating larvae attach to hard substrate—dropped sharply even when water temperature and salinity remained stable. The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events. Their follow-up surveys showed that small patches of bare rock reappeared only where grazing intensity returned to historical norms.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd434e22a-f28f-4de0-8336-817744251574';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 10 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 10 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f6b57ab8-5d01-4d88-a517-e290c359fedb';
UPDATE public.questions SET
  stimulus_text = 'In her essay on urban soundscapes, writer 11 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f7f691a0-82e4-4be2-bab7-61c4d322a8e0';
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 12 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bf191ce8-1d40-4eae-ab01-eedc99d5df93';
UPDATE public.questions SET
  stimulus_text = 'Archaeologists at site 13 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2e0643fa-0ee2-44b3-b180-ca097be52897';
UPDATE public.questions SET
  stimulus_text = 'Psychologists testing memory task 14 reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fde93a82-1bca-48f6-9560-bfadde74be11';
UPDATE public.questions SET
  stimulus_text = 'Engineers prototyping turbine 15 demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins. Standard flat blades stall when air flow separates early, wasting kinetic energy that never reaches the generator. The prototype''s tubercle-like ridges delay separation, maintaining lift across a wider range of wind speeds common in residential installations. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits. The engineers note that biomimicry here is not decorative; it directly addresses a performance bottleneck that limits small-scale renewable adoption. The passage moves from biological observation to mechanical testing to a practical deployment implication.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '36ee1ba0-5f1a-42b5-9780-18517d341f2a';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 2 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 2 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd6736b8d-6af4-4218-9a1b-6ca9e17b0003';
UPDATE public.questions SET
  stimulus_text = 'In her essay on urban soundscapes, writer 3 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3768e75f-78e3-4310-99c0-eac8abe138c5';
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 4 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '58aa0747-d625-4c49-b96d-45502acb8810';
UPDATE public.questions SET
  stimulus_text = 'Archaeologists at site 5 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '7cc7e263-56f0-4195-abac-5b285fb64468';
UPDATE public.questions SET
  stimulus_text = 'Psychologists testing memory task 6 reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2134195e-1f4b-4924-b361-3ae85fda2320';
UPDATE public.questions SET
  stimulus_text = 'Engineers prototyping turbine 7 demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins. Standard flat blades stall when air flow separates early, wasting kinetic energy that never reaches the generator. The prototype''s tubercle-like ridges delay separation, maintaining lift across a wider range of wind speeds common in residential installations. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits. The engineers note that biomimicry here is not decorative; it directly addresses a performance bottleneck that limits small-scale renewable adoption. The passage moves from biological observation to mechanical testing to a practical deployment implication.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '92d2d879-d3d1-4c0f-8263-84f9a1016d49';
UPDATE public.questions SET
  stimulus_text = 'Educators reviewing literacy program 8 concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone. Teachers in the pair-discussion classrooms reported that students referenced textual evidence when disagreeing, a behavior rarely observed during silent worksheet completion. Standardized pre- and post-tests showed a twelve-point average gain for the discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit. The educators emphasize that discussion prompts were structured—not unstructured chat—and required each partner to cite a line from the text. They argue that collaborative talk externalizes comprehension strategies that weaker readers otherwise keep invisible. The passage supports structured peer dialogue as an instructional lever rather than a replacement for independent reading.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '49ec057b-a1e3-4525-beea-5d553d0bc4aa';
UPDATE public.questions SET
  stimulus_text = 'Marine biologists studying reef ecosystem 9 found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season, turning complex habitat into a uniform green mat. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure. At those sites, coral recruitment—the process by which free-floating larvae attach to hard substrate—dropped sharply even when water temperature and salinity remained stable. The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events. Their follow-up surveys showed that small patches of bare rock reappeared only where grazing intensity returned to historical norms.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '826f7c79-98b1-404d-8c99-b991115e56b0';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 10 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 10 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '15a2f9e3-1668-4f11-a1de-7e4bd02e1a14';
UPDATE public.questions SET
  stimulus_text = 'In her essay on urban soundscapes, writer 11 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8ef11a7e-689e-453c-85e2-292b7a298a8f';
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 12 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'cb2b516c-f95d-4ae5-aab1-811aec5eab0d';
UPDATE public.questions SET
  stimulus_text = 'Archaeologists at site 13 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e5979807-bd69-4aa9-be95-bb9469c7ed30';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 2 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 2 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f7dc1679-7dd7-4b96-b7cb-1a46ec1e828f';
UPDATE public.questions SET
  stimulus_text = 'In her essay on urban soundscapes, writer 3 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '17e208dd-c43d-41c2-82c4-d4800aa34eaa';
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 4 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ab89d32f-abfe-4756-8fa5-4cbb8637d87f';
UPDATE public.questions SET
  stimulus_text = 'Archaeologists at site 5 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '91124859-7c11-40ee-8d47-9fc8ca813d0f';
UPDATE public.questions SET
  stimulus_text = 'Psychologists testing memory task 6 reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '7d887127-a19b-4f6d-a9e6-35054acf6303';
UPDATE public.questions SET
  stimulus_text = 'Engineers prototyping turbine 7 demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins. Standard flat blades stall when air flow separates early, wasting kinetic energy that never reaches the generator. The prototype''s tubercle-like ridges delay separation, maintaining lift across a wider range of wind speeds common in residential installations. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits. The engineers note that biomimicry here is not decorative; it directly addresses a performance bottleneck that limits small-scale renewable adoption. The passage moves from biological observation to mechanical testing to a practical deployment implication.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '9b9617ee-aa24-4c1c-824c-2d4d3eccdff3';
UPDATE public.questions SET
  stimulus_text = 'Educators reviewing literacy program 8 concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone. Teachers in the pair-discussion classrooms reported that students referenced textual evidence when disagreeing, a behavior rarely observed during silent worksheet completion. Standardized pre- and post-tests showed a twelve-point average gain for the discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit. The educators emphasize that discussion prompts were structured—not unstructured chat—and required each partner to cite a line from the text. They argue that collaborative talk externalizes comprehension strategies that weaker readers otherwise keep invisible. The passage supports structured peer dialogue as an instructional lever rather than a replacement for independent reading.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f6c833b3-c393-462c-94b4-914eb5ffdaf3';
UPDATE public.questions SET
  stimulus_text = 'Marine biologists studying reef ecosystem 9 found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season, turning complex habitat into a uniform green mat. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure. At those sites, coral recruitment—the process by which free-floating larvae attach to hard substrate—dropped sharply even when water temperature and salinity remained stable. The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events. Their follow-up surveys showed that small patches of bare rock reappeared only where grazing intensity returned to historical norms.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '349363e4-590b-42a4-a4ff-8fb52f2bdbb3';
UPDATE public.questions SET
  stimulus_text = 'Historians examining trade route 10 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 10 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fe3049a9-49b2-49e7-bd52-b9dc85329019';
UPDATE public.questions SET
  stimulus_text = 'In her essay on urban soundscapes, writer 11 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '7d31ae71-88b9-47a2-802c-8caf87b1d833';
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 12 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fc650152-f039-4bd6-8503-90ebb52ace23';
UPDATE public.questions SET
  stimulus_text = '• Turbine 1 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 1, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f43f7263-46ca-4ed6-b221-6eca86fa43ce';
UPDATE public.questions SET
  stimulus_text = '• Program 2 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 2, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '6e5fd353-4108-40a6-8d81-c8e9aad78cb0';
UPDATE public.questions SET
  stimulus_text = '• Turbine 3 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 3, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd5400f29-103d-44da-af50-53c11bf198b7';
UPDATE public.questions SET
  stimulus_text = '• Program 4 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 4, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'c2ebc51e-c076-4185-b497-23d4f276f976';
UPDATE public.questions SET
  stimulus_text = '• Turbine 5 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 5, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '68c354ee-dba1-487d-882f-a4d51ff712ac';
UPDATE public.questions SET
  stimulus_text = '• Program 6 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 6, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4a001407-792c-4823-a71f-28ffda42b648';
UPDATE public.questions SET
  stimulus_text = '• Turbine 7 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 7, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '819d3679-dcf6-4822-b1c8-c6c254887cfd';
UPDATE public.questions SET
  stimulus_text = '• Program 8 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 8, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'df48dfac-f0f2-46ef-ab46-2f2d6f19d7b2';
UPDATE public.questions SET
  stimulus_text = '• Turbine 9 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 9, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '83959016-f5d3-4d8a-ab44-5a4d03211bc5';
UPDATE public.questions SET
  stimulus_text = '• Program 10 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 10, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'c539316d-3834-4dc0-8ca6-b48efc9149e5';
UPDATE public.questions SET
  stimulus_text = '• Turbine 11 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 11, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '12d7a673-f86b-49e9-a5a4-a848a088db98';
UPDATE public.questions SET
  stimulus_text = '• Program 12 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 12, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '9e527716-99e2-46a6-ba8c-2411858aa8ec';
UPDATE public.questions SET
  stimulus_text = '• Turbine 13 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 13, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'c101f991-0dd8-4476-b3b0-ff99dcda2949';
UPDATE public.questions SET
  stimulus_text = '• Program 14 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 14, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e2e20e56-925c-42ac-b1e9-be2399653406';
UPDATE public.questions SET
  stimulus_text = '• Turbine 15 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 15, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '44940335-27b1-4e26-9a5f-36a199f97305';
UPDATE public.questions SET
  stimulus_text = '• Turbine 1 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 1, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3852bd94-0614-471e-bdb9-d3cf1290a8e1';
UPDATE public.questions SET
  stimulus_text = '• Program 2 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 2, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '679519d5-7a11-42fe-b9f5-319bc583e26b';
UPDATE public.questions SET
  stimulus_text = '• Turbine 3 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 3, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e43b3c8d-3016-4125-8f61-e54beae26d03';
UPDATE public.questions SET
  stimulus_text = '• Program 4 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 4, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd4403126-546e-4b83-a6ee-ebf10145d2a0';
UPDATE public.questions SET
  stimulus_text = '• Turbine 5 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 5, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e2d263af-5dc7-4d7f-8692-f919ca75978d';
UPDATE public.questions SET
  stimulus_text = '• Program 6 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 6, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd7548463-71e4-4df1-a35a-89868186fa91';
UPDATE public.questions SET
  stimulus_text = '• Turbine 7 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 7, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e54f6416-709e-4eab-87f9-1df31b7c78b9';
UPDATE public.questions SET
  stimulus_text = '• Program 8 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 8, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8b3b0a8c-f587-4af4-9bc5-8e5701d68667';
UPDATE public.questions SET
  stimulus_text = '• Turbine 9 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 9, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '59813623-d474-4183-b382-c05a39942218';
UPDATE public.questions SET
  stimulus_text = '• Program 10 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 10, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'babbbab1-4276-44a9-a6e6-59d616450827';
UPDATE public.questions SET
  stimulus_text = '• Turbine 11 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 11, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '1e8a6a8b-bf0b-4650-85c3-3b1eeff0296c';
UPDATE public.questions SET
  stimulus_text = '• Program 12 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 12, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3842c63a-6b92-4e61-bc60-5e02242e4819';
UPDATE public.questions SET
  stimulus_text = '• Turbine 1 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 1, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a126c941-90b1-48ab-b865-2c765de92e8f';
UPDATE public.questions SET
  stimulus_text = '• Program 2 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 2, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bd4f5184-f362-4b47-823a-f96703f4a13e';
UPDATE public.questions SET
  stimulus_text = '• Turbine 3 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 3, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '89c0f3aa-615c-4b67-9cdd-e48e0702a1b5';
UPDATE public.questions SET
  stimulus_text = '• Program 4 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 4, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '874096ba-6e93-490e-a697-becf3505685e';
UPDATE public.questions SET
  stimulus_text = '• Turbine 5 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 5, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '89dac13f-8eed-45a9-a63c-48d503e8d9b5';
UPDATE public.questions SET
  stimulus_text = '• Program 6 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 6, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '42c15e0a-0b3a-467c-b2f9-0d08006e13f5';
UPDATE public.questions SET
  stimulus_text = '• Turbine 7 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 7, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '002ae615-57ca-494a-a270-6e5ee45ff153';
UPDATE public.questions SET
  stimulus_text = '• Program 8 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 8, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ccc9b3db-a163-4a8e-a42e-81baeba196fc';
UPDATE public.questions SET
  stimulus_text = '• Turbine 9 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 9, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a9707df0-0458-4755-a986-b3487ec5fb56';
UPDATE public.questions SET
  stimulus_text = '• Program 10 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 10, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '1c9ad3d9-9385-4859-ac47-83d994cbee5c';
UPDATE public.questions SET
  stimulus_text = '• Turbine 11 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 11, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f64d8aab-ad44-4991-8a72-afa27d711656';
UPDATE public.questions SET
  stimulus_text = '• Program 12 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 12, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f14a4377-a6fb-4028-9ba3-1d2de5baa162';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ef6d5d3c-f408-4c6d-82b0-8433e45f0da7';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bc119a6a-f486-498f-9f3f-e1f4294017bb';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a6abb248-62b7-4b2d-a452-0347b660ac78';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8e4637b8-540c-4949-88e8-6e7e58abeefc';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '62ef9f7f-dddb-4868-93a6-d638d51f19ad';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f701d3c2-aa06-4a59-a70e-80d136a17db3';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4b23e239-ecaa-42f1-8c65-16fae7821d03';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5c7208c9-9a22-4396-a6a8-b8b439c17a7b';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0b139e30-4f6a-468f-977f-343eef96686f';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'eef07589-6f4e-49f5-985d-1a80cf76639e';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2f8045ae-c30b-4ab2-a65a-73f87a0bd1cd';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5d0b04b1-eedd-45f8-824f-261e430fdcc4';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'dd8eb033-31bd-4e8a-b7c5-e66bc2622615';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b22b5ff8-0e79-4853-add7-bcd25c73c744';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b09700d3-a279-452f-9d0e-1f1270c8a61b';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3640a500-d4ec-43a9-83b8-68c3823dce59';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2ea65e62-6156-489e-8f91-e28b069b7982';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2e007f6f-25e1-4d12-97ac-eac5c980e7f0';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '182157a6-4717-4ba5-9f93-92691172fc93';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2dadaafb-609b-4f27-a0e7-0ff926977529';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '81eb86aa-a309-4162-a9da-d18a8a00b2fc';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ae205788-d52e-4828-b952-6b2e1a0c4ccf';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd71ae998-a86e-41d9-8de8-55a4303cde1e';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd8e8ac17-f1c3-4369-99cc-aa1609b2c238';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '756cd1b9-94d0-4e16-84e5-25887d406d83';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '11be5602-a226-41fc-a742-cb7372849b61';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0be54a50-8da8-4996-a5f5-d1e9a02a5c1a';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'cfe4ed5d-5e71-4984-a64d-57183af84e3f';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Complicating the binary the author has established,","is_correct":true,"explanation":"Complicating the binary the author has established, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Undermining the neat separation outlined above,","is_correct":false,"explanation":"Undermining the neat separation outlined above, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Drawing the logical consequence from the evidence just presented,","is_correct":false,"explanation":"Drawing the logical consequence from the evidence just presented, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Translating the prior observation into a broader principle,","is_correct":false,"explanation":"Translating the prior observation into a broader principle, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5ecbb267-29b1-4ebd-9472-2ffb32e0f546';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Undermining the neat separation outlined above,","is_correct":true,"explanation":"Undermining the neat separation outlined above, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":false,"explanation":"Qualifying the sweeping claim made in the prior sentence, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Extending the causal chain the author has begun to trace,","is_correct":false,"explanation":"Extending the causal chain the author has begun to trace, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Extending the author''s line of reasoning further,","is_correct":false,"explanation":"Extending the author''s line of reasoning further, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2d756f13-8529-45e7-a304-0b310759730f';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":true,"explanation":"Qualifying the sweeping claim made in the prior sentence, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Interrupting the linear narrative the author has been building,","is_correct":false,"explanation":"Interrupting the linear narrative the author has been building, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Building directly on the mechanism described above,","is_correct":false,"explanation":"Building directly on the mechanism described above, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Reinforcing the cumulative case the passage has assembled,","is_correct":false,"explanation":"Reinforcing the cumulative case the passage has assembled, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '7a10f8f1-b3ca-4643-bc5f-2e0df4ffc9c9';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Interrupting the linear narrative the author has been building,","is_correct":true,"explanation":"Interrupting the linear narrative the author has been building, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Drawing the logical consequence from the evidence just presented,","is_correct":false,"explanation":"Drawing the logical consequence from the evidence just presented, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Translating the prior observation into a broader principle,","is_correct":false,"explanation":"Translating the prior observation into a broader principle, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Adding a parallel example that deepens the same point,","is_correct":false,"explanation":"Adding a parallel example that deepens the same point, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3260e759-4c1b-44bd-986c-4388a0841d4e';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Blurring the sharp contrast the passage has drawn,","is_correct":true,"explanation":"Blurring the sharp contrast the passage has drawn, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Extending the causal chain the author has begun to trace,","is_correct":false,"explanation":"Extending the causal chain the author has begun to trace, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Extending the author''s line of reasoning further,","is_correct":false,"explanation":"Extending the author''s line of reasoning further, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Layering another strand of support onto the central claim,","is_correct":false,"explanation":"Layering another strand of support onto the central claim, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '290ba7e8-881b-4878-9c23-48fcc404a9da';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Complicating the binary the author has established,","is_correct":true,"explanation":"Complicating the binary the author has established, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Building directly on the mechanism described above,","is_correct":false,"explanation":"Building directly on the mechanism described above, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Reinforcing the cumulative case the passage has assembled,","is_correct":false,"explanation":"Reinforcing the cumulative case the passage has assembled, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Illustrating the abstract claim with a concrete case,","is_correct":false,"explanation":"Illustrating the abstract claim with a concrete case, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b3a85983-e044-4142-a2ba-6d481ad04520';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Undermining the neat separation outlined above,","is_correct":true,"explanation":"Undermining the neat separation outlined above, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Translating the prior observation into a broader principle,","is_correct":false,"explanation":"Translating the prior observation into a broader principle, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Adding a parallel example that deepens the same point,","is_correct":false,"explanation":"Adding a parallel example that deepens the same point, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Grounding the general statement in a specific instance,","is_correct":false,"explanation":"Grounding the general statement in a specific instance, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '85c71043-f376-4998-9a92-f7d9959f8880';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Qualifying the sweeping claim made in the prior sentence,","is_correct":true,"explanation":"Qualifying the sweeping claim made in the prior sentence, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Extending the author''s line of reasoning further,","is_correct":false,"explanation":"Extending the author''s line of reasoning further, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Layering another strand of support onto the central claim,","is_correct":false,"explanation":"Layering another strand of support onto the central claim, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Making tangible the principle introduced above,","is_correct":false,"explanation":"Making tangible the principle introduced above, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fe51a715-75d5-44f6-8c97-1194a7d655e9';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Interrupting the linear narrative the author has been building,","is_correct":true,"explanation":"Interrupting the linear narrative the author has been building, This participial phrase matches the rhetorical relationship between the two clauses: it signals contrast while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb."},{"id":"B","text":"Reinforcing the cumulative case the passage has assembled,","is_correct":false,"explanation":"Reinforcing the cumulative case the passage has assembled, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"C","text":"Illustrating the abstract claim with a concrete case,","is_correct":false,"explanation":"Illustrating the abstract claim with a concrete case, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."},{"id":"D","text":"Blurring the sharp contrast the passage has drawn,","is_correct":false,"explanation":"Blurring the sharp contrast the passage has drawn, This phrase suggests contrast, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The two clauses contrast a null first trial with a successful second trial. Hard Digital SAT transition items require a participial or clausal bridge—not a single adverb—that signals contrast while grammatically modifying the subject of the following clause. Choice A supplies that rhetorical relationship; the distractors imply addition, causation, or exemplification where contrast is required.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '214d409d-2ed5-420b-b18f-d9e9f73953fb';
COMMIT;
