BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f33b1c3-a832-4707-aa06-c14e35c20ff7', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'The novelist writing in passage 5027425 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The authors caution that replication remains necessary before treating the finding as settled.

The table summarizes results from the study described above.

| Group | Hours studied | Post-test % | Gain |
| --- | --- | --- | --- |
| 2018 | 25137175 | 77 | 5 |
| 2019 | 25137190 | 81 | 6 |
| 2020 | 25137205 | 65 | 7 |
| 2021 | 25137220 | 69 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:variables}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":5,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fe83495-d4c7-4e7c-9b43-8967048365f6', 'Which choice can most reasonably be inferred from the passage?', 'Historians examining archive 5027562 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"[Equivocation Error] Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"[Reverse Conditional] No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:periods}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest suppression.
- B: [Equivocation Error] Too absolute; the passage compares groups under controlled conditions.
- D: [Reverse Conditional] No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":6,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1cb4fca-0e1f-40aa-9934-7160b69c882b', 'Which choice can most reasonably be inferred from the passage?', 'A longitudinal analysis of dataset 5027699 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"[Equivocation Error] Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"[Reverse Conditional] No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Note current findings
Focus on {{yellow:intervention}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest suppression.
- B: [Equivocation Error] Too absolute; the passage compares groups under controlled conditions.
- D: [Reverse Conditional] No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":7,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dadc73be-22c8-4e12-9619-9ce3035181b5', 'Which choice can most reasonably be inferred from the passage?', 'The novelist writing in passage 5027836 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers refused to publish results because findings contradicted their hypothesis.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest suppression."},{"id":"B","text":"Every participant always fails when the studied variable is absent.","is_correct":false,"explanation":"[Equivocation Error] Too absolute; the passage compares groups under controlled conditions."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"Correct (C). Reasonable inference with stated limitations noted in the text."},{"id":"D","text":"The passage lists exact retail prices for all goods mentioned.","is_correct":false,"explanation":"[Reverse Conditional] No pricing information appears."}]'::jsonb, 'C', 'Step 1 — Identify stated logic
Focus on {{yellow:intervention}} in the passage. The implication item asks you to identify stated logic before comparing choices.

Step 2 — Extend with reasonable limits
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the implication
Choice C is correct: The described mechanism could apply beyond the specific example given in the passage..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest suppression.
- B: [Equivocation Error] Too absolute; the passage compares groups under controlled conditions.
- D: [Reverse Conditional] No pricing information appears.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":8,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('416db051-7f92-46d1-a952-cf70139d2692', 'Which choice completes the text with the most logical transition?', 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between failed and successful trials."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] Thus, implies consequence rather than contrast."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Category Shift] Meanwhile, suggests addition or simultaneity where contrast is required."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"[Register Clash] In contrast, introduces example or mismatched relation."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:enrolled}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] Thus, implies consequence rather than contrast.
- C: [Category Shift] Meanwhile, suggests addition or simultaneity where contrast is required.
- D: [Register Clash] In contrast, introduces example or mismatched relation.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', 'TRA', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":9,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c904d1b8-2866-4301-ac43-5493f864cd73', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reef Survey 5017208
• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.
• Temperature and salinity remained stable across compared sites.
• Bare rock patches reappeared only where herbivore populations recovered.
• Policy briefs recommend no-take zones sized to herbivore home ranges.
• Authors caution that local reef geology still influences settlement success.', 'passage', '[{"id":"A","text":"Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore home ranges.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Parrotfish are colorful reef dwellers that tourists enjoy photographing.","is_correct":false,"explanation":"Irrelevant to reef recovery mechanism."},{"id":"C","text":"Temperature changes alone explain all coral recruitment failures in the notes.","is_correct":false,"explanation":"Contradicted by stable temperature in the notes."},{"id":"D","text":"Geology determines settlement success, so fish protection is irrelevant.","is_correct":false,"explanation":"Overstates geology while ignoring documented grazing effects."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain why protecting herbivorous fish matters for reef recovery.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Irrelevant to reef recovery mechanism.
- C: Contradicted by stable temperature in the notes.
- D: Overstates geology while ignoring documented grazing effects.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', 'SYN', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":10,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aa6924c9-fec8-40de-9150-354c041a0487', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', 'BOU', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":11,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('054c8ff4-4b12-445a-8170-5e049d2ab669', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', 'FSS', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":12,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('54ef5807-e5f1-4071-95ab-97ab734d662b', 'As used in the passage, "abstruse" most nearly means', 'A longitudinal analysis of dataset 5028521 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the abstruse is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"incorrect","is_correct":false,"explanation":"[Collocation Decoy] \"incorrect\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"correct meaning","is_correct":true,"explanation":"Correct (B). \"capricious\" fits \"correct meaning\" given the provisional conclusion awaiting replication."},{"id":"C","text":"wrong","is_correct":false,"explanation":"[Flat Literal] \"wrong\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"wrong2","is_correct":false,"explanation":"[Tone Inversion] \"wrong2\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:variables}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: correct meaning.

Distractor analysis:
- A: [Collocation Decoy] "incorrect" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "wrong" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "wrong2" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":13,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('88a7ecdf-c9e3-43d5-a243-f2b9f03c8552', 'Which choice best describes the overall structure of the passage?', 'The novelist writing in passage 5028658 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The passage is organized to compare two organizational responses to the same disruptive problem.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to compare two organizational responses to the same disruptive problem."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"[Partial Scope] The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"[Narrative Speculation] The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"[Structural Inversion] No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:variables}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to compare two organizational responses to the same disruptive problem..

Distractor analysis:
- B: [Partial Scope] The passage connects ideas across paragraphs; it is not a random list.
- C: [Narrative Speculation] The passage presents research findings rather than rejecting inquiry.
- D: [Structural Inversion] No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', 'TSP', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":14,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f38b3f7e-1e4b-40bb-beaf-e55b1b769dcf', 'Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?', 'Text 1
In 2013, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations. Readers should weigh the evidence against

Text 2
A 2021 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations. Readers should weigh the evidence against', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"[Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"[Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"[Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:caution}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: [Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: [Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: [Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', 'CTC', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":15,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a2f0f8e-9d3c-4b56-ae65-9e6bad11b15d', 'According to the passage, which statement is best supported by the text?', 'A longitudinal analysis of dataset 5028932 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Readers should weigh the evidence against limitations the passage explicitly acknowledges. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"[Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"[Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"[Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:stable.}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: [Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: [Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods.
- D: [Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', 'CID', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":16,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('036d45a5-b6c1-41e3-be6a-51abef4a1f1b', 'Which finding from the passage, if true, would best support the author''s claim about organizational adaptation during supply-chain disruption?', 'The novelist writing in passage 5029069 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"National chains never order from wholesalers under any circumstances.","is_correct":false,"explanation":"[Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures."},{"id":"B","text":"Local wholesalers could restock small retailers within days while centralized distribution remained delayed.","is_correct":true,"explanation":"Correct (B). Explains why small retailers adapted quickly via local restocking."},{"id":"C","text":"Supply chains never stall in modern economies.","is_correct":false,"explanation":"[Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled."},{"id":"D","text":"Printed astronomical tables spread faster than camel caravans.","is_correct":false,"explanation":"[Inverse Support] Belongs to a different passage about desert trade."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:variables}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: Local wholesalers could restock small retailers within days while centralized distribution remained delayed..

Distractor analysis:
- A: [Unconditional Support Decoy] Irrelevant to adaptation speed during logistics failures.
- C: [Irrelevant Variable] Contradicts the passage''s premise that supply chains stalled.
- D: [Inverse Support] Belongs to a different passage about desert trade.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":17,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6fa6b617-4c1b-4b69-b46f-62aea0151e69', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'Historians examining archive 5029206 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.

The table summarizes results from the study described above.

| Site | Temperature (°C) | Recruitment rate | Algae cover % |
| --- | --- | --- | --- |
| 2018 | 25146080 | 78 | 5 |
| 2019 | 25146095 | 62 | 6 |
| 2020 | 25146110 | 66 | 7 |
| 2021 | 25146125 | 70 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:appeared,}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":18,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bdd24816-2d7f-4c93-b3b0-37514fee0acf', 'Which choice most logically follows from the passage as a whole?', 'A longitudinal analysis of dataset 5029343 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. The conclusion rests on converging observations rather than a single anecdotal report. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.","is_correct":false,"explanation":"[Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal."},{"id":"B","text":"The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.","is_correct":true,"explanation":"Correct (B). Implication items reward reasonable extension with acknowledged bounds."},{"id":"C","text":"The passage proves that every similar system will behave identically in all future circumstances.","is_correct":false,"explanation":"[Equivocation Error] The passage explicitly cautions against overgeneralization."},{"id":"D","text":"The authors conceal contradictory data that would invalidate the reported pattern.","is_correct":false,"explanation":"[Reverse Conditional] No evidence of concealed data appears in the text."}]'::jsonb, 'B', 'Step 1 — Identify what is stated
Focus on {{yellow:variables}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice B is correct: The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims..

Distractor analysis:
- A: [Speculative Narrative] The passage acknowledges limits but still draws implications; it does not urge total dismissal.
- C: [Equivocation Error] The passage explicitly cautions against overgeneralization.
- D: [Reverse Conditional] No evidence of concealed data appears in the text.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'hard'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"rw_module_2_hard","slot":19,"filter_section":"reading_writing","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
