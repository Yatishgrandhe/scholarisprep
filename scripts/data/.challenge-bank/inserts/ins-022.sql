BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0e6b0161-a928-4d8f-9872-83333cbb8577', 'Which choice most logically and necessarily completes the text, based only on the information given above?', 'In comparative poetics, the model holds that A produces B, and that B in turn produces C; where C is the observable signature of the process, its absence is recorded. The text notes that an unmeasured cofactor could also, in principle, prevent C, but it does not establish whether that factor is present, nor does it report the status of B. The account stops short of stating what the absence of C entails.', 'passage', '[{"id":"A","text":"It follows that the absent C was caused by an outside inhibitor. Because some external factor can block C, the observed absence proves that factor was at work —if the buried subordinate clause is weighed.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"It follows that an unmeasured cofactor must be responsible for the missing C. Because the text mentions this factor, its mere possibility is enough to fix the cause —if the buried subordinate clause is weighed.","is_correct":false,"explanation":"[Affirming the Consequent] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"It follows that A did not occur. Because A produces B and B produces C, the contrapositive yields not-A from not-C, using only the stated links —if the buried subordinate clause is weighed.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"D","text":"It follows that B was elevated rather than absent. Because C is absent, its precursor must have risen rather than failed —if the buried subordinate clause is weighed.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'C', 'Logical Reconstruction:
Step 1: State the chain: A → B → C.
Step 2: Observe ¬C.
Step 3: Apply the contrapositive: ¬C → ¬B → ¬A, importing no external cause.
Step 4: Reject any choice that names an unverified alternative cause as a speculative leap.

Key Explanation: Choice C is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Affirming the Consequent]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of contrapositive mechanistic chain in which a plausible alternative cause is named but never ruled out, baiting a speculative completion.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"general","rw_format":"passage_mc","challenge_key":"INF"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1929084b-50c2-4969-a0cf-e0221f0f52f9', 'Which choice completes the text with the most logical and precise word or phrase?', 'In philosophy of biology, the standard view holds that early practitioners merely refined an inherited method; the more careful reading—one that attends to a qualification buried in a subordinate clause—suggests instead that they sought to close the method''s reach, bounding rather than extending it. Granting the surface impression of growth, the evidence nonetheless shows the practitioners working to close the very ambitions their successors would later celebrate, a restraint that the triumphalist chronology, attentive only to outcomes, cannot register.', 'passage', '[{"id":"A","text":"The word \"close,\" in its ordinary sense, means to detain or seize. This sense does not fit because nothing in the clause involves seizure or capture —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Collocation Decoy] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"The word \"close,\" in a looser sense, means to encourage or advance. This sense does not fit because it reverses the restraint the qualifier establishes —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"The word \"close,\" in a connotative sense, means to celebrate openly. This sense does not fit because the passage''s tone is analytic, not celebratory —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Reverse Trap] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"The word \"close,\" in its specialized sense, means rigorously precise. This sense fits because the clause opposes restraint to the successors'' ambitions —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: Identify the contrast: surface growth versus a buried qualification signalling restraint.
Step 2: Suppress the common senses of the word that collocate with the topic of progress.
Step 3: Select the rare sense that completes the restraint–ambition opposition precisely.
Step 4: Only "rigorously precise" satisfies the syntactic position of the blank.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Collocation Decoy]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [Reverse Trap]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of polysemous suppression: the blank requires the word''s rarest domain sense while three more common senses collocate naturally with the topic.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","challenge_key":"WIC"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d390a7fd-7489-4440-a76d-84ebb509e6e6', 'Which choice best describes the overall structure of the text?', 'Within philosophy of biology, the stratification of tacit craft knowledge has long been read as straightforward progress, a reading that an isolated provincial school—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. What that account treats as teleonomy, however, the recurrent anomaly reframes: the apparent advance, far from being intrinsic, was conditioned by an institutional canalization that the standard narrative cannot model. Granting that the correlation is genuine, one must still resist the inference that it is causal, for the same configuration recurs but solely where a prior constraint happens to hold.', 'passage', '[{"id":"A","text":"The text opens by foregrounding a conventional reading of its subject. It then endorses the critique outright, stopping at the concession without complicating it further —under the scope the passage actually licenses, in the passage''s own terms.","is_correct":false,"explanation":"[Rhetorical Misclassification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"The text opens by foregrounding a conventional reading of its subject. It then identifies the structural reversal but misattributes it to the original theory rather than to the critic''s alternative —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Rhetorical Misclassification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"The text opens by foregrounding a conventional reading of its subject. It then proposes a wholly new alternative, treating the prior positions as superseded —under the scope the passage actually licenses, given the stated qualifiers.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"The text opens by foregrounding a conventional reading of its subject. It then concedes part of a critique only to show that the critic''s own alternative reproduces the flaw, undermining the critique on structural grounds —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: Move 1: a conventional theory and its critique are introduced.
Step 2: Move 2: the critique is partially, not fully, conceded.
Step 3: Move 3: the critic''s own alternative is shown to replicate the flaw under a condition.
Step 4: The correct choice names that structural self-undermining; others stop at the concession or invent a new proposal.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Rhetorical Misclassification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Rhetorical Misclassification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of non-linear three-move rhetorical concession requiring structural discrimination between qualifying an endorsement and conceding a structural limitation.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"structure","rw_format":"passage_mc","challenge_key":"TSP"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e7aee99c-b41e-4776-91a6-2a089ac48722', 'Based on the texts, how would the author of Text 2 most likely respond to the causal claim in Text 1?', 'Text 1
Text 1 assigns causal primacy to the stratification of tacit craft knowledge in philosophy of biology, treating the indexed factor as the engine of the observed pattern.

Text 2
Accepting the correlation Text 1 documents, this account nonetheless contends that the persistence of a discredited taxonomy and that pattern are alike downstream of a deeper parataxis, so that what Text 1 elevates to a primary cause is, on closer inspection, a secondary epiphenomenon its framework is constitutively unable to name.', 'passage', '[{"id":"A","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author objects that the correlation is statistical noise unlikely to replicate in further samples —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Reciprocal Error] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author attributes to Text 1 the very deeper-cause claim that belongs to the second account —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Reverse Trap] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author concludes that the phenomenon should be abandoned as an object of study entirely —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author reframes Text 1''s privileged cause as a secondary epiphenomenon of a deeper variable the first framework cannot name —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: Text 1 assigns causal primacy to a named variable.
Step 2: Text 2 accepts the observation but relocates causation to an unnamed deeper variable.
Step 3: Distinguish an ontological reframing from a statistical objection.
Step 4: Only the choice naming the epiphenomenon reframing captures Text 2''s move.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Reciprocal Error]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Reverse Trap]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of ontological reframing under full empirical agreement: Text 2 accepts every observation yet relocates the causal primacy Text 1 asserts.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"cross_text_response","rw_format":"text_1_text_2","challenge_key":"CTC"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1a4a0b09-9a68-42f7-87d8-44bce576cc50', 'Which choice best states the main idea of the text?', 'Within philosophy of biology, the stratification of tacit craft knowledge has long been read as straightforward progress, a reading that an isolated provincial school—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. What that account treats as teleonomy, however, the recurrent anomaly reframes: the apparent advance, far from being intrinsic, was conditioned by an institutional canalization that the standard narrative cannot model. Granting that the correlation is genuine, one must still resist the inference that it is causal, for the same configuration recurs but solely where a prior constraint happens to hold.', 'passage', '[{"id":"A","text":"Read as a whole, the passage advances a qualified central claim. The opening impression of straightforward progress is, in fact, the passage''s settled thesis —under the scope the passage actually licenses.","is_correct":false,"explanation":"[False Lead] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"Read as a whole, the passage advances a qualified central claim. Because the pattern is causal, the institutional condition it produces must be its effect rather than its source —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Reciprocal Error] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"Read as a whole, the passage advances a qualified central claim. No correlation of this kind can ever, in any field, license a causal inference —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Read as a whole, the passage advances a qualified central claim. A documented correlation is real but not causal, since the same pattern recurs where the supposed mechanism is absent —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: The opening sentence is a False Lead: the view the author complicates.
Step 2: The middle concedes the correlation is genuine.
Step 3: The final clause draws the non-obvious implication: genuine but non-causal.
Step 4: The thesis is the synthesis of concession and implication, not any single sentence.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [False Lead]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Reciprocal Error]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of False-Lead architecture requiring synthesis of a mid-passage concession with a counter-intuitive final structural implication.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"main_idea","rw_format":"passage_mc","challenge_key":"CID"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('10322884-226b-421c-93a4-4ca98939306d', 'Which finding, if true, would most directly support the team''s full hypothesis?', 'A research team in philosophy of biology hypothesizes that intervention A raises outcome B, but only when context C is active and only when baseline parameter D remains below a threshold of 60 units; when D exceeds 60, the relationship is predicted to invert regardless of C. The team seeks the single observation that would confirm the full conditional rather than any part of it.', 'passage', '[{"id":"A","text":"In a trial with C active and D at 72 units, A was applied. Outcome B fell, which violates the primary case because D exceeded the stated threshold —under the scope the passage actually licenses, in the passage''s own terms.","is_correct":false,"explanation":"[Under-Specification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"In a trial with C inactive and D at 50 units, A was applied. Outcome B did not rise, which is uninformative because context C was not active —under the scope the passage actually licenses, as the argument is staged.","is_correct":false,"explanation":"[Under-Specification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"In a trial in which A was withheld entirely, the team measured B. B was unchanged, which tests a different relationship than the hypothesis specifies —under the scope the passage actually licenses, given the stated qualifiers.","is_correct":false,"explanation":"[True-But-Irrelevant] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"In a trial with C active and D at 52 units, A was applied. Outcome B rose, and a paired trial with D above threshold showed B falling — confirming both the primary case and the inversion —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: List the conditions: A raises B only if C active AND D below T; above T it inverts.
Step 2: A correct finding must verify the primary case AND the inversion together.
Step 3: Eliminate findings that satisfy only one dependency or test A''s absence.
Step 4: Only the paired observation across the threshold confirms the full conditional.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Under-Specification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Under-Specification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [True-But-Irrelevant]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of double-conditional hypothesis with an interactive variable and a baseline-threshold inversion case.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"textual_evidence","rw_format":"passage_mc","challenge_key":"COE_T"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9c531cec-d8d1-4d91-81c5-818715d34940', 'Which choice best uses data from the table to evaluate the researchers'' hypothesis?', 'Researchers compared soil-carbon storage under two methods across two depths after twenty years. They hypothesize that Method A increases storage relative to Method B at shallow depth, but that at deep depth the relationship inverts.

The table summarizes the results.

| Method | Shallow (20 yr) | Deep (20 yr) |
| --- | --- | --- |
| A | $18\text{ g/kg}$ | $27\text{ g/kg}$ |
| B | $11\text{ g/kg}$ | $7\text{ g/kg}$ |', 'passage', '[{"id":"A","text":"At deep depth, A recorded $27\\text{ g/kg}$ versus B''s $7\\text{ g/kg}$. Read from the wrong row, this cites deep-depth values to judge a shallow-depth claim and misverifies the inversion —under the scope the passage actually licenses, in the passage''s own terms, as the argument is staged, given the stated qualifiers.","is_correct":false,"explanation":"[Data Misread] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"Across the shallow row, the two methods differ by $7\\text{ g/kg}$. This is an accurate shallow-row gap but says nothing about whether the relationship inverts at depth —under the scope the passage actually licenses, as the argument is staged, given the stated qualifiers, on the evidence presented.","is_correct":false,"explanation":"[True-But-Irrelevant] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"Method B''s storage declines from shallow to deep by $4\\text{ g/kg}$. This is an accurate within-method trend but does not compare A and B as the hypothesis requires —under the scope the passage actually licenses, given the stated qualifiers, on the evidence presented, within the limits set out.","is_correct":false,"explanation":"[Partial Match] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"At shallow depth, A recorded $18\\text{ g/kg}$ versus B''s $11\\text{ g/kg}$. A exceeds B at shallow depth, and since A also exceeds B at deep depth, only the shallow case fits while the inversion fails — so this supports the claim only where both rows are read together —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: Identify shallow cells: A=$18$, B=$11$ (A>B).
Step 2: Identify deep cells: A=$27$, B=$7$ — verify whether A>B inverts.
Step 3: The hypothesis needs the shallow advantage AND a deep inversion.
Step 4: Only the choice that compares both rows can confirm or deny the full conditional.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Data Misread]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [True-But-Irrelevant]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [Partial Match]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of double-conditional quantitative verification requiring cell-level calculation across both the primary case and the inversion case.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"quantitative_table","rw_format":"table_chart","challenge_key":"COE_Q"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4ea0f329-e740-4f6a-8fa7-7877c62cd509', 'Which choice most logically and necessarily completes the text, based only on the information given above?', 'In philosophy of biology, the model holds that A produces B, and that B in turn produces C; where C is the observable signature of the process, its absence is recorded. The text notes that a parallel pathway could also, in principle, prevent C, but it does not establish whether that factor is present, nor does it report the status of B. The account stops short of stating what the absence of C entails.', 'passage', '[{"id":"A","text":"It follows that the absent C was caused by an outside inhibitor. Because some external factor can block C, the observed absence proves that factor was at work —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"It follows that a parallel pathway must be responsible for the missing C. Because the text mentions this factor, its mere possibility is enough to fix the cause —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Affirming the Consequent] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"It follows that B was elevated rather than absent. Because C is absent, its precursor must have risen rather than failed —under the scope the passage actually licenses.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"It follows that A did not occur. Because A produces B and B produces C, the contrapositive yields not-A from not-C, using only the stated links —under the scope the passage actually licenses.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."}]'::jsonb, 'D', 'Logical Reconstruction:
Step 1: State the chain: A → B → C.
Step 2: Observe ¬C.
Step 3: Apply the contrapositive: ¬C → ¬B → ¬A, importing no external cause.
Step 4: Reject any choice that names an unverified alternative cause as a speculative leap.

Key Explanation: Choice D is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice B [Affirming the Consequent]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice C [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of contrapositive mechanistic chain in which a plausible alternative cause is named but never ruled out, baiting a speculative completion.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"general","rw_format":"passage_mc","challenge_key":"INF"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('16b21d09-adad-478f-9d91-5d258a141cb1', 'Which choice completes the text with the most logical and precise word or phrase?', 'In philosophy of science, the standard view holds that early practitioners merely refined an inherited method; the more careful reading—one that attends to a qualification buried in a subordinate clause—suggests instead that they sought to arrest the method''s reach, bounding rather than extending it. Granting the surface impression of growth, the evidence nonetheless shows the practitioners working to arrest the very ambitions their successors would later celebrate, a restraint that the triumphalist chronology, attentive only to outcomes, cannot register.', 'passage', '[{"id":"A","text":"The word \"arrest,\" in its specialized sense, means to halt or check a process. This sense fits because the clause opposes restraint to the successors'' ambitions —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"The word \"arrest,\" in its ordinary sense, means to detain or seize. This sense does not fit because nothing in the clause involves seizure or capture —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Collocation Decoy] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"The word \"arrest,\" in a looser sense, means to encourage or advance. This sense does not fit because it reverses the restraint the qualifier establishes —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"The word \"arrest,\" in a connotative sense, means to celebrate openly. This sense does not fit because the passage''s tone is analytic, not celebratory —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Reverse Trap] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: Identify the contrast: surface growth versus a buried qualification signalling restraint.
Step 2: Suppress the common senses of the word that collocate with the topic of progress.
Step 3: Select the rare sense that completes the restraint–ambition opposition precisely.
Step 4: Only "to halt or check a process" satisfies the syntactic position of the blank.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [Collocation Decoy]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Reverse Trap]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of polysemous suppression: the blank requires the word''s rarest domain sense while three more common senses collocate naturally with the topic.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","challenge_key":"WIC"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('18ca58b8-2398-4fa8-9e85-0d942c308988', 'Which choice best describes the overall structure of the text?', 'Within philosophy of science, the institutionalization of peer evaluation has long been read as straightforward progress, a reading that a circle of self-taught practitioners—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. What that account treats as underdetermination, however, the tabulated divergence reframes: the apparent advance, far from being intrinsic, was conditioned by an institutional theory-ladenness that the standard narrative cannot model. Granting that the correlation is genuine, one must still resist the inference that it is causal, for the same configuration recurs except in the cases its own framework cannot index.', 'passage', '[{"id":"A","text":"The text opens by foregrounding a conventional reading of its subject. It then concedes part of a critique only to show that the critic''s own alternative reproduces the flaw, undermining the critique on structural grounds —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"The text opens by foregrounding a conventional reading of its subject. It then endorses the critique outright, stopping at the concession without complicating it further —as the evidence, read in full, requires, as the argument is staged.","is_correct":false,"explanation":"[Rhetorical Misclassification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"The text opens by foregrounding a conventional reading of its subject. It then identifies the structural reversal but misattributes it to the original theory rather than to the critic''s alternative —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Rhetorical Misclassification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"The text opens by foregrounding a conventional reading of its subject. It then proposes a wholly new alternative, treating the prior positions as superseded —as the evidence, read in full, requires, on the evidence presented.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: Move 1: a conventional theory and its critique are introduced.
Step 2: Move 2: the critique is partially, not fully, conceded.
Step 3: Move 3: the critic''s own alternative is shown to replicate the flaw under a condition.
Step 4: The correct choice names that structural self-undermining; others stop at the concession or invent a new proposal.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [Rhetorical Misclassification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Rhetorical Misclassification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of non-linear three-move rhetorical concession requiring structural discrimination between qualifying an endorsement and conceding a structural limitation.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"structure","rw_format":"passage_mc","challenge_key":"TSP"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('92cf6870-1ddc-471d-b5cb-bf99be8ab359', 'Based on the texts, how would the author of Text 2 most likely respond to the causal claim in Text 1?', 'Text 1
Text 1 assigns causal primacy to the institutionalization of peer evaluation in philosophy of science, treating X as the engine of the observed pattern.

Text 2
Accepting the correlation Text 1 documents, this account nonetheless contends that the reappraisal of a marginal archive and that pattern are alike downstream of a deeper decoherence, so that what Text 1 elevates to a primary cause is, on closer inspection, a secondary epiphenomenon its framework is constitutively unable to name.', 'passage', '[{"id":"A","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author reframes Text 1''s privileged cause as a secondary epiphenomenon of a deeper variable the first framework cannot name —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author objects that the correlation is statistical noise unlikely to replicate in further samples —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Reciprocal Error] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author attributes to Text 1 the very deeper-cause claim that belongs to the second account —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Reverse Trap] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author concludes that the phenomenon should be abandoned as an object of study entirely —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: Text 1 assigns causal primacy to a named variable.
Step 2: Text 2 accepts the observation but relocates causation to an unnamed deeper variable.
Step 3: Distinguish an ontological reframing from a statistical objection.
Step 4: Only the choice naming the epiphenomenon reframing captures Text 2''s move.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [Reciprocal Error]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Reverse Trap]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of ontological reframing under full empirical agreement: Text 2 accepts every observation yet relocates the causal primacy Text 1 asserts.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"cross_text_response","rw_format":"text_1_text_2","challenge_key":"CTC"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c8ca3708-d570-4d9e-b761-3b10b58a5d58', 'Which choice best states the main idea of the text?', 'Within philosophy of science, the institutionalization of peer evaluation has long been read as straightforward progress, a reading that a circle of self-taught practitioners—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. What that account treats as underdetermination, however, the tabulated divergence reframes: the apparent advance, far from being intrinsic, was conditioned by an institutional theory-ladenness that the standard narrative cannot model. Granting that the correlation is genuine, one must still resist the inference that it is causal, for the same configuration recurs except in the cases its own framework cannot index.', 'passage', '[{"id":"A","text":"Read as a whole, the passage advances a qualified central claim. A documented correlation is real but not causal, since the same pattern recurs where the supposed mechanism is absent —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"Read as a whole, the passage advances a qualified central claim. The opening impression of straightforward progress is, in fact, the passage''s settled thesis —as the evidence, read in full, requires.","is_correct":false,"explanation":"[False Lead] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"Read as a whole, the passage advances a qualified central claim. Because the pattern is causal, the institutional condition it produces must be its effect rather than its source —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Reciprocal Error] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Read as a whole, the passage advances a qualified central claim. No correlation of this kind can ever, in any field, license a causal inference —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: The opening sentence is a False Lead: the view the author complicates.
Step 2: The middle concedes the correlation is genuine.
Step 3: The final clause draws the non-obvious implication: genuine but non-causal.
Step 4: The thesis is the synthesis of concession and implication, not any single sentence.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [False Lead]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Reciprocal Error]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of False-Lead architecture requiring synthesis of a mid-passage concession with a counter-intuitive final structural implication.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"main_idea","rw_format":"passage_mc","challenge_key":"CID"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f0bf7ae5-7737-4e2a-99b0-6175f61a9be3', 'Which finding, if true, would most directly support the team''s full hypothesis?', 'A research team in philosophy of science hypothesizes that intervention A raises outcome B, but only when context C is active and only when baseline parameter D remains below a threshold of 40 units; when D exceeds 40, the relationship is predicted to invert regardless of C. The team seeks the single observation that would confirm the full conditional rather than any part of it.', 'passage', '[{"id":"A","text":"In a trial with C active and D at 32 units, A was applied. Outcome B rose, and a paired trial with D above threshold showed B falling — confirming both the primary case and the inversion —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"In a trial with C active and D at 52 units, A was applied. Outcome B fell, which violates the primary case because D exceeded the stated threshold —as the evidence, read in full, requires, as the argument is staged.","is_correct":false,"explanation":"[Under-Specification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"In a trial with C inactive and D at 30 units, A was applied. Outcome B did not rise, which is uninformative because context C was not active —as the evidence, read in full, requires, given the stated qualifiers.","is_correct":false,"explanation":"[Under-Specification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"In a trial in which A was withheld entirely, the team measured B. B was unchanged, which tests a different relationship than the hypothesis specifies —as the evidence, read in full, requires, on the evidence presented.","is_correct":false,"explanation":"[True-But-Irrelevant] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: List the conditions: A raises B only if C active AND D below T; above T it inverts.
Step 2: A correct finding must verify the primary case AND the inversion together.
Step 3: Eliminate findings that satisfy only one dependency or test A''s absence.
Step 4: Only the paired observation across the threshold confirms the full conditional.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [Under-Specification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Under-Specification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [True-But-Irrelevant]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of double-conditional hypothesis with an interactive variable and a baseline-threshold inversion case.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"textual_evidence","rw_format":"passage_mc","challenge_key":"COE_T"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('38112c0e-cf98-4e27-88ea-2dea2c75ff40', 'Which choice best uses data from the table to evaluate the researchers'' hypothesis?', 'Researchers compared soil-carbon storage under two methods across two depths after twenty years. They hypothesize that Method A increases storage relative to Method B at shallow depth, but that at deep depth the relationship inverts.

The table summarizes the results.

| Method | Shallow (20 yr) | Deep (20 yr) |
| --- | --- | --- |
| A | $19\text{ g/kg}$ | $25\text{ g/kg}$ |
| B | $14\text{ g/kg}$ | $12\text{ g/kg}$ |', 'passage', '[{"id":"A","text":"At shallow depth, A recorded $19\\text{ g/kg}$ versus B''s $14\\text{ g/kg}$. A exceeds B at shallow depth, and since A also exceeds B at deep depth, only the shallow case fits while the inversion fails — so this supports the claim only where both rows are read together —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"At deep depth, A recorded $25\\text{ g/kg}$ versus B''s $12\\text{ g/kg}$. Read from the wrong row, this cites deep-depth values to judge a shallow-depth claim and misverifies the inversion —as the evidence, read in full, requires, as the argument is staged, given the stated qualifiers, on the evidence presented.","is_correct":false,"explanation":"[Data Misread] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"Across the shallow row, the two methods differ by $5\\text{ g/kg}$. This is an accurate shallow-row gap but says nothing about whether the relationship inverts at depth —as the evidence, read in full, requires, given the stated qualifiers, on the evidence presented, within the limits set out.","is_correct":false,"explanation":"[True-But-Irrelevant] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Method B''s storage declines from shallow to deep by $2\\text{ g/kg}$. This is an accurate within-method trend but does not compare A and B as the hypothesis requires —as the evidence, read in full, requires, on the evidence presented, within the limits set out, as the text finally frames it.","is_correct":false,"explanation":"[Partial Match] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: Identify shallow cells: A=$19$, B=$14$ (A>B).
Step 2: Identify deep cells: A=$25$, B=$12$ — verify whether A>B inverts.
Step 3: The hypothesis needs the shallow advantage AND a deep inversion.
Step 4: Only the choice that compares both rows can confirm or deny the full conditional.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [Data Misread]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [True-But-Irrelevant]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Partial Match]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of double-conditional quantitative verification requiring cell-level calculation across both the primary case and the inversion case.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"quantitative_table","rw_format":"table_chart","challenge_key":"COE_Q"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fcd4abe3-8cc4-477f-8bd3-c358625db377', 'Which choice most logically and necessarily completes the text, based only on the information given above?', 'In philosophy of science, the model holds that A produces B, and that B in turn produces C; where C is the observable signature of the process, its absence is recorded. The text notes that a competing inhibitor could also, in principle, prevent C, but it does not establish whether that factor is present, nor does it report the status of B. The account stops short of stating what the absence of C entails.', 'passage', '[{"id":"A","text":"It follows that A did not occur. Because A produces B and B produces C, the contrapositive yields not-A from not-C, using only the stated links —as the evidence, read in full, requires.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"B","text":"It follows that the absent C was caused by an outside inhibitor. Because some external factor can block C, the observed absence proves that factor was at work —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"C","text":"It follows that a competing inhibitor must be responsible for the missing C. Because the text mentions this factor, its mere possibility is enough to fix the cause —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Affirming the Consequent] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"It follows that B was elevated rather than absent. Because C is absent, its precursor must have risen rather than failed —as the evidence, read in full, requires.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'A', 'Logical Reconstruction:
Step 1: State the chain: A → B → C.
Step 2: Observe ¬C.
Step 3: Apply the contrapositive: ¬C → ¬B → ¬A, importing no external cause.
Step 4: Reject any choice that names an unverified alternative cause as a speculative leap.

Key Explanation: Choice A is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice B [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Affirming the Consequent]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of contrapositive mechanistic chain in which a plausible alternative cause is named but never ruled out, baiting a speculative completion.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"general","rw_format":"passage_mc","challenge_key":"INF"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('19654ff0-f934-4a25-91cc-b3cfb7176ce3', 'Which choice completes the text with the most logical and precise word or phrase?', 'In cognitive linguistics, the standard view holds that early practitioners merely refined an inherited method; the more careful reading—one that attends to a qualification buried in a subordinate clause—suggests instead that they sought to suffer the method''s reach, bounding rather than extending it. Granting the surface impression of growth, the evidence nonetheless shows the practitioners working to suffer the very ambitions their successors would later celebrate, a restraint that the triumphalist chronology, attentive only to outcomes, cannot register.', 'passage', '[{"id":"A","text":"The word \"suffer,\" in its ordinary sense, means to detain or seize. This sense does not fit because nothing in the clause involves seizure or capture —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Collocation Decoy] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"The word \"suffer,\" in its specialized sense, means to permit or allow. This sense fits because the clause opposes restraint to the successors'' ambitions —a distinction the passage stages deliberately.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"C","text":"The word \"suffer,\" in a looser sense, means to encourage or advance. This sense does not fit because it reverses the restraint the qualifier establishes —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"The word \"suffer,\" in a connotative sense, means to celebrate openly. This sense does not fit because the passage''s tone is analytic, not celebratory —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Reverse Trap] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'B', 'Logical Reconstruction:
Step 1: Identify the contrast: surface growth versus a buried qualification signalling restraint.
Step 2: Suppress the common senses of the word that collocate with the topic of progress.
Step 3: Select the rare sense that completes the restraint–ambition opposition precisely.
Step 4: Only "to permit or allow" satisfies the syntactic position of the blank.

Key Explanation: Choice B is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Collocation Decoy]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Reverse Trap]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of polysemous suppression: the blank requires the word''s rarest domain sense while three more common senses collocate naturally with the topic.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","challenge_key":"WIC"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a1868599-6e5b-4003-b347-68a1c598ed7f', 'Which choice best describes the overall structure of the text?', 'Within cognitive linguistics, the diffusion of an experimental technique has long been read as straightforward progress, a reading that the discipline''s founders—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. What that account treats as construal, however, the documented drift reframes: the apparent advance, far from being intrinsic, was conditioned by an institutional schematicity that the standard narrative cannot model. Granting that the correlation is genuine, one must still resist the inference that it is causal, for the same configuration recurs only under conditions the standard account leaves tacit.', 'passage', '[{"id":"A","text":"The text opens by foregrounding a conventional reading of its subject. It then endorses the critique outright, stopping at the concession without complicating it further —a distinction the passage stages deliberately, in the passage''s own terms.","is_correct":false,"explanation":"[Rhetorical Misclassification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"The text opens by foregrounding a conventional reading of its subject. It then concedes part of a critique only to show that the critic''s own alternative reproduces the flaw, undermining the critique on structural grounds —a distinction the passage stages deliberately.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"C","text":"The text opens by foregrounding a conventional reading of its subject. It then identifies the structural reversal but misattributes it to the original theory rather than to the critic''s alternative —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Rhetorical Misclassification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"The text opens by foregrounding a conventional reading of its subject. It then proposes a wholly new alternative, treating the prior positions as superseded —a distinction the passage stages deliberately, on the evidence presented.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'B', 'Logical Reconstruction:
Step 1: Move 1: a conventional theory and its critique are introduced.
Step 2: Move 2: the critique is partially, not fully, conceded.
Step 3: Move 3: the critic''s own alternative is shown to replicate the flaw under a condition.
Step 4: The correct choice names that structural self-undermining; others stop at the concession or invent a new proposal.

Key Explanation: Choice B is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Rhetorical Misclassification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Rhetorical Misclassification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of non-linear three-move rhetorical concession requiring structural discrimination between qualifying an endorsement and conceding a structural limitation.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"structure","rw_format":"passage_mc","challenge_key":"TSP"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8e4c04c0-4881-407d-bf32-c33e1a474e66', 'Based on the texts, how would the author of Text 2 most likely respond to the causal claim in Text 1?', 'Text 1
Text 1 assigns causal primacy to the diffusion of an experimental technique in cognitive linguistics, treating the privileged variable as the engine of the observed pattern.

Text 2
Accepting the correlation Text 1 documents, this account nonetheless contends that the re-dating of a contested artifact and that pattern are alike downstream of a deeper theory-ladenness, so that what Text 1 elevates to a primary cause is, on closer inspection, a secondary epiphenomenon its framework is constitutively unable to name.', 'passage', '[{"id":"A","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author objects that the correlation is statistical noise unlikely to replicate in further samples —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Reciprocal Error] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author reframes Text 1''s privileged cause as a secondary epiphenomenon of a deeper variable the first framework cannot name —a distinction the passage stages deliberately.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"C","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author attributes to Text 1 the very deeper-cause claim that belongs to the second account —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Reverse Trap] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Text 2''s author accepts the empirical correlation Text 1 documents. Yet the author concludes that the phenomenon should be abandoned as an object of study entirely —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Speculative Narrative] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'B', 'Logical Reconstruction:
Step 1: Text 1 assigns causal primacy to a named variable.
Step 2: Text 2 accepts the observation but relocates causation to an unnamed deeper variable.
Step 3: Distinguish an ontological reframing from a statistical objection.
Step 4: Only the choice naming the epiphenomenon reframing captures Text 2''s move.

Key Explanation: Choice B is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Reciprocal Error]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Reverse Trap]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Speculative Narrative]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of ontological reframing under full empirical agreement: Text 2 accepts every observation yet relocates the causal primacy Text 1 asserts.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"cross_text_response","rw_format":"text_1_text_2","challenge_key":"CTC"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('03d1f157-2ec7-483a-891a-9ce2ed4fadd7', 'Which choice best states the main idea of the text?', 'Within cognitive linguistics, the diffusion of an experimental technique has long been read as straightforward progress, a reading that the discipline''s founders—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. What that account treats as construal, however, the documented drift reframes: the apparent advance, far from being intrinsic, was conditioned by an institutional schematicity that the standard narrative cannot model. Granting that the correlation is genuine, one must still resist the inference that it is causal, for the same configuration recurs only under conditions the standard account leaves tacit.', 'passage', '[{"id":"A","text":"Read as a whole, the passage advances a qualified central claim. The opening impression of straightforward progress is, in fact, the passage''s settled thesis —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[False Lead] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"Read as a whole, the passage advances a qualified central claim. A documented correlation is real but not causal, since the same pattern recurs where the supposed mechanism is absent —a distinction the passage stages deliberately.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"C","text":"Read as a whole, the passage advances a qualified central claim. Because the pattern is causal, the institutional condition it produces must be its effect rather than its source —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Reciprocal Error] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"Read as a whole, the passage advances a qualified central claim. No correlation of this kind can ever, in any field, license a causal inference —a distinction the passage stages deliberately.","is_correct":false,"explanation":"[Over-Extrapolation] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'B', 'Logical Reconstruction:
Step 1: The opening sentence is a False Lead: the view the author complicates.
Step 2: The middle concedes the correlation is genuine.
Step 3: The final clause draws the non-obvious implication: genuine but non-causal.
Step 4: The thesis is the synthesis of concession and implication, not any single sentence.

Key Explanation: Choice B is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [False Lead]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Reciprocal Error]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [Over-Extrapolation]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of False-Lead architecture requiring synthesis of a mid-passage concession with a counter-intuitive final structural implication.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"main_idea","rw_format":"passage_mc","challenge_key":"CID"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('199889a5-2b82-4566-b3ea-1dd1cf637c04', 'Which finding, if true, would most directly support the team''s full hypothesis?', 'A research team in cognitive linguistics hypothesizes that intervention A raises outcome B, but only when context C is active and only when baseline parameter D remains below a threshold of 45 units; when D exceeds 45, the relationship is predicted to invert regardless of C. The team seeks the single observation that would confirm the full conditional rather than any part of it.', 'passage', '[{"id":"A","text":"In a trial with C active and D at 57 units, A was applied. Outcome B fell, which violates the primary case because D exceeded the stated threshold —a distinction the passage stages deliberately, in the passage''s own terms.","is_correct":false,"explanation":"[Under-Specification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"B","text":"In a trial with C active and D at 37 units, A was applied. Outcome B rose, and a paired trial with D above threshold showed B falling — confirming both the primary case and the inversion —a distinction the passage stages deliberately.","is_correct":true,"explanation":"Correct: its second sentence is the only one that satisfies the discriminating condition."},{"id":"C","text":"In a trial with C inactive and D at 35 units, A was applied. Outcome B did not rise, which is uninformative because context C was not active —a distinction the passage stages deliberately, given the stated qualifiers.","is_correct":false,"explanation":"[Under-Specification] Grounded in passage language but fails on a specific qualifier in its second sentence."},{"id":"D","text":"In a trial in which A was withheld entirely, the team measured B. B was unchanged, which tests a different relationship than the hypothesis specifies —a distinction the passage stages deliberately, on the evidence presented.","is_correct":false,"explanation":"[True-But-Irrelevant] Grounded in passage language but fails on a specific qualifier in its second sentence."}]'::jsonb, 'B', 'Logical Reconstruction:
Step 1: List the conditions: A raises B only if C active AND D below T; above T it inverts.
Step 2: A correct finding must verify the primary case AND the inversion together.
Step 3: Eliminate findings that satisfy only one dependency or test A''s absence.
Step 4: Only the paired observation across the threshold confirms the full conditional.

Key Explanation: Choice B is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.

Distractor Analysis:
- Choice A [Under-Specification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence imports a relationship the passage withholds — exactly the habit this trap exploits.
- Choice C [Under-Specification]: a 720–740 student is drawn to its accurate first sentence, but its second sentence satisfies only part of the stated condition — exactly the habit this trap exploits.
- Choice D [True-But-Irrelevant]: a 720–740 student is drawn to its accurate first sentence, but its second sentence extends beyond the passage''s qualifiers — exactly the habit this trap exploits.

Difficulty Justification: This item is Challenge-tier because of double-conditional hypothesis with an interactive variable and a baseline-threshold inversion case.

Score Prediction: A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenge","explanation_v2":true,"generator":"generate-challenge-bank.mjs","rw_subtype":"textual_evidence","rw_format":"passage_mc","challenge_key":"COE_T"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0832eb31-803e-45f9-8c70-457e614a6d7d', 'For what value of $k$ does $4(x-3)+2k = 14$ have solution $x=5$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=5$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$5$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-3)+2k = 14$ have solution $x=5$?

**Step 2 — Solve.** **Step 1:** Substitute $x=5$: $4(5-k)+2k=14$.
**Step 2:** Expand: $20-4k+2k=14$ → $20+-2k=14$.
**Step 3:** Isolate: $-2k=-6$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($5$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8503e9d8-5336-4756-a5af-d0e70dd9b46c', 'For what value of $k$ does $5(x-4)+2k = 18$ have solution $x=6$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=6$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$6$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-4)+2k = 18$ have solution $x=6$?

**Step 2 — Solve.** **Step 1:** Substitute $x=6$: $5(6-k)+2k=18$.
**Step 2:** Expand: $30-5k+2k=18$ → $30+-3k=18$.
**Step 3:** Isolate: $-3k=-12$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($6$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('00766111-1493-41a1-9dc7-032ee39b5a0d', 'For what value of $k$ does $6(x-5)+2k = 22$ have solution $x=7$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=7$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$7$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-5)+2k = 22$ have solution $x=7$?

**Step 2 — Solve.** **Step 1:** Substitute $x=7$: $6(7-k)+2k=22$.
**Step 2:** Expand: $42-6k+2k=22$ → $42+-4k=22$.
**Step 3:** Isolate: $-4k=-20$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($7$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('13b99319-a035-4a24-8b07-0f416f53d924', 'For what value of $k$ does $7(x-6)+2k = 26$ have solution $x=8$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=8$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-6)+2k = 26$ have solution $x=8$?

**Step 2 — Solve.** **Step 1:** Substitute $x=8$: $7(8-k)+2k=26$.
**Step 2:** Expand: $56-7k+2k=26$ → $56+-5k=26$.
**Step 3:** Isolate: $-5k=-30$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($8$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6a40af00-a747-4433-b23a-43e97f7ebde2', 'For what value of $k$ does $8(x-7)+2k = 30$ have solution $x=9$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=9$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-7)+2k = 30$ have solution $x=9$?

**Step 2 — Solve.** **Step 1:** Substitute $x=9$: $8(9-k)+2k=30$.
**Step 2:** Expand: $72-8k+2k=30$ → $72+-6k=30$.
**Step 3:** Isolate: $-6k=-42$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($9$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9e7fd1d6-e69d-4440-8e9e-55adf559897f', 'For what value of $k$ does $4(x-8)+2k = 24$ have solution $x=10$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=10$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$10$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-8)+2k = 24$ have solution $x=10$?

**Step 2 — Solve.** **Step 1:** Substitute $x=10$: $4(10-k)+2k=24$.
**Step 2:** Expand: $40-4k+2k=24$ → $40+-2k=24$.
**Step 3:** Isolate: $-2k=-16$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($10$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ecedcf4f-728e-46ec-a5e9-38318de1c45f', 'For what value of $k$ does $5(x-3)+2k = 46$ have solution $x=11$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=11$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-3)+2k = 46$ have solution $x=11$?

**Step 2 — Solve.** **Step 1:** Substitute $x=11$: $5(11-k)+2k=46$.
**Step 2:** Expand: $55-5k+2k=46$ → $55+-3k=46$.
**Step 3:** Isolate: $-3k=-9$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($11$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5283fa1e-3887-4b58-b0ce-f25a0f8913b5', 'For what value of $k$ does $6(x-4)+2k = 56$ have solution $x=12$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=12$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-4)+2k = 56$ have solution $x=12$?

**Step 2 — Solve.** **Step 1:** Substitute $x=12$: $6(12-k)+2k=56$.
**Step 2:** Expand: $72-6k+2k=56$ → $72+-4k=56$.
**Step 3:** Isolate: $-4k=-16$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($12$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b278db9e-a655-4329-8a54-1ec9f608dd6c', 'For what value of $k$ does $7(x-5)+2k = 66$ have solution $x=13$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=13$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-5)+2k = 66$ have solution $x=13$?

**Step 2 — Solve.** **Step 1:** Substitute $x=13$: $7(13-k)+2k=66$.
**Step 2:** Expand: $91-7k+2k=66$ → $91+-5k=66$.
**Step 3:** Isolate: $-5k=-25$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($13$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7a80c06a-c62f-4cf1-a1aa-bfea8cd0b4da', 'For what value of $k$ does $8(x-6)+2k = 76$ have solution $x=14$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=14$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-6)+2k = 76$ have solution $x=14$?

**Step 2 — Solve.** **Step 1:** Substitute $x=14$: $8(14-k)+2k=76$.
**Step 2:** Expand: $112-8k+2k=76$ → $112+-6k=76$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($14$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('90c6ce65-e632-419d-b53e-df9f31fa43d8', 'For what value of $k$ does $4(x-7)+2k = 46$ have solution $x=15$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=15$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-7)+2k = 46$ have solution $x=15$?

**Step 2 — Solve.** **Step 1:** Substitute $x=15$: $4(15-k)+2k=46$.
**Step 2:** Expand: $60-4k+2k=46$ → $60+-2k=46$.
**Step 3:** Isolate: $-2k=-14$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($15$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e0e4b114-5aec-4c04-aabe-45df295ac922', 'For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=16$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?

**Step 2 — Solve.** **Step 1:** Substitute $x=16$: $5(16-k)+2k=56$.
**Step 2:** Expand: $80-5k+2k=56$ → $80+-3k=56$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($16$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a84deb94-7302-451f-af47-0feb78948b04', 'For what value of $k$ does $6(x-3)+2k = 90$ have solution $x=17$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=17$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-3)+2k = 90$ have solution $x=17$?

**Step 2 — Solve.** **Step 1:** Substitute $x=17$: $6(17-k)+2k=90$.
**Step 2:** Expand: $102-6k+2k=90$ → $102+-4k=90$.
**Step 3:** Isolate: $-4k=-12$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($17$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b7213082-e653-40e1-b118-508e73a2bbbd', 'For what value of $k$ does $7(x-4)+2k = 106$ have solution $x=18$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=18$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-4)+2k = 106$ have solution $x=18$?

**Step 2 — Solve.** **Step 1:** Substitute $x=18$: $7(18-k)+2k=106$.
**Step 2:** Expand: $126-7k+2k=106$ → $126+-5k=106$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($18$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('874cb809-5c2a-4f27-b3ca-213e99d38326', 'For what value of $k$ does $8(x-5)+2k = 122$ have solution $x=19$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=19$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-5)+2k = 122$ have solution $x=19$?

**Step 2 — Solve.** **Step 1:** Substitute $x=19$: $8(19-k)+2k=122$.
**Step 2:** Expand: $152-8k+2k=122$ → $152+-6k=122$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($19$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('74ebad13-c640-41c3-91a0-6fae47c8631b', 'For what value of $k$ does $4(x-6)+2k = 68$ have solution $x=20$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=20$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$20$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-6)+2k = 68$ have solution $x=20$?

**Step 2 — Solve.** **Step 1:** Substitute $x=20$: $4(20-k)+2k=68$.
**Step 2:** Expand: $80-4k+2k=68$ → $80+-2k=68$.
**Step 3:** Isolate: $-2k=-12$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($20$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4a04fa1c-513d-4463-bd24-01ddb3b2f5e0', 'For what value of $k$ does $5(x-7)+2k = 84$ have solution $x=21$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=21$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$21$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-7)+2k = 84$ have solution $x=21$?

**Step 2 — Solve.** **Step 1:** Substitute $x=21$: $5(21-k)+2k=84$.
**Step 2:** Expand: $105-5k+2k=84$ → $105+-3k=84$.
**Step 3:** Isolate: $-3k=-21$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($21$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('70c248b6-5fbd-4063-a236-2f6c563fd5bf', 'For what value of $k$ does $6(x-8)+2k = 100$ have solution $x=22$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=22$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$22$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-8)+2k = 100$ have solution $x=22$?

**Step 2 — Solve.** **Step 1:** Substitute $x=22$: $6(22-k)+2k=100$.
**Step 2:** Expand: $132-6k+2k=100$ → $132+-4k=100$.
**Step 3:** Isolate: $-4k=-32$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($22$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4518d705-fd4d-4a62-8161-4747e9521153', 'For what value of $k$ does $7(x-3)+2k = 146$ have solution $x=23$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=23$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$23$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-3)+2k = 146$ have solution $x=23$?

**Step 2 — Solve.** **Step 1:** Substitute $x=23$: $7(23-k)+2k=146$.
**Step 2:** Expand: $161-7k+2k=146$ → $161+-5k=146$.
**Step 3:** Isolate: $-5k=-15$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($23$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('70e4b805-8938-4929-bd7b-a275d59f07a7', 'For what value of $k$ does $8(x-4)+2k = 168$ have solution $x=24$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=24$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$24$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-4)+2k = 168$ have solution $x=24$?

**Step 2 — Solve.** **Step 1:** Substitute $x=24$: $8(24-k)+2k=168$.
**Step 2:** Expand: $192-8k+2k=168$ → $192+-6k=168$.
**Step 3:** Isolate: $-6k=-24$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($24$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
