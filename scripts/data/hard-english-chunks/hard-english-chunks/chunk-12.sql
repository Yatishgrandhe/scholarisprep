BEGIN;
UPDATE public.questions SET
  stimulus_text = 'Psychologists evaluating memory protocol 14 reported that participants who slept eight hours recalled word lists more accurately than those who remained awake, even when both groups studied identical material for the same duration. The awake cohort was monitored in a quiet lounge with books and puzzles to prevent napping, yet their recall lagged on both immediate and delayed tests administered twenty-four hours later. Brain-imaging subsamples showed differential hippocampal activation during retrieval, aligning with theories that sleep consolidates declarative memories through synaptic reorganization. The researchers caution that the study measured short lists under laboratory conditions and may not generalize to complex real-world learning such as foreign-language acquisition or procedural skills. Still, the controlled comparison isolates sleep as the critical variable because study time, list difficulty, and initial exposure were matched across conditions. The passage presents sleep as an active cognitive process with measurable downstream effects on recall rather than passive rest devoid of neurological consequence.',
  question_text = 'Which finding from the passage, if true, would most directly strengthen the author''s argument about organizational adaptation during supply-chain disruption?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"National chains possess larger advertising budgets than independent retailers, which explains their market share in stable economic periods.","is_correct":false,"explanation":"Advertising budgets do not explain differential adaptation speed during logistics failures described in the passage."},{"id":"B","text":"Independent retailers renegotiated credit with regional suppliers and restocked within days while centralized distribution hubs remained idle for weeks.","is_correct":true,"explanation":"Directly explains the mechanism behind faster adaptation: local reordering cycles that national chains could not match without corporate approval."},{"id":"C","text":"Overseas shipping volumes returned to pre-disruption levels within forty-eight hours across all sectors mentioned in the study.","is_correct":false,"explanation":"Contradicts the passage''s premise that supply chains stalled abruptly and that adaptation timing mattered."},{"id":"D","text":"Desert caravans transported astronomical tables alongside commodities, spreading navigation techniques between oasis settlements.","is_correct":false,"explanation":"This detail belongs to a passage about desert trade routes, not retailer flexibility during modern logistics failures."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The passage claims independent retailers adapted more nimbly than national chains when supply chains stalled. The passage anchors the correct choice in language such as "Psychologists evaluating memory protocol 14 reported that participants who slept eight hours recalle…", which eliminates options that contradict or overreach that evidence. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"COE","domain_id":"information","opensat_index":1419,"opensat_domain":"Information and Ideas","opensat_raw_id":"564781b2","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.901Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0896b4c5-7c94-46ba-9528-cbf03ceaf6fc';
UPDATE public.questions SET
  stimulus_text = 'Text 1
Urban planners in 2011 argued that municipal parks primarily benefit residents who engage in vigorous exercise, treating caloric expenditure as the sole measurable outcome of green-space investment and dismissing passive recreation as statistically negligible.

Text 2
A longitudinal 2021 study found that children residing near parks read outdoors more frequently and report lower cortisol levels, even when they rarely participate in structured athletics. Parents described parks as quiet venues for homework and conversation rather than exclusively as athletic facilities.',
  question_text = 'Based on the texts, how would the author of Text 2 most likely respond to the narrow benefit model articulated in Text 1?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"By conceding that parks benefit only residents who exercise vigorously on a daily basis and serve no purpose for sedentary populations.","is_correct":false,"explanation":"Text 2 documents non-exercise benefits, so its author would not fully endorse Text 1''s exercise-only framing."},{"id":"B","text":"By demonstrating that parks confer benefits—such as stress reduction and outdoor reading—that do not require structured exercise programs.","is_correct":true,"explanation":"Text 2 emphasizes reading outdoors and lower cortisol without requiring exercise, directly widening Text 1''s narrow benefit model."},{"id":"C","text":"By claiming children never visit parks and therefore should not influence municipal park-design budgets or zoning decisions.","is_correct":false,"explanation":"Text 2 states children use parks for reading; it does not argue that children avoid parks altogether."},{"id":"D","text":"By rejecting all empirical research about urban green space as inherently unreliable regardless of methodology or sample size.","is_correct":false,"explanation":"Text 2 is itself a research study citing data; it does not dismiss empirical methods categorically."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'Text 1 limits park benefits to exercisers, while Text 2 documents stress reduction and reading outdoors among children who rarely exercise. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"CTC","domain_id":"craft","opensat_index":1360,"opensat_domain":"Craft and Structure","opensat_raw_id":"238f8392","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.901Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4dfbb68c-cc9e-45d0-8cc2-7ace7ed2fef7';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":32,"opensat_domain":"Standard English Conventions","opensat_raw_id":"b307477f","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd75fc305-760c-429b-a1f2-52060369b04c';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":65,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e7","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2a737757-e280-4005-bed8-c79ad691670a';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":53,"opensat_domain":"Standard English Conventions","opensat_raw_id":"f94c0c33","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '54c4d70a-3c85-4bce-a5b1-3f1116758fd8';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

The aggregate data from the longitudinal experiments suggest a trend ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"suggest","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"suggests,\" not \"suggest.\""},{"id":"B","text":"suggests","is_correct":true,"explanation":"Correct verb form \"suggests\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"suggesting","is_correct":false,"explanation":"Agreement error: \"suggesting\" does not match the number of the governing subject."},{"id":"D","text":"have suggested","is_correct":false,"explanation":"Wrong tense or agreement: \"have suggested\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "suggests" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":74,"opensat_domain":"Standard English Conventions","opensat_raw_id":"a6b2f89c","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fc797893-1db0-4b1f-aad8-4ed7af410d3b';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Each of the competing hypotheses were tested under identical conditions ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":100,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_c1","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '741d2a72-b35a-4a0d-86fa-19faca3b1c65';
UPDATE public.questions SET
  stimulus_text = NULL,
  question_text = 'Which choice completes the text so that it conforms to the conventions of Standard English?

Neither the senior coaches nor the star athlete were prepared ______ conclusive.',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"were","is_correct":false,"explanation":"Subject-verb agreement error: the governing subject requires \"was,\" not \"were.\""},{"id":"B","text":"was","is_correct":true,"explanation":"Correct verb form \"was\" agrees with the subject controlling the verb in this construction."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error: \"are\" does not match the number of the governing subject."},{"id":"D","text":"have been","is_correct":false,"explanation":"Wrong tense or agreement: \"have been\" fails the sentence''s grammatical requirements on hard convention items."}]'::jsonb,
  correct_answer = 'B',
  explanation = 'The subject requires the verb "was" for agreement in this sentence frame. Choice B is correct because it aligns with the textual logic: . Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks. On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.',
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"section":"english","skill_id":"FSS","domain_id":"conventions","opensat_index":142,"opensat_domain":"Standard English Conventions","opensat_raw_id":"random_id_e1","english_content_v2":true,"opensat_difficulty":"Hard","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","english_content_upgraded_at":"2026-06-12T20:01:56.918Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","english_content_upgrade_method":"upgrade-english-content.mjs","hard_content_v2":true,"hard_content_upgraded_at":"2026-06-12T20:29:31.374Z","hard_content_upgrade_method":"generate-hard-english.mjs","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '12d2d6e5-ef86-4004-9582-2173e16c7b1a';
COMMIT;
