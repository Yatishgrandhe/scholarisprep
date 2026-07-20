BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27c63bed-dff4-4f54-83ad-7f927406656e', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 5613231 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"[Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"[Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"[Inverse Support] Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:intervention}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: [Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures.
- C: [Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled.
- D: [Inverse Support] Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":17,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09f7cade-eb51-4aee-b199-bd538a6248fa', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5613368 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Year | Sample size | Mean score | Std. dev. |
| --- | --- | --- | --- |
| 2018 | 28066890 | 80 | 5 |
| 2019 | 28066905 | 64 | 6 |
| 2020 | 28066920 | 68 | 7 |
| 2021 | 28066935 | 72 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:expected}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":18,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7dee58ac-6088-42e7-a63e-24d9746c0ab3', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 5613505 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:stable.}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":19,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06fe3f56-0122-41a3-a849-517a7b48eebc', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'Historians examining archive 5613642 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Note current findings
Focus on {{yellow:stable.}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":20,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76acb05a-44b4-4ca8-8df0-beedfee3f641', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'A longitudinal analysis of dataset 5613779 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:variables}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":21,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4e3ff3c6-75bb-4ea6-94c0-488bc2060163', 'Which choice completes the text with the most logical transition?', 'Economists analyzing market 5614116 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions. A follow-up survey eighteen months later found that retailers who diversified suppliers during the stall retained higher customer loyalty scores. The authors stress that replication across independent ______ the subsequent section extends the author''s nuanced argument.', 'passage', '[{"id":"A","text":"Qualifying the sweeping claim made in the prior sentence with added nuance,","is_correct":true,"explanation":"Correct (A). Qualifying the sweeping claim made in the prior sentence with added nuance, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Grounding the general statement in a specific instance the researchers documented,","is_correct":false,"explanation":"[Synonym Trap] Grounding the general statement in a specific instance the researchers documented, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Undermining the neat separation outlined above between cause and effect,","is_correct":false,"explanation":"[Category Shift] Undermining the neat separation outlined above between cause and effect, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Building directly on the mechanism described above in the preceding analysis,","is_correct":false,"explanation":"[Register Clash] Building directly on the mechanism described above in the preceding analysis, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:product}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Qualifying the sweeping claim made in the prior sentence with added nuance,.

Distractor analysis:
- B: [Synonym Trap] Grounding the general statement in a specific instance the researchers documented, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: [Category Shift] Undermining the neat separation outlined above between cause and effect, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: [Register Clash] Building directly on the mechanism described above in the preceding analysis, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', 'TRA', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":22,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5550db1c-7752-448a-ae0f-de98deb67f8c', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses information from the notes to accomplish this goal?', 'Memory Consolidation Study 5603151
• Participants who slept eight hours recalled word lists more accurately than those kept awake.
• Both groups studied for equal duration under matched conditions.
• Hippocampal imaging subsamples showed differential activation during retrieval.
• Authors plan replication with longer study materials.
• Lab conditions may limit generalization to classroom learning.', 'passage', '[{"id":"A","text":"When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Sleep deprivation improves recall because it increases alertness during testing.","is_correct":false,"explanation":"Contradicted by higher recall in the sleep group."},{"id":"C","text":"Hippocampal imaging proves sleep has no effect on memory.","is_correct":false,"explanation":"Contradicted by documented differential activation."},{"id":"D","text":"Longer study materials would eliminate all differences between groups.","is_correct":false,"explanation":"Speculates beyond the notes'' stated replication plan."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: summarize how sleep affected recall in the controlled study.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Contradicted by higher recall in the sleep group.
- C: Contradicted by documented differential activation.
- D: Speculates beyond the notes'' stated replication plan.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":23,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb9c159f-2136-473c-8313-d74c3055b272', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":24,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c007fd9b-d51e-452c-86a4-5d9a0e041876', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":25,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27c01d2e-f552-4bcc-bfdb-64ef3095153e', 'As used in the passage, "surreptitious" most nearly means', 'Historians examining archive 5614464 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the surreptitious is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"[Collocation Decoy] \"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"veracious\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"[Flat Literal] \"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"[Tone Inversion] \"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:stable.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: [Collocation Decoy] "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_1","slot":26,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":7,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37f3a43b-e147-4bdf-9233-dee08d953b23', 'As used in the passage, "mitigate" most nearly means', 'The novelist writing in passage 5618821 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the mitigate is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"obvious","is_correct":false,"explanation":"[Collocation Decoy] \"obvious\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"fragile or weakly supported","is_correct":true,"explanation":"Correct (B). \"tenuous\" fits \"fragile or weakly supported\" given the provisional conclusion awaiting replication."},{"id":"C","text":"permanent","is_correct":false,"explanation":"[Flat Literal] \"permanent\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"loud","is_correct":false,"explanation":"[Tone Inversion] \"loud\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:measurement}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: fragile or weakly supported.

Distractor analysis:
- A: [Collocation Decoy] "obvious" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "permanent" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "loud" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_2_easy","slot":0,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":7,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('322c24d2-e1bc-4c61-8104-b870570b9723', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 5618958 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"[Partial Scope] The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"[Narrative Speculation] The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"[Structural Inversion] No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:cycles,}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: [Partial Scope] The passage connects ideas across paragraphs; it is not a random list.
- C: [Narrative Speculation] The passage presents research findings rather than rejecting inquiry.
- D: [Structural Inversion] No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', 'TSP', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_2_easy","slot":1,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":7,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ede5988a-8671-4590-bf0e-1eda00e99246', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2013, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2025 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"[Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"[Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"[Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: [Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: [Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: [Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', 'CTC', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_2_easy","slot":2,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":7,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36224ce3-2b9a-47d0-91de-d0819d38e91a', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 5619232 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"[Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"[Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"[Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: [Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: [Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods.
- D: [Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', 'CID', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_2_easy","slot":3,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":7,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d1ceec4-f828-4cbb-a2fe-f478c6e3b37f', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'Historians examining archive 5619369 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"[Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"[Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"[Inverse Support] Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:cycles,}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: [Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures.
- C: [Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled.
- D: [Inverse Support] Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":7,"module_key":"rw_module_2_easy","slot":4,"filter_section":"reading_writing","module_index":2,"m2_variant":"easy","form_hardness":7,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
