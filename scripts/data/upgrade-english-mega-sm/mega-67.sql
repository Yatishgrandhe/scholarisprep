BEGIN;
UPDATE public.questions SET
  stimulus_text = 'Raymond Antrobus, an accomplished poet and writer of prose, recently released his debut spoken word poetry album, *The First Time I Wore Hearing Aids*, in collaboration with producer Ian Brennan. The album contains both autobiographical and reflective pieces combining Antrobus’s spoken words with Brennan’s fragmented audio elements and pieces of music to convey how people who are deaf may experience sound, both its presence and absence. Some critics suggest that the album questions the function of sound in the world, highlighting that the experience of sound is multifaceted.',
  question_text = 'Which choice best describes the overall structure of the text?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"It introduces a collaborative spoken word poetry project, details the approach taken to produce the work, and then provides an example of critique the album received upon release.","is_correct":true,"explanation":"Choice A matches the question''s requirement and is consistent with the passage''s central claim or supporting detail. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"B","text":"It mentions a collection of spoken word poems, distinguishes one poem as being an exemplar on the album, and then offers a summary of the subject matter of the whole collection.","is_correct":false,"explanation":"Choice B is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"C","text":"It summarizes the efforts to produce a collection of spoken word poems, presents biographies of two people who worked on the album, and speculates about the meaning behind the poetry.","is_correct":false,"explanation":"Choice C is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"D","text":"It connects two artists to the same spoken word poetry project, explains the extent of their collaboration on each poem, and then provides an overview of the technique used to produce the work.","is_correct":false,"explanation":"Choice D is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'Choice A is the best answer. The text first introduces the album as being a collaboration between Antrobus and Brennan, then describes the approach taken to produce it, then mentions how critics have said that it calls into question the function of sound. The passage states that "Raymond Antrobus, an accomplished poet and writer of prose, recently released his debut spoken word poetry album, *The F…", which is the textual anchor for eliminating weaker choices. Choice A is correct because it aligns with that evidence: It introduces a collaborative spoken word poetry project, details the approach taken to produce the …. Each incorrect option either contradicts a explicit detail, imports information not present in the text, or answers a different question than the one asked.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"WIC","domain_id":"craft","opensat_index":1402,"opensat_domain":"Craft and Structure","opensat_raw_id":"a70cbc53","opensat_difficulty":"Hard","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.939Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'acd3a09a-73e2-499b-bce6-b9e3f068b175';
UPDATE public.questions SET
  stimulus_text = 'The most obvious sign that the speaker is speaking directly to the reader is the use of the word "you." There are other elements of the passage that may help to make the speaker seem more immediate and personal. The speaker refers to events and places that are familiar to the reader, and the speaker uses a conversational tone throughout the passage. What is the most likely reason why the writer uses the word "you"?',
  question_text = 'In this passage, the word "you" is used to',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"create a sense of intimacy and connection with the reader.","is_correct":true,"explanation":"Choice A matches the question''s requirement and is consistent with the passage''s central claim or supporting detail. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"B","text":"describe the speaker’s feelings and experiences.","is_correct":false,"explanation":"Choice B is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"C","text":"emphasize the importance of the speaker’s message.","is_correct":false,"explanation":"Choice C is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"D","text":"suggest that the speaker is addressing a large audience.","is_correct":false,"explanation":"Choice D is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The speaker is addressing the reader directly by using the word "you." This creates a sense of intimacy and connection with the reader, which can help the reader feel more engaged with the message. The passage states that "The most obvious sign that the speaker is speaking directly to the reader is the use of the word "you." There are other …", which is the textual anchor for eliminating weaker choices. Choice A is correct because it aligns with that evidence: create a sense of intimacy and connection with the reader.. Each incorrect option either contradicts a explicit detail, imports information not present in the text, or answers a different question than the one asked.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"WIC","domain_id":"craft","opensat_index":1404,"opensat_domain":"Craft and Structure","opensat_raw_id":"e642020c","opensat_difficulty":"Hard","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.939Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'c8098c1e-2070-4ed6-acc3-2fa6d2afea0b';
UPDATE public.questions SET
  stimulus_text = 'The author of the passage is making the point that "The meaning of a word can change over time." They illustrate this point by giving an example of the word “nice.” The author then goes on to explain how the meaning of “nice” has shifted and that this shift has been brought about by a number of factors. What is the most likely reason why the author describes the meaning of "nice" in such detail?',
  question_text = 'In this passage, the author describes the meaning of the word “nice” in such detail to',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"show that the author is knowledgeable about language and history.","is_correct":false,"explanation":"Choice A is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"B","text":"provide a specific example that supports the author’s point about the changing meaning of words.","is_correct":true,"explanation":"Choice B matches the question''s requirement and is consistent with the passage''s central claim or supporting detail. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"C","text":"suggest that the author is particularly fond of the word “nice.”","is_correct":false,"explanation":"Choice C is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."},{"id":"D","text":"explain the reasons why the meaning of the word “nice” has shifted.","is_correct":false,"explanation":"Choice D is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem. Re-read the sentences surrounding the key detail before eliminating this option on test day."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The author provides a specific example of the word “nice” in order to support the claim that the meaning of a word can change over time. The author describes the meaning of “nice” in detail to make sure that the reader understands the example and how it supports the author’s point. The passage states that "The author of the passage is making the point that "The meaning of a word can change over time." They illustrate this po…", which is the textual anchor for eliminating weaker choices. Choice B is correct because it aligns with that evidence: provide a specific example that supports the author’s point about the changing meaning of words.. Each incorrect option either contradicts a explicit detail, imports information not present in the text, or answers a different question than the one asked.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"WIC","domain_id":"craft","opensat_index":1406,"opensat_domain":"Craft and Structure","opensat_raw_id":"6b889d3c","opensat_difficulty":"Hard","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.939Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f4e017c8-6c1b-4810-9d55-96a831e4d241';

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
WHERE id = '7b397a9f-34fa-42f0-be2f-9adf60fa8495';
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
WHERE id = '39b71dda-2b6c-4270-a033-891741d6dbab';
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
WHERE id = '2a4ad297-685f-4574-b719-939dd8f6b65b';
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
WHERE id = '9c16a08d-8810-41e7-987f-83a116f85906';
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
WHERE id = '5a35db82-dab3-4215-bca5-840c9c10246a';
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
WHERE id = '57aadec0-ef41-43db-bdbe-6d89d5565057';
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
WHERE id = '387053f8-c691-4e5d-b3c5-6ca65e4639be';
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
WHERE id = 'a3777039-efda-4d74-8a1b-394c2a2eca72';
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
WHERE id = 'b34af0e0-f65e-43a8-a29d-dd305e077726';
COMMIT;
