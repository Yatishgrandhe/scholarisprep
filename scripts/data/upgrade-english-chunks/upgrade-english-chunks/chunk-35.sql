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
COMMIT;
