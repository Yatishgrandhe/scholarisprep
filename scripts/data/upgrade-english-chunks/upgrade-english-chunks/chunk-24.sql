BEGIN;
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
WHERE id = 'ef2a8a15-f112-4803-ae00-8061423553f3';
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
WHERE id = '57a66537-4778-4ff5-9399-20f209e0a7c4';
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
WHERE id = '2098cc44-846b-4d32-8287-b59423251bcf';
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
WHERE id = '60e4b06d-db92-40f8-9917-cbc6aababdeb';
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
WHERE id = '1dd9a877-d0f4-41fc-871b-2bb13073b60e';
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
WHERE id = '10e30d92-4047-4c74-bc89-b6ecc2c500e3';
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
WHERE id = 'a8e9095d-43ef-4e31-8872-7ce72c5f2106';
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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'cbe4837f-7304-491b-bc73-ce43c7dd96aa';
COMMIT;
