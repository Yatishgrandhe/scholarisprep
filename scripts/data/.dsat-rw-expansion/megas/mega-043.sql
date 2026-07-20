BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4d02af3b-d546-48e6-9a84-4945fe0a953f', 'Which choice best describes the overall structure of the passage?', 'Marine biologists studying reef ecosystem 4521 found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season, turning complex habitat into a uniform green mat. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure. At those sites, coral recruitment—the process by which free-floating larvae attach to hard substrate—dropped sharply even when water temperature and salinity remained stable. The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events. Their follow-up surveys showed that small patches of bare rock reappeared only where grazing intensity returned to historical norms. Policy briefs cited in the study recommend no-take zones sized to herbivore home ranges rather than arbitrary coastline percentages. The authors stress that replication', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:seasons}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On challenged items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0a80ad13-2011-446b-b9ec-ac75fdec0728', 'Which choice best describes the overall structure of the passage?', 'Historians examining trade route 4522 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 4522 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language. Recent digitization projects have linked surviving ledger fragments to star-chart marginalia, strengthening the case for integrated commercial and intellectual exchange. The', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:caravan}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On challenged items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ebb59e54-5423-4d04-9b8c-82806952ada5', 'Which choice best describes the overall structure of the passage?', 'In her essay on urban soundscapes, writer 4523 argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air. Pilot programs in three cities reported measurable sleep gains after targeted speed reductions on arterial', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:Community}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On challenged items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4b83c9d-46f2-42fd-ba09-e1014e11c9d6', 'Which choice best describes the overall structure of the passage?', 'Economists analyzing market 4524 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions. A follow-up survey eighteen months later found that retailers who diversified suppliers during the stall retained higher customer loyalty scores. The authors stress that replication across independent', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:shifted}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On challenged items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35f2f92f-a863-474e-8f02-97534e07fcdd', 'Which choice best describes the overall structure of the passage?', 'Archaeologists at site 4525 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail. Residue profiles from adjacent sites lacked the same fermentation markers, suggesting the practice was localized rather than regional. The authors stress that replication across independent sites remains necessary before policymakers treat the finding as settled, yet the converging', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:large-scale}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On challenged items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0ef8d2ad-5dc5-49c2-a9f2-9d6465d73e18', 'Which choice best describes the overall structure of the passage?', 'Psychologists testing memory task 4526 reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall. The authors plan a replication with longer study materials to test whether the consolidation effect scales with content complexity.', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:retrieval,}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On challenged items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: The passage connects ideas across paragraphs; it is not a random list.
- C: The passage presents research findings rather than rejecting inquiry.
- D: No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"structure","rw_format":"passage_mc","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21eea69b-81ca-4dd5-a13b-445d5f078188', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2009, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2023 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccbbd84a-71e7-46a3-b906-49a7621fdf54', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2010, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2024 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cd2d9dc-876e-4d13-9fd3-9ce7689b4166', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2011, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2025 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d6294d94-8d74-4995-a610-1e91caa4fc20', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2012, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2018 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31267e5b-5188-4084-a2cd-771e95fb5270', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2013, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2019 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7682b80-54b8-4737-9f75-05c3433cdece', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2014, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2020 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('991b025d-bdcf-4573-921b-014f9baaa5db', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2015, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2021 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17a66bb8-1dea-4e5d-bc8b-eb25e00ab2a2', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2016, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2022 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dd4f39f4-8b36-4f8b-8da9-1b3b8b6ab4ed', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2017, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.

Text 2
A 2023 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:produced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"cross_text_response","rw_format":"text_1_text_2","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
