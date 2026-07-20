BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0d6c8353-99cc-412c-bacb-ab750d616f67', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 5929069 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"[Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"[Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"[Inverse Support] Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:variables}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: [Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures.
- C: [Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled.
- D: [Inverse Support] Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":17,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('781a0504-fe17-43ba-a465-20cb882fe1bf', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5929206 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 29646080 | 78 | 5 |
| 2019 | 29646095 | 62 | 6 |
| 2020 | 29646110 | 66 | 7 |
| 2021 | 29646125 | 70 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:appeared,}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":18,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e0f5b49-01d6-4cac-bd66-d4de3225fd1b', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 5929343 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:variables}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":19,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1a2f600-1c13-4c6c-a339-f7f52d344493', 'Which choice most logically follows from the passage as a whole?', 'The novelist writing in passage 5929480 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Note current findings
Focus on {{yellow:stable.}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":20,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f4f592d4-db92-41db-8bc4-7c2dc38233b7', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 5929617 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:stable.}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":21,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c8b709a-a9c9-4491-b6cb-97acbc5aa0f4', 'Which choice completes the text with the most logical transition?', 'Historians examining trade route 5929954 note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route 5929954 lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language. Recent digitization projects have linked surviving ledger fragments to star-chart marginalia, strengthening the case for integrated commercial and intellectual exchange. The ______ the subsequent section extends the author''s nuanced argument.', 'passage', '[{"id":"A","text":"Complicating the binary the author has established in the opening paragraphs,","is_correct":true,"explanation":"Correct (A). Complicating the binary the author has established in the opening paragraphs, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Building directly on the mechanism described above in the preceding analysis,","is_correct":false,"explanation":"[Synonym Trap] Building directly on the mechanism described above in the preceding analysis, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Adding a parallel example that deepens the same point about methodological limits,","is_correct":false,"explanation":"[Category Shift] Adding a parallel example that deepens the same point about methodological limits, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Blurring the sharp contrast the passage has drawn between the two claims,","is_correct":false,"explanation":"[Register Clash] Blurring the sharp contrast the passage has drawn between the two claims, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:caravan}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Complicating the binary the author has established in the opening paragraphs,.

Distractor analysis:
- B: [Synonym Trap] Building directly on the mechanism described above in the preceding analysis, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: [Category Shift] Adding a parallel example that deepens the same point about methodological limits, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: [Register Clash] Blurring the sharp contrast the passage has drawn between the two claims, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', 'TRA', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":22,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('650dbce3-dbb1-4414-92dc-ffdd89c73137', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 5918989
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Inspired by humpback whale fin tubercles, prototype 5918989 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Flat-blade turbines remain the industry standard regardless of test outcomes.","is_correct":false,"explanation":"Contradicted by documented underperformance of flat blades."},{"id":"D","text":"Noise monitoring alone proves a turbine design is superior.","is_correct":false,"explanation":"Focuses on noise, not the stated performance goal."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by documented underperformance of flat blades.
- D: Focuses on noise, not the stated performance goal.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":23,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a9cc5141-bbda-4416-b0f2-50900d476020', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":24,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a9f3ea5-a33a-42cc-9f44-c901f5717d4b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":25,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b002fb0-0191-4408-a2ac-5d600f8e4821', 'As used in the passage, "intransigent" most nearly means', 'The novelist writing in passage 5930302 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the intransigent is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"[Collocation Decoy] \"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"profligate\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"[Flat Literal] \"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"[Tone Inversion] \"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: [Collocation Decoy] "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"rw_module_2_hard","slot":26,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d7770931-291d-411e-8a7b-40d62b1a49e1', 'Solve for $x$: $3x + 3 = 27$', '', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$7$","is_correct":false,"explanation":"Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 3. **Step 2:** Divide by 3."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $3x + 3 = 27$

**Step 2 — Solve.** **Step 1:** $3x = 24$
**Step 2:** $x = 8$

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($7$): Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":0,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc0b6766-bdcb-434f-94f4-48811c396526', 'Linear function $f$ models temperature. $f(37)=31$ and $f(43)=55$. What is $f(-39)$?', '', NULL, '[{"id":"A","text":"$-269$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-277$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-273$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-39)=-273$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(37)=31$ and $f(43)=55$. What is $f(-39)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{55-31}{43-37}=4$.
**Step 2:** Point-slope: $f(-39)=4(-39-37)+(31)$.
**Step 3:** $f(-39)=-273$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-273$

**Distractor analysis:**
- **A** ($-269$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-277$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":1,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96eb813d-bd14-4af4-870d-9f0177a7a524', 'If the freight train continues at the same rate, what is $d$ when $t=63$?', 'A freight train''s distance $d$ (miles) after $t$ hours is $d=6t+53$. At $t=55$, $d=383$.', 'passage', '[{"id":"A","text":"$425$","is_correct":false,"explanation":"Choice A ($425$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$389$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=63$."},{"id":"C","text":"$431$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(63)+53$. **Step 2:** $d=431$."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=63$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $53$.
**Step 2:** $d=6(63)+53=431$.
**Step 3:** Cross-check via $(63-55)×6+383=431$.

**Step 3 — Answer C.** $431$

**Distractor analysis:**
- **A** ($425$): Choice A ($425$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($389$): Adds slope once instead of evaluating at $t=63$.
- **D** ($378$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":2,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5925a516-ec3f-4ab7-bac4-2cb9c064a4f4', 'Given $x+y=23$ and $3x-y=13$, what is $x$?', 'At an event, 23 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=13$.', 'passage', '[{"id":"A","text":"$12$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=48$. **Step 2:** $x=12$."},{"id":"B","text":"$11$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$13$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=23$ and $3x-y=13$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=23+13$ → $4x=48$.
**Step 2:** $x=12$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $12$

**Distractor analysis:**
- **B** ($11$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":3,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ad3fb992-a148-4663-8bf7-440bb5d086d3', 'Which integer value of $x$ satisfies $5x + 7 > 53$ and is the smallest feasible reading?', 'A soil-moisture reading $R=ax+b$ must exceed 53 but stay at most 69 to trigger an alert.', 'passage', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$10$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 9.20$. **Step 2:** Smallest integer: 10."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 53$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 46$.
**Step 2:** $x > 9.20$.
**Step 3:** Among choices, $10$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $10$

**Distractor analysis:**
- **A** ($7$): Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($8$): Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($9$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":4,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
