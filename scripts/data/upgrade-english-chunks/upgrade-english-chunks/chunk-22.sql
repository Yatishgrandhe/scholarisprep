BEGIN;
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2011 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2021 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '7213e896-600f-40cc-8989-4d4be248c308';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2012 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2022 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4476b6c6-2854-4e93-8672-62d31e17fbd5';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2013 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2023 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '94a35efc-5e5a-4747-ac3e-9f2602501da1';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2014 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2024 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '501fbdb6-6726-4316-bd9f-abba2de53461';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2015 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2025 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3bbc2599-ef8a-422f-9268-5b502e690fbd';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2016 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2026 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '6414c299-299e-4c0f-8c3b-e0db3476b095';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2017 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2027 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '853c7f06-6e68-49f1-baba-6646fb33a3e9';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Researchers in 2018 argued that city parks mainly benefit adults who jog or play sports, treating exercise as the primary measurable outcome of green space investment.

Text 2
A 2028 study found that children who live near parks read outdoors more often and report lower stress, even when they rarely exercise there. Parents in the study described parks as quiet places for homework and conversation, not only as venues for athletics.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By agreeing that parks only help residents who exercise vigorously on a daily basis.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By showing parks can benefit residents in ways beyond structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower stress without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never use parks and therefore should not influence park design.","is_correct":false,"explanation":"Text 2 says children use parks for reading; it does not argue children avoid parks altogether."},{"id":"D","text":"By rejecting all research about urban green space as inherently unreliable.","is_correct":false,"explanation":"Text 2 is itself a research study and cites data; it does not dismiss research categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. The author of Text 2 would therefore challenge the exclusivity of Text 1''s claim rather than deny parks to children or reject research methods.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2d407840-8e50-4717-9913-f741ba6bf301';
COMMIT;
