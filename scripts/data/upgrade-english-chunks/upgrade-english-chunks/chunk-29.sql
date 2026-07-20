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
WHERE id = 'c3993313-9c29-412f-924f-86489ddbd9d4';
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
WHERE id = 'e24f3d73-bb68-4006-ad17-a24ae0b10a37';
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
WHERE id = 'd52b96e5-d307-4dc2-9c5f-ca1989849f8a';
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
WHERE id = '991e646a-a341-4643-ba15-989c5ca97848';
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
WHERE id = '1a12c1cd-e1e8-40fb-aa50-95b8f992b88d';
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
WHERE id = '42103626-b035-48b4-b204-6a0d5959adb6';
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
WHERE id = '25572c71-6ab8-420e-8f14-71f181e5f3c3';
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
WHERE id = '462541ef-0b36-4399-bb9f-3ceeb9966bc7';
COMMIT;
