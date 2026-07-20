BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36162a48-0fcf-4eeb-923b-a2d04fa00472', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses information from the notes to accomplish this goal?', 'Tikal''s Water Supply
• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.
• The city of Tikal possessed a major reservoir system paved with plaster.
• Plaster lining prevented water from seeping into the porous limestone bedrock.
• The system at Tikal was designed to collect rainwater during the intense tropical wet season.
• This stored water sustained the city''s population of over 60,000 residents during the prolonged dry season.', 'passage', '[{"id":"A","text":"Paved with plaster to prevent seepage into porous limestone, Tikal''s reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"To prevent water from seeping into Tikal''s porous limestone bedrock, the Maya paved their massive reservoir system with plaster.","is_correct":false,"explanation":"Addresses seepage but omits the seasonal wet/dry survival function."},{"id":"C","text":"The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations.","is_correct":false,"explanation":"Too general; omits porous limestone and seasonal cycle."},{"id":"D","text":"Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.","is_correct":false,"explanation":"Misses storing water to sustain the population during the dry season."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Addresses seepage but omits the seasonal wet/dry survival function.
- C: Too general; omits porous limestone and seasonal cycle.
- D: Misses storing water to sustain the population during the dry season.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_easy","slot":23,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ccb2acc-ee4d-48d2-b23b-d520e0cfe80e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_easy","slot":24,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('660831df-92ac-4679-a396-4224d70984a6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_easy","slot":25,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('10571ea9-7020-4fc1-a081-aa407667c5c2', 'As used in the passage, "sanguine" most nearly means', 'Historians examining archive 5722383 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the sanguine is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"[Collocation Decoy] \"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"obfuscate\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"[Flat Literal] \"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"[Tone Inversion] \"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: [Collocation Decoy] "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_easy","slot":26,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ee82a07-5ebd-4361-b55c-47b586244f14', 'As used in the passage, "scrutinize" most nearly means', 'The novelist writing in passage 5726740 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the scrutinize is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"to worsen","is_correct":false,"explanation":"[Collocation Decoy] \"to worsen\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to lessen or make less severe","is_correct":true,"explanation":"Correct (B). \"mitigate\" fits \"to lessen or make less severe\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to ignore","is_correct":false,"explanation":"[Flat Literal] \"to ignore\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to multiply","is_correct":false,"explanation":"[Tone Inversion] \"to multiply\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:measurement}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to lessen or make less severe.

Distractor analysis:
- A: [Collocation Decoy] "to worsen" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "to ignore" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "to multiply" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":0,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a54b376c-f3cb-46a6-a094-7e2b7af90a6a', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 5726877 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"[Partial Scope] The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"[Narrative Speculation] The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"[Structural Inversion] No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:cycles,}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: [Partial Scope] The passage connects ideas across paragraphs; it is not a random list.
- C: [Narrative Speculation] The passage presents research findings rather than rejecting inquiry.
- D: [Structural Inversion] No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', 'TSP', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":1,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('544e5a61-938d-43fd-8943-8cac7dea956c', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2012, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2024 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"[Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"[Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"[Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: [Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: [Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: [Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', 'CTC', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":2,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de60523a-6d1b-44b6-bc73-fc4658a703fe', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 5727151 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"[Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"[Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"[Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:intervention}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: [Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: [Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods.
- D: [Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', 'CID', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":3,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b78d3b1-3540-4585-a00f-1594c9c151ef', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'Historians examining archive 5727288 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"[Unconditional Support Decoy] This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"[Irrelevant Variable] Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"[Inverse Support] Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:intervention}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: [Unconditional Support Decoy] This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: [Irrelevant Variable] Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: [Inverse Support] Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":4,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04b7f643-8f51-4df5-aaec-bdf2c6d1b136', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5727425 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Group | Hours studied | Post-test % | Gain |
| --- | --- | --- | --- |
| 2018 | 28637175 | 77 | 5 |
| 2019 | 28637190 | 81 | 6 |
| 2020 | 28637205 | 65 | 7 |
| 2021 | 28637220 | 69 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:variables}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":5,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef00105b-f604-4302-998f-aa1207f4c5c6', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 5727562 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:intervention}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":6,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a42f34ed-1cda-4f2c-8772-b91fc6608b3e', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'Historians examining archive 5727699 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Note current findings
Focus on {{yellow:periods}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":7,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52a8cc52-6b9d-49ba-93fd-28d9d80406d7', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 5727836 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:variables}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":8,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('417db247-4eef-4815-b9d1-f67a52089af0', 'Which choice completes the text with the most logical transition?', 'Archaeologists at site 5728173 discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail. Residue profiles from adjacent sites lacked the same fermentation markers, suggesting the practice was localized rather than regional. The authors stress that replication across independent sites remains necessary before policymakers treat the finding as settled, yet the converging ______ the subsequent section extends the author''s nuanced argument.', 'passage', '[{"id":"A","text":"Blurring the sharp contrast the passage has drawn between the two claims,","is_correct":true,"explanation":"Correct (A). Blurring the sharp contrast the passage has drawn between the two claims, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Adding a parallel example that deepens the same point about methodological limits,","is_correct":false,"explanation":"[Synonym Trap] Adding a parallel example that deepens the same point about methodological limits, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Complicating the binary the author has established in the opening paragraphs,","is_correct":false,"explanation":"[Category Shift] Complicating the binary the author has established in the opening paragraphs, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Drawing the logical consequence from the evidence just presented in the passage,","is_correct":false,"explanation":"[Register Clash] Drawing the logical consequence from the evidence just presented in the passage, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:storage}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Blurring the sharp contrast the passage has drawn between the two claims,.

Distractor analysis:
- B: [Synonym Trap] Adding a parallel example that deepens the same point about methodological limits, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: [Category Shift] Complicating the binary the author has established in the opening paragraphs, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: [Register Clash] Drawing the logical consequence from the evidence just presented in the passage, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', 'TRA', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":9,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd3897bb-f2a2-4af5-9a6b-20ba54c9df1f', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses information from the notes to accomplish this goal?', 'Tikal''s Water Supply
• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.
• The city of Tikal possessed a major reservoir system paved with plaster.
• Plaster lining prevented water from seeping into the porous limestone bedrock.
• The system at Tikal was designed to collect rainwater during the intense tropical wet season.
• This stored water sustained the city''s population of over 60,000 residents during the prolonged dry season.', 'passage', '[{"id":"A","text":"Paved with plaster to prevent seepage into porous limestone, Tikal''s reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"To prevent water from seeping into Tikal''s porous limestone bedrock, the Maya paved their massive reservoir system with plaster.","is_correct":false,"explanation":"Addresses seepage but omits the seasonal wet/dry survival function."},{"id":"C","text":"The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations.","is_correct":false,"explanation":"Too general; omits porous limestone and seasonal cycle."},{"id":"D","text":"Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.","is_correct":false,"explanation":"Misses storing water to sustain the population during the dry season."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Addresses seepage but omits the seasonal wet/dry survival function.
- C: Too general; omits porous limestone and seasonal cycle.
- D: Misses storing water to sustain the population during the dry season.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"rw_module_2_hard","slot":10,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
