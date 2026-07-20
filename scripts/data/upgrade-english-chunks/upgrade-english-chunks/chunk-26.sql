BEGIN;
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2019 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2029 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bc36d185-7c39-48e3-85d8-a714069fdafa';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2020 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2030 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '74b0f196-1bb7-4cae-af72-cd489acfd1d6';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2021 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2031 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '6cf59852-5445-47d2-bb8c-d9b07a15ac42';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2022 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2032 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '610dad8d-56ed-4a9b-8125-4b09b7f88238';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2023 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2033 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2b5e805c-aa53-408c-84d1-0a66dd46cb5c';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2024 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2034 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd9bd1c46-4e8b-4321-8d31-c8365142a009';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2025 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2035 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b7c21b38-72d6-4169-a9ce-f4fc2ce63a37';
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
WHERE id = '42cdcffd-bb06-4596-942e-9b8fa8896fff';
COMMIT;
