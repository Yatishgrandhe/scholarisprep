BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87503a43-e769-488c-8108-461fe7c1062f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":11,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3b936904-0f71-4ad3-826c-644d22b9bc23', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":12,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('adb38aca-9e93-4bb7-b090-16ae32bd47d7', 'As used in the passage, "bolster" most nearly means', 'A longitudinal analysis of dataset 5412683 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the bolster is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"[Collocation Decoy] \"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"ambiguous\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"[Flat Literal] \"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"[Tone Inversion] \"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:intervention}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: [Collocation Decoy] "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":13,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('824f2554-1c44-4e0b-9bee-ac395e374c44', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 5412820 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"[Partial Scope] The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"[Narrative Speculation] The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"[Structural Inversion] No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:periods}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: [Partial Scope] The passage connects ideas across paragraphs; it is not a random list.
- C: [Narrative Speculation] The passage presents research findings rather than rejecting inquiry.
- D: [Structural Inversion] No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', 'TSP', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":14,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c28a48b3-1bcd-4b14-8e50-448294cb56ad', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2015, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.

Text 2
A 2023 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"[Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"[Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"[Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:displaced}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: [Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: [Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: [Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', 'CTC', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":15,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('197a9cef-8973-42df-b2db-f81a05417314', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 5413094 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"[Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"[Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"[Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:intervention}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: [Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: [Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods.
- D: [Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', 'CID', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":16,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b53776fe-2441-4d70-9090-3e5a20327fb6', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 5413231 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"[Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"[Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"[Inverse Support] Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:intervention}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: [Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures.
- C: [Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled.
- D: [Inverse Support] Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":17,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fdff26fa-c2f6-4673-ae62-3ee93d9a9737', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5413368 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report.

The table summarizes results from the study described above.

| Year | Sample size | Mean score | Std. dev. |
| --- | --- | --- | --- |
| 2018 | 27066890 | 80 | 5 |
| 2019 | 27066905 | 64 | 6 |
| 2020 | 27066920 | 68 | 7 |
| 2021 | 27066935 | 72 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:unrelated}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":18,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cc5ce30-2399-483e-ab68-811d3da474de', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 5413505 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:stable.}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":19,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f8116c6-99fa-49e3-b8f7-9a29bca18172', 'Which choice most logically follows from the passage as a whole?', 'The novelist writing in passage 5413642 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Note current findings
Focus on {{yellow:stable.}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":20,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7fc34017-cbfb-4a44-8bf9-af0d01456310', 'Which choice most logically follows from the passage as a whole?', 'Historians examining archive 5413779 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify stated logic
Focus on {{yellow:stable.}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":21,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7525c45c-3efc-4b97-8298-ca33d1019f1e', 'Which choice completes the text with the most logical transition?', 'Economists analyzing market 5414116 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions. A follow-up survey eighteen months later found that retailers who diversified suppliers during the stall retained higher customer loyalty scores. The authors stress that replication across independent ______ the subsequent section extends the author''s nuanced argument.', 'passage', '[{"id":"A","text":"Qualifying the sweeping claim made in the prior sentence with added nuance,","is_correct":true,"explanation":"Correct (A). Qualifying the sweeping claim made in the prior sentence with added nuance, This participial phrase signals contrast while preserving sentence grammar, matching Digital SAT hard transition expectations."},{"id":"B","text":"Complicating the binary the author has established in the opening paragraphs,","is_correct":false,"explanation":"[Synonym Trap] Complicating the binary the author has established in the opening paragraphs, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"C","text":"Extending the causal chain the author has begun to trace across the study,","is_correct":false,"explanation":"[Category Shift] Extending the causal chain the author has begun to trace across the study, This phrase suggests a different rhetorical relationship than the one required between the two clauses."},{"id":"D","text":"Reinforcing the cumulative case the passage has assembled through converging evidence,","is_correct":false,"explanation":"[Register Clash] Reinforcing the cumulative case the passage has assembled through converging evidence, This phrase suggests a different rhetorical relationship than the one required between the two clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:product}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Qualifying the sweeping claim made in the prior sentence with added nuance,.

Distractor analysis:
- B: [Synonym Trap] Complicating the binary the author has established in the opening paragraphs, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- C: [Category Shift] Extending the causal chain the author has begun to trace across the study, This phrase suggests a different rhetorical relationship than the one required between the two clauses.
- D: [Register Clash] Reinforcing the cumulative case the passage has assembled through converging evidence, This phrase suggests a different rhetorical relationship than the one required between the two clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', 'TRA', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":22,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b99d856-cabe-462a-929b-ea735f2b13f2', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 5403151
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Inspired by humpback whale fin tubercles, prototype 5403151 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Flat-blade turbines remain the industry standard regardless of test outcomes.","is_correct":false,"explanation":"Contradicted by documented underperformance of flat blades."},{"id":"D","text":"Noise monitoring alone proves a turbine design is superior.","is_correct":false,"explanation":"Focuses on noise, not the stated performance goal."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by documented underperformance of flat blades.
- D: Focuses on noise, not the stated performance goal.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":23,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51ab3ef6-d47e-44c8-8300-549652c0f1d3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":24,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ab97da2-a249-4e4c-a4f8-8e56b6884393', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"rw_module_1","slot":25,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
