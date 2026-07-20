BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96c37d56-4398-49b0-ba98-b536b5872fe5', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 12619
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Inspired by humpback whale fin tubercles, prototype 12619 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy.","is_correct":false,"explanation":"Imports information absent from the notes."},{"id":"C","text":"Flat-blade turbines remain the industry standard regardless of test outcomes.","is_correct":false,"explanation":"Contradicted by documented underperformance of flat blades."},{"id":"D","text":"Noise monitoring alone proves a turbine design is superior.","is_correct":false,"explanation":"Focuses on noise, not the stated performance goal."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Imports information absent from the notes.
- C: Contradicted by documented underperformance of flat blades.
- D: Focuses on noise, not the stated performance goal.', 'Which option uses only note facts to accomplish the stated goal?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"challenged_problem":true,"difficulty_tier":"challenged","generator":"generate-dsat-rw-expansion.mjs"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9f9da51a-8868-4477-82d0-ce5428e773cd', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reef Survey 12620
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
- D: Overstates geology while ignoring documented grazing effects.', 'Which option uses only note facts to accomplish the stated goal?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"challenged_problem":true,"difficulty_tier":"challenged","generator":"generate-dsat-rw-expansion.mjs"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02373551-ccfd-49ed-8f36-c9a4e0bc23cb', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses information from the notes to accomplish this goal?', 'Memory Consolidation Study 12621
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
- D: Speculates beyond the notes'' stated replication plan.', 'Which option uses only note facts to accomplish the stated goal?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"challenged_problem":true,"difficulty_tier":"challenged","generator":"generate-dsat-rw-expansion.mjs"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd99191a-d5c6-4d08-8c74-2c7df08e6c80', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses information from the notes to accomplish this goal?', 'Literacy Intervention 12622
• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.
• Comprehension scores rose twelve points versus a four-point gain in control cohorts.
• Teachers observed students citing textual evidence during disagreements.
• Scripted prompts required paraphrasing a counterargument before advancing a claim.
• District coaches recorded higher engagement during observed lessons.', 'passage', '[{"id":"A","text":"Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort''s four-point gain—with teachers observing students citing textual evidence during disagreements.","is_correct":true,"explanation":"Synthesizes notes to accomplish the stated rhetorical goal."},{"id":"B","text":"Worksheets remain the only valid tool because they require silent focus.","is_correct":false,"explanation":"Contradicted by documented gains for discussion."},{"id":"C","text":"Engagement observations prove discussion protocols reduce comprehension.","is_correct":false,"explanation":"Contradicted by higher comprehension scores."},{"id":"D","text":"Paraphrasing prompts are unrelated to the measured score gains.","is_correct":false,"explanation":"Ignores the link between structured prompts and measured outcomes."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize the most empirically supported approach documented in the notes.

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Contradicted by documented gains for discussion.
- C: Contradicted by higher comprehension scores.
- D: Ignores the link between structured prompts and measured outcomes.', 'Which option uses only note facts to accomplish the stated goal?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"challenged_problem":true,"difficulty_tier":"challenged","generator":"generate-dsat-rw-expansion.mjs"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4b886b8-ba6d-4f7f-8b63-77283b9640a8', 'The student wants to emphasize Lovelace''s conceptual contribution beyond mere calculation. Which choice most effectively uses information from the notes to accomplish this goal?', 'Ada Lovelace and Early Computing
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
- D: Overstates beyond what the notes claim.', 'Which option uses only note facts to accomplish the stated goal?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"challenged_problem":true,"difficulty_tier":"challenged","generator":"generate-dsat-rw-expansion.mjs"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('749046ac-1718-4eeb-8b67-dd421d9c13c5', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses information from the notes to accomplish this goal?', 'Tikal''s Water Supply
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
- D: Misses storing water to sustain the population during the dry season.', 'Which option uses only note facts to accomplish the stated goal?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"challenged_problem":true,"difficulty_tier":"challenged","generator":"generate-dsat-rw-expansion.mjs"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f1a8779-f8f1-43d0-9704-3612f79617c9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('061b2409-c591-4727-8faf-7ec983b298df', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon correctly follows an independent clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon joins two independent clauses, but a list fragment follows, not a clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to formally introduce the list after a complete clause."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation leaves the list awkwardly fused to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank, {{yellow:The recipe calls for three uncommon ingredients}}, form a complete independent clause.
Step 2 — Introduce the list
A colon after a complete clause properly introduces a list, so '':'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a semicolon needs a second independent clause, not a list.
- C: a comma is too weak to introduce the list here.
- D: no punctuation fuses the list to the clause.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('edc4d0ee-87cc-4aca-93a3-87779653713c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"A matched pair of em dashes correctly sets off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing a comma with an em dash leaves the parenthetical punctuation unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Opening with an em dash but closing with a comma is unmatched and incorrect."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"An opening parenthesis must close with a parenthesis, not a comma."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
The phrase {{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside interrupting the main sentence.
Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks, so an em dash on each side is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a comma paired with a dash is unmatched.
- C: a dash paired with a comma is unmatched.
- D: a parenthesis must be closed by a parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30492b68-d97d-44b7-8c3c-acea355470be', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint galaxy after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon correctly links two closely related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses is a comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies the second clause explains or lists, but here the clauses are simply related events."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' produces an ungrammatical join."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone: {{yellow:The telescope captured the faint galaxy after hours of exposure}} and ''the resulting image revealed structures.''
Step 2 — Choose the join
Two related independent clauses with no conjunction are correctly linked by a semicolon.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a comma alone is a splice.
- C: a colon signals explanation or a list, not two parallel events.
- D: the misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which single mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cb8d5636-3430-4af3-8d5c-6ed5667fea5a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive renaming ''one of the three proposals'' while preserving the main clause."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap an interrupting appositive in the middle of a clause."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"A comma opening and a semicolon closing are unmatched and break the clause."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"An em dash opening with a comma closing leaves the interruption unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
The phrase {{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals'' and interrupts the verb phrase ''approved ... and rejected.''
Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks, so an em dash on both sides keeps ''approved ... and rejected the rest'' intact.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: a comma and a semicolon are unmatched and sever the clause.
- D: a dash and a comma are unmatched.', 'The bracketed phrase renames the proposal; the marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d756fab8-0d08-40ca-8fe7-6c9c66279690', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Pollinator populations are shaped by a single overriding factor ______ the availability of diverse flowering plants across the entire growing season.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon after a complete clause correctly introduces the noun phrase that specifies the ''single overriding factor.''"},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause, but a noun phrase follows."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to mark the formal specification the sentence sets up."},{"id":"D","text":" — namely,","is_correct":false,"explanation":"Adding ''namely'' after the dash is redundant with the colon''s function and creates a wordy, nonstandard construction here."}]'::jsonb, 'A', 'Step 1 — Read the setup
The clause {{yellow:Pollinator populations are shaped by a single overriding factor}} is complete and promises a specification.
Step 2 — Deliver the specification
A colon after a complete clause introduces the phrase that identifies that factor, so '':'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a semicolon needs a full clause after it.
- C: a comma is too weak for this formal pointing-forward.
- D: ''— namely,'' is redundant and nonstandard for a simple specification.', 'A complete clause promises one factor, then names it — which mark points forward to it?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8029129-8fab-4e0e-be20-d7fa0a56e13c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5fc7e67b-02ca-4647-979d-03b63e179d79', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f79c1032-102c-4e6b-ab08-10c689e393ea', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest observatory reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
