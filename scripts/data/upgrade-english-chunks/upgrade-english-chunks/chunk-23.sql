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
WHERE id = '36260f4b-9501-44b4-ac3e-39e9b422540b';
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
WHERE id = 'a4be0d3e-99c7-487b-8a2f-6927d2a5583c';
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
WHERE id = '6862727e-400f-4987-81e2-da05f04315c7';
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
WHERE id = '22410d16-9a73-4fdd-8be1-d1b9d7ac1da7';
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
WHERE id = '3305a30f-0e31-434d-a35a-a75ebe640ecf';
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
WHERE id = 'cc0ec664-14ca-4033-86f3-366a9d6ad995';
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
WHERE id = 'f042b20e-2efe-4407-a4b8-89f763726ed2';
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
WHERE id = '404873b7-506e-44bb-8c5a-25db198272b3';
COMMIT;
