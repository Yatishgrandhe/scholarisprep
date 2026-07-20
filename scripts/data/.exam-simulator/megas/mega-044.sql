BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37c0436b-74e1-41a1-ab95-b916599a6295', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'A longitudinal analysis of dataset 5429069 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"[Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"[Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"[Inverse Support] Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:variables}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: [Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures.
- C: [Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled.
- D: [Inverse Support] Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":17,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e76098da-d58c-47bc-9bab-44067a8e874c', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5429206 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 27146080 | 78 | 5 |
| 2019 | 27146095 | 62 | 6 |
| 2020 | 27146110 | 66 | 7 |
| 2021 | 27146125 | 70 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:mechanism}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":18,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('925257f6-bd3c-4e7f-95bf-1d94c76d784c', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 5429343 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"[Equivocation Error] Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"[Reverse Conditional] No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:stable.}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest suppression.
- B: [Equivocation Error] Too absolute; the passage compares groups under controlled conditions.
- D: [Reverse Conditional] No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":19,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b57123cf-6f88-4f45-855a-cd91764538a7', 'Which choice can most reasonably be inferred from the passage?', 'A longitudinal analysis of dataset 5429480 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"[Equivocation Error] Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"[Reverse Conditional] No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Note current findings
Focus on {{yellow:stable.}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest suppression.
- B: [Equivocation Error] Too absolute; the passage compares groups under controlled conditions.
- D: [Reverse Conditional] No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":20,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d480ee72-acc0-479f-8df8-abcd8f0acdd4', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 5429617 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"[Equivocation Error] Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"[Reverse Conditional] No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:stable.}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest suppression.
- B: [Equivocation Error] Too absolute; the passage compares groups under controlled conditions.
- D: [Reverse Conditional] No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":21,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4f4d3d8-bd6d-44eb-9f24-47ca05390de3', 'Which choice completes the text with the most logical transition?', 'Historians examining trade route 5429954 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 5429954 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language. Recent digitization projects have linked surviving ledger fragments to star-chart marginalia, strengthening the case for integrated commercial and intellectual exchange. The ______ the subsequent section extends the author''s nuanced argument.', 'passage', '[{"id":"A","text":"Complicating the binary the author has established in the opening paragraphs,","is_correct":true,"explanation":"Correct (A). Complicating the binary the author has established in the opening paragraphs, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Grounding the general statement in a specific instance the researchers documented,","is_correct":false,"explanation":"[Synonym Trap] Grounding the general statement in a specific instance the researchers documented, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Qualifying the sweeping claim made in the prior sentence with added nuance,","is_correct":false,"explanation":"[Category Shift] Qualifying the sweeping claim made in the prior sentence with added nuance, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Building directly on the mechanism described above in the preceding analysis,","is_correct":false,"explanation":"[Register Clash] Building directly on the mechanism described above in the preceding analysis, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:caravan}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Complicating the binary the author has established in the opening paragraphs,.

Distractor analysis:
- B: [Synonym Trap] Grounding the general statement in a specific instance the researchers documented, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: [Category Shift] Qualifying the sweeping claim made in the prior sentence with added nuance, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: [Register Clash] Building directly on the mechanism described above in the preceding analysis, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', 'TRA', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":22,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20e2685a-fc9b-42b3-aa4d-28b14e2df14a', 'The student wants to emphasize Lovelace''s conceptual contribution beyond mere calculation. Which choice most effectively uses information from the notes to accomplish this goal?', 'Ada Lovelace and Early Computing
• Ada Lovelace was a 19th-century English mathematician who worked with Charles Babbage.
• She wrote notes describing how a computing engine could manipulate symbols, not only numbers.
• Her notes included an algorithm for Bernoulli numbers, often cited as early programming.
• Historians debate how much of the notes reflect her independent insight versus Babbage''s ideas.
• Recent scholarship emphasizes her conceptual leap beyond mere calculation.', 'passage', '[{"id":"A","text":"Lovelace''s notes described how a computing engine could manipulate symbols—not only numbers—and included an algorithm for Bernoulli numbers, reflecting a conceptual leap beyond mere calculation that recent scholarship emphasizes.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Lovelace''s primary contribution was building the physical computing engine herself.","is_correct":false,"explanation":"Not supported by the notes."},{"id":"C","text":"Historians agree her notes added nothing beyond Babbage''s own ideas.","is_correct":false,"explanation":"Contradicted by scholarship emphasizing her conceptual leap."},{"id":"D","text":"Bernoulli numbers prove Lovelace invented modern electronic computers.","is_correct":false,"explanation":"Overstates beyond what the notes claim."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize Lovelace''s conceptual contribution beyond mere calculation.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Not supported by the notes.
- C: Contradicted by scholarship emphasizing her conceptual leap.
- D: Overstates beyond what the notes claim.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":23,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97013c62-9fe7-4a93-82d4-f082be8818c9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":24,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e76de519-67e7-4a9d-9075-13e45ff9f379', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":25,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94aa4d68-19e5-44ff-81d3-9385b6d91cc9', 'As used in the passage, "perfunctory" most nearly means', 'A longitudinal analysis of dataset 5430302 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the perfunctory is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"[Collocation Decoy] \"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"sanguine\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"[Flat Literal] \"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"[Tone Inversion] \"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: [Collocation Decoy] "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_2_hard","slot":26,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9411d0a-5eef-4b13-8e8e-87e31cf64ba1', 'Solve for $x$: $3x + 3 = 27$', '', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$7$","is_correct":false,"explanation":"Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 3. **Step 2:** Divide by 3."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $3x + 3 = 27$

**Step 2 — Solve.** **Step 1:** $3x = 24$
**Step 2:** $x = 8$

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($7$): Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":0,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('711abc7a-8362-439e-9eb0-0d34661dcce0', 'Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?', '', NULL, '[{"id":"A","text":"$-164$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-173$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-169$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-19)=-169$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{41-11}{23-17}=5$.
**Step 2:** Point-slope: $f(-19)=5(-19-17)+(11)$.
**Step 3:** $f(-19)=-169$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-169$

**Distractor analysis:**
- **A** ($-164$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-173$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":1,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f2cfa71c-a68f-46ab-8ae0-fd64fcf51b72', 'If the passenger ferry continues at the same rate, what is $d$ when $t=43$?', 'A passenger ferry''s distance $d$ (miles) after $t$ hours is $d=6t+33$. At $t=35$, $d=243$.', 'passage', '[{"id":"A","text":"$285$","is_correct":false,"explanation":"Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$249$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=43$."},{"id":"C","text":"$291$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(43)+33$. **Step 2:** $d=291$."},{"id":"D","text":"$258$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=43$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $33$.
**Step 2:** $d=6(43)+33=291$.
**Step 3:** Cross-check via $(43-35)×6+243=291$.

**Step 3 — Answer C.** $291$

**Distractor analysis:**
- **A** ($285$): Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($249$): Adds slope once instead of evaluating at $t=43$.
- **D** ($258$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":2,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b0fa2fc-5350-48e3-a92b-2152391a1ddf', 'Given $x+y=103$ and $3x-y=53$, what is $x$?', 'At an event, 103 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=53$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=103$ and $3x-y=53$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=103+53$ → $4x=208$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=51$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($51$): Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":3,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a75b4d7f-015d-4cb1-9518-7f783a02ee1a', 'Which integer value of $x$ satisfies $5x + 5 > 241$ and is the smallest feasible reading?', 'A reservoir depth $R=ax+b$ must exceed 241 but stay at most 257 to trigger an alert.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$48$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 47.20$. **Step 2:** Smallest integer: 48."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 241$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 236$.
**Step 2:** $x > 47.20$.
**Step 3:** Among choices, $48$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $48$

**Distractor analysis:**
- **A** ($45$): Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($46$): Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($47$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":4,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
