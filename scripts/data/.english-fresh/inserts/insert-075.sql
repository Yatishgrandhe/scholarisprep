BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9656f261-d9cc-436d-9dfd-144fa3230781', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Tikal''s Water Supply
• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.
• The city of Tikal possessed a major reservoir system paved with plaster.
• Plaster lining prevented water from seeping into the porous limestone bedrock.
• The system at Tikal was designed to collect rainwater during the intense tropical wet season.
• This stored water sustained the city''s population of over 60,000 residents during the prolonged dry season.
• Archaeologists dated major plaster phases to the Late Classic period.', 'passage', '[{"id":"A","text":"Paved with plaster to prevent seepage into porous limestone, Tikal''s reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"To prevent water from seeping into Tikal''s porous limestone bedrock, the Maya paved their massive reservoir system with plaster. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Addresses seepage but omits the seasonal survival function."},{"id":"C","text":"The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle."},{"id":"D","text":"Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Misses storing water to sustain the population during the dry season."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Goal_Under_Specification: Addresses seepage but omits the seasonal survival function.
- C: Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle.
- D: Goal_Under_Specification: Misses storing water to sustain the population during the dry season.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e4247b3-b285-4862-9310-3e90704f4e77', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 100252
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Noise monitoring alone proves a turbine design is superior, focusing on noise rather than the stated performance goal in the notes. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Focuses on noise, not the stated performance goal."},{"id":"B","text":"Inspired by humpback whale fin tubercles, prototype 100252 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy, importing information absent from the student''s research notes. The authors caution that replication remains necessary before treating.","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Imports information absent from the notes."},{"id":"D","text":"Flat-blade turbines remain the industry standard regardless of test outcomes, contradicting documented underperformance of flat blades in the notes. The authors caution that replication remains necessary before.","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by documented underperformance of flat blades."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Focuses on noise, not the stated performance goal.
- C: Unwarranted_Synthesis: Imports information absent from the notes.
- D: Truth_without_Goal: Contradicted by documented underperformance of flat blades.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d911fad9-9427-4e7d-8cb5-d43634d2dd04', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Coral Reef Survey 100254
• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.
• Temperature and salinity remained stable across compared sites.
• Bare rock patches reappeared only where herbivore populations recovered.
• Policy briefs recommend no-take zones sized to herbivore home ranges.
• Authors caution that local reef geology still influences settlement success.', 'passage', '[{"id":"A","text":"Temperature changes alone explain all coral recruitment failures in the notes, contradicting the documented stable temperature across compared sites. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by stable temperature in the notes."},{"id":"B","text":"Geology determines settlement success, so fish protection is irrelevant, overstating geology while ignoring documented grazing effects in the notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Overstates geology while ignoring documented grazing effects."},{"id":"C","text":"Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Parrotfish are colorful reef dwellers that tourists enjoy photographing, offering an irrelevant description unrelated to reef recovery mechanisms in the notes. The authors caution that replication remains necessary. in ways that align.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Irrelevant to reef recovery mechanism."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain why protecting herbivorous fish matters for reef recovery

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicted by stable temperature in the notes.
- B: Goal_Under_Specification: Overstates geology while ignoring documented grazing effects.
- D: Unwarranted_Synthesis: Irrelevant to reef recovery mechanism.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f057b0af-9cc1-43b1-9a64-b52705ac1cf8', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Memory Consolidation Study 100256
• Participants who slept eight hours recalled word lists more accurately than those kept awake.
• Both groups studied for equal duration under matched conditions.
• Hippocampal imaging subsamples showed differential activation during retrieval.
• Authors plan replication with longer study materials.
• Lab conditions may limit generalization to classroom learning.', 'passage', '[{"id":"A","text":"Sleep deprivation improves recall because it increases alertness during testing, contradicting the higher recall documented in the sleep group. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by higher recall in the sleep group."},{"id":"B","text":"Hippocampal imaging proves sleep has no effect on memory, contradicting documented differential activation during retrieval in the notes. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by documented differential activation."},{"id":"C","text":"Longer study materials would eliminate all differences between groups, speculating beyond the notes'' stated replication plan. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan."},{"id":"D","text":"When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: summarize how sleep affected recall in the controlled study

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicted by higher recall in the sleep group.
- B: Truth_without_Goal: Contradicted by documented differential activation.
- C: Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb62dfdf-0ea1-4c09-8612-89297d0268f3', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Literacy Intervention 100258
• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.
• Comprehension scores rose twelve points versus a four-point gain in control cohorts.
• Teachers observed students citing textual evidence during disagreements.
• Scripted prompts required paraphrasing a counterargument before advancing a claim.
• District coaches recorded higher engagement during observed lessons.', 'passage', '[{"id":"A","text":"Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort''s four-point gain—with teachers observing students citing textual evidence during disagreements.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Worksheets remain the only valid tool because they require silent focus, contradicting documented gains for discussion in the notes. The authors caution that replication remains.........","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by documented gains for discussion."},{"id":"C","text":"Engagement observations prove discussion protocols reduce comprehension, contradicting higher comprehension scores linked to discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by higher comprehension scores."},{"id":"D","text":"Paraphrasing prompts are unrelated to the measured score gains, ignoring the link between structured prompts and measured outcomes. The authors caution that replication remains necessary.","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize the most empirically supported approach documented in the notes

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Truth_without_Goal: Contradicted by documented gains for discussion.
- C: Truth_without_Goal: Contradicted by higher comprehension scores.
- D: Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1b874d1-249e-4037-8b9a-aae4853ef1e5', 'The student wants to emphasize Lovelace''s conceptual contribution beyond mere calculation. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Ada Lovelace and Early Computing
• Ada Lovelace was a 19th-century English mathematician who worked with Charles Babbage.
• She wrote notes describing how a computing engine could manipulate symbols, not only numbers.
• Her notes included an algorithm for Bernoulli numbers, often cited as early programming.
• Historians debate how much of the notes reflect her independent insight versus Babbage''s ideas.
• Recent scholarship emphasizes her conceptual leap beyond mere calculation.', 'passage', '[{"id":"A","text":"Bernoulli numbers prove Lovelace invented modern electronic computers, overstating beyond what the notes claim. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Overstates beyond what the notes claim."},{"id":"B","text":"Lovelace''s notes described how a computing engine could manipulate symbols—not only numbers—and included an algorithm for Bernoulli numbers, reflecting a conceptual leap beyond mere calculation that recent scholarship","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Lovelace''s primary contribution was building the physical computing engine herself, a claim not supported by the student''s research notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Not supported by the notes."},{"id":"D","text":"Historians agree her notes added nothing beyond Babbage''s own ideas, contradicting scholarship emphasizing her conceptual leap. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by scholarship emphasizing her conceptual leap."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize Lovelace''s conceptual contribution beyond mere calculation

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Overstates beyond what the notes claim.
- C: Unwarranted_Synthesis: Not supported by the notes.
- D: Truth_without_Goal: Contradicted by scholarship emphasizing her conceptual leap.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b15570e-a394-4342-a59a-9ae81fbfa7ab', 'The student wants to connect beak variation to survival during environmental change. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Darwin''s Finches Study 100262
• Researchers measured beak depth across drought and wet seasons on Daphne Major.
• Medium ground finches with deeper beaks survived better during drought when large seeds dominated.
• Beak traits shifted measurably within a few generations after rainfall patterns changed.
• The team cautions that extrapolation to all species requires additional field seasons.
• Findings illustrate natural selection acting on heritable variation in a wild population.', 'passage', '[{"id":"A","text":"Rainfall patterns never affect seed size on Daphne Major, contradicting the notes linking drought to large-seed dominance. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicts the notes linking drought to large seeds."},{"id":"B","text":"The study proves evolution cannot occur within observable time frames, opposing documented shifts within a few generations. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Opposes documented shifts within a few generations."},{"id":"C","text":"When drought favored large seeds, medium ground finches with deeper beaks survived better, and measurable beak shifts within a few generations illustrate natural selection acting on heritable variation","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Finches voluntarily changed their beak size in a single season through individual effort, misrepresenting heritable variation as personal choice. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Misrepresents heritable variation as personal choice."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: connect beak variation to survival during environmental change

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicts the notes linking drought to large seeds.
- B: Truth_without_Goal: Opposes documented shifts within a few generations.
- D: Truth_without_Goal: Misrepresents heritable variation as personal choice.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('95a740b8-9a79-4cba-946e-bb17fd54d2ec', 'The student wants to explain how Champollion''s method differed from earlier assumptions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Decipherment of Hieroglyphs
• The Rosetta Stone (196 BCE) presents the same decree in hieroglyphic, Demotic, and Greek scripts.
• Scholar Jean-François Champollion compared Greek names to hieroglyphic spellings.
• He argued hieroglyphs could represent sounds, not only ideas.
• Earlier scholars assumed hieroglyphs were purely symbolic picture writing.
• Champollion''s 1822 letter announced a breakthrough in reading Egyptian texts.', 'passage', '[{"id":"A","text":"Champollion proved hieroglyphs were purely decorative art with no linguistic content, reversing his documented argument about sound representation. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Reverses his argument about sound representation."},{"id":"B","text":"The Rosetta Stone contains only Greek text, omitting the trilingual structure central to the decipherment described in the notes. The authors caution that replication remains necessary before treating. as the student''s research.","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Omits the trilingual structure."},{"id":"C","text":"Demotic script was unrelated to hieroglyphic decipherment, ignoring its presence on the stone described in the notes. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Ignores Demotic''s role on the stone."},{"id":"D","text":"Using the Rosetta Stone''s parallel Greek text, Champollion compared names to hieroglyphic spellings and argued hieroglyphs could represent sounds—contrasting earlier scholars who assumed hieroglyphs were purely symbolic picture","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how Champollion''s method differed from earlier assumptions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Reverses his argument about sound representation.
- B: Goal_Under_Specification: Omits the trilingual structure.
- C: Unwarranted_Synthesis: Ignores Demotic''s role on the stone.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a5f2f2fd-43b4-4c55-9b6b-58a5622a790e', 'The student wants to present both productivity gains and documented drawbacks. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Agricultural Intensification 100266
• High-yield wheat varieties expanded production in South Asia during the 1960s–70s.
• Irrigation and fertilizer use rose alongside new seed strains.
• Yields increased, yet smallholders sometimes could not afford inputs.
• Water-table depletion emerged in regions with heavy pumping.
• Historians debate whether gains outweighed ecological and equity costs.', 'passage', '[{"id":"A","text":"High-yield wheat varieties and expanded irrigation raised production in South Asia, yet smallholders sometimes could not afford inputs and water-table depletion emerged—fueling debate about whether gains outweighed ecological","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"The Green Revolution eliminated hunger permanently without any ecological trade-offs, contradicting documented water-table depletion in the notes. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicts documented water-table depletion."},{"id":"C","text":"Smallholders universally benefited from new seed strains, contradicting notes that some could not afford inputs. The authors caution that replication remains necessary before treating the finding as settled. according to the specific.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicts affordability barriers in the notes."},{"id":"D","text":"Fertilizer use declined during the Green Revolution, contradicting the notes linking fertilizer rise to intensification. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Contradicts rising fertilizer use in the notes."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present both productivity gains and documented drawbacks

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Truth_without_Goal: Contradicts documented water-table depletion.
- C: Truth_without_Goal: Contradicts affordability barriers in the notes.
- D: Unwarranted_Synthesis: Contradicts rising fertilizer use in the notes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f31fae62-7c3f-48eb-b8c4-ead7cea63852', 'The student wants to trace the path from Fleming''s observation to wartime availability. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Alexander Fleming and Penicillin
• Fleming observed mold inhibiting bacterial growth on a contaminated petri dish in 1928.
• He identified the mold as Penicillium and named the antibacterial substance penicillin.
• Initial extracts were unstable and difficult to mass-produce.
• Howard Florey and Ernst Chain later developed methods to purify and scale production.
• Penicillin became widely available to Allied forces during World War II.', 'passage', '[{"id":"A","text":"Penicillin was never used during World War II, contradicting wartime availability documented in the notes. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicts wartime availability in the notes."},{"id":"B","text":"After Fleming identified penicillin from Penicillium mold in 1928, initial extracts proved unstable until Florey and Chain developed purification methods that enabled mass production widely available to Allied","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Fleming mass-produced penicillin immediately in 1928, ignoring the notes describing unstable initial extracts and later purification work. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Ignores unstable extracts and later purification."},{"id":"D","text":"Florey and Chain discovered mold on a petri dish, misassigning Fleming''s initial observation to later researchers. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Misassigns Fleming''s initial observation."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: trace the path from Fleming''s observation to wartime availability

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicts wartime availability in the notes.
- C: Unwarranted_Synthesis: Ignores unstable extracts and later purification.
- D: Unwarranted_Synthesis: Misassigns Fleming''s initial observation.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba9b685f-38d8-427d-b73d-6a087e8de589', 'The student wants to introduce the movement''s artistic aims and internal tensions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Writers and artists centered Black urban experience in 1920s Harlem.
• Langston Hughes used jazz rhythms in poetry.
• Zora Neale Hurston collected folklore.
• Patronage from white supporters created tensions.
• The movement influenced later civil-rights culture.', 'passage', '[{"id":"A","text":"Patronage eliminated creative tensions among Harlem artists. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test.","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"B","text":"Folklore collection was unrelated to the movement''s literary output. The authors caution that replication remains necessary before treating the finding as settled. consistent with the.","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"C","text":"Harlem Renaissance artists celebrated Black urban life through jazz-influenced poetry and folklore while navigating tensions created by white patronage that the notes document.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"The Harlem Renaissance rejected all European artistic influence entirely. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the movement''s artistic aims and internal tensions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- B: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- D: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('89991841-d903-48eb-ac5f-d799e5a15531', 'The student wants to explain how later evidence overcame initial skepticism. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Alfred Wegener proposed continental drift in 1912.
• Geologists initially rejected the idea lacking a mechanism.
• Mid-ocean ridge mapping later revealed seafloor spreading.
• Magnetic striping supported periodic reversals.
• Plate tectonics unified earthquake, volcano, and mountain patterns.', 'passage', '[{"id":"A","text":"Wegener''s proposal was immediately accepted without debate. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"B","text":"Magnetic striping contradicted seafloor spreading. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"C","text":"Plate tectonics explains only earthquake patterns. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across. reflecting the bounded claims.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"D","text":"Although geologists initially rejected Wegener''s continental drift lacking a mechanism, mid-ocean ridge mapping, seafloor spreading, and magnetic striping later supplied evidence that unified earthquake, volcano, and mountain patterns.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how later evidence overcame initial skepticism

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- B: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- C: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('062c8c0f-a12a-4cd8-880f-6e23cc68011a', 'The student wants to emphasize how the movement challenged academic conventions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Parisian painters exhibited independently after Salon rejections in 1874.
• Artists captured fleeting light with visible brushstrokes.
• Monet''s series paintings tracked atmospheric changes.
• Critics initially mocked the sketch-like surfaces.
• Dealers later marketed Impressionism to bourgeois collectors.', 'passage', '[{"id":"A","text":"Rejected by the Salon, Impressionists exhibited independently, using visible brushstrokes and Monet''s series to capture fleeting light—challenging academic finish even as critics mocked their sketch-like surfaces.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Impressionists sought to replicate Salon academic finish. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"C","text":"Monet avoided atmospheric change in his series. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"D","text":"Early critics universally praised Impressionist surfaces. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across. within.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize how the movement challenged academic conventions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- C: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- D: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a921d320-5c43-42de-b07d-fb8871770c5d', 'The student wants to present humanitarian goals alongside strategic and economic dimensions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• The United States pledged billions for European reconstruction after World War II.
• Aid required purchases of many goods from US suppliers.
• Program aimed to stabilize democracies against Soviet influence.
• Recipient nations modernized industry and infrastructure.
• Historians debate economic strings attached to humanitarian framing.', 'passage', '[{"id":"A","text":"Recipient nations rejected all industrial modernization. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"B","text":"The Marshall Plan pledged billions to rebuild European industry and stabilize democracies, yet required many purchases from US suppliers—prompting historians to debate economic strings attached to humanitarian framing.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"The Marshall Plan provided aid with no purchasing conditions. The authors caution that replication remains necessary before treating the finding as settled. according to the specific details recorded in the student''s project.","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"D","text":"Soviet influence was unrelated to US reconstruction strategy. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present humanitarian goals alongside strategic and economic dimensions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- C: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- D: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('63ea397d-cdeb-492e-9bc1-755a53fc7647', 'The student wants to introduce the biological origin before laboratory adaptation. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Bacteria use CRISPR sequences to remember viral DNA.
• Cas proteins cut matching sequences during reinfection.
• Scientists adapted the system to edit genomes in labs.
• Early applications targeted disease-causing mutations.
• Ethicists warn about off-target and germline implications.', 'passage', '[{"id":"A","text":"Cas proteins prevent all genome editing in laboratories. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"B","text":"Ethicists raised no concerns about off-target effects. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"C","text":"Bacteria use CRISPR sequences and Cas proteins to cut matching viral DNA during reinfection—a natural immune memory that scientists later adapted to edit genomes in labs, prompting ethicists","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"CRISPR was invented without any bacterial precedent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the biological origin before laboratory adaptation

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- B: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- D: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('65e6d546-3f96-4dc9-9c64-01bd13f8cc64', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Tikal''s Water Supply
• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.
• The city of Tikal possessed a major reservoir system paved with plaster.
• Plaster lining prevented water from seeping into the porous limestone bedrock.
• The system at Tikal was designed to collect rainwater during the intense tropical wet season.
• This stored water sustained the city''s population of over 60,000 residents during the prolonged dry season.
• Archaeologists dated major plaster phases to the Late Classic period.', 'passage', '[{"id":"A","text":"To prevent water from seeping into Tikal''s porous limestone bedrock, the Maya paved their massive reservoir system with plaster. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Addresses seepage but omits the seasonal survival function."},{"id":"B","text":"The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle."},{"id":"C","text":"Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Misses storing water to sustain the population during the dry season."},{"id":"D","text":"Paved with plaster to prevent seepage into porous limestone, Tikal''s reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Addresses seepage but omits the seasonal survival function.
- B: Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle.
- C: Goal_Under_Specification: Misses storing water to sustain the population during the dry season.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43796da5-952c-401b-9161-129d855f2000', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 100282
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Inspired by humpback whale fin tubercles, prototype 100282 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy, importing information absent from the student''s research notes. The authors caution that replication remains necessary before treating.","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Imports information absent from the notes."},{"id":"C","text":"Flat-blade turbines remain the industry standard regardless of test outcomes, contradicting documented underperformance of flat blades in the notes. The authors caution that replication remains necessary before.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by documented underperformance of flat blades."},{"id":"D","text":"Noise monitoring alone proves a turbine design is superior, focusing on noise rather than the stated performance goal in the notes. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Focuses on noise, not the stated performance goal."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Unwarranted_Synthesis: Imports information absent from the notes.
- C: Truth_without_Goal: Contradicted by documented underperformance of flat blades.
- D: Goal_Under_Specification: Focuses on noise, not the stated performance goal.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('abc973b9-1334-49a5-90c5-26e3fbef9782', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Coral Reef Survey 100284
• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.
• Temperature and salinity remained stable across compared sites.
• Bare rock patches reappeared only where herbivore populations recovered.
• Policy briefs recommend no-take zones sized to herbivore home ranges.
• Authors caution that local reef geology still influences settlement success.', 'passage', '[{"id":"A","text":"Geology determines settlement success, so fish protection is irrelevant, overstating geology while ignoring documented grazing effects in the notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Overstates geology while ignoring documented grazing effects."},{"id":"B","text":"Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Parrotfish are colorful reef dwellers that tourists enjoy photographing, offering an irrelevant description unrelated to reef recovery mechanisms in the notes. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Irrelevant to reef recovery mechanism."},{"id":"D","text":"Temperature changes alone explain all coral recruitment failures in the notes, contradicting the documented stable temperature across compared sites. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by stable temperature in the notes."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain why protecting herbivorous fish matters for reef recovery

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Overstates geology while ignoring documented grazing effects.
- C: Unwarranted_Synthesis: Irrelevant to reef recovery mechanism.
- D: Truth_without_Goal: Contradicted by stable temperature in the notes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59c2277b-b6cf-4478-839a-36a94751b151', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Memory Consolidation Study 100286
• Participants who slept eight hours recalled word lists more accurately than those kept awake.
• Both groups studied for equal duration under matched conditions.
• Hippocampal imaging subsamples showed differential activation during retrieval.
• Authors plan replication with longer study materials.
• Lab conditions may limit generalization to classroom learning.', 'passage', '[{"id":"A","text":"Hippocampal imaging proves sleep has no effect on memory, contradicting documented differential activation during retrieval in the notes. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by documented differential activation."},{"id":"B","text":"Longer study materials would eliminate all differences between groups, speculating beyond the notes'' stated replication plan. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan."},{"id":"C","text":"When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Sleep deprivation improves recall because it increases alertness during testing, contradicting the higher recall documented in the sleep group. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by higher recall in the sleep group."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: summarize how sleep affected recall in the controlled study

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicted by documented differential activation.
- B: Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan.
- D: Truth_without_Goal: Contradicted by higher recall in the sleep group.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8712ad6-fbb7-448c-b448-cd3558daa1b4', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Literacy Intervention 100288
• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.
• Comprehension scores rose twelve points versus a four-point gain in control cohorts.
• Teachers observed students citing textual evidence during disagreements.
• Scripted prompts required paraphrasing a counterargument before advancing a claim.
• District coaches recorded higher engagement during observed lessons.', 'passage', '[{"id":"A","text":"Worksheets remain the only valid tool because they require silent focus, contradicting documented gains for discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by documented gains for discussion."},{"id":"B","text":"Engagement observations prove discussion protocols reduce comprehension, contradicting higher comprehension scores linked to discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by higher comprehension scores."},{"id":"C","text":"Paraphrasing prompts are unrelated to the measured score gains, ignoring the link between structured prompts and measured outcomes. The authors caution that replication remains necessary.","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes."},{"id":"D","text":"Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort''s four-point gain—with teachers observing students citing textual evidence during disagreements.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize the most empirically supported approach documented in the notes

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicted by documented gains for discussion.
- B: Truth_without_Goal: Contradicted by higher comprehension scores.
- C: Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fbe32eb6-0fad-447e-b7c7-b53b4f3da045', 'The student wants to emphasize Lovelace''s conceptual contribution beyond mere calculation. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Ada Lovelace and Early Computing
• Ada Lovelace was a 19th-century English mathematician who worked with Charles Babbage.
• She wrote notes describing how a computing engine could manipulate symbols, not only numbers.
• Her notes included an algorithm for Bernoulli numbers, often cited as early programming.
• Historians debate how much of the notes reflect her independent insight versus Babbage''s ideas.
• Recent scholarship emphasizes her conceptual leap beyond mere calculation.', 'passage', '[{"id":"A","text":"Lovelace''s notes described how a computing engine could manipulate symbols—not only numbers—and included an algorithm for Bernoulli numbers, reflecting a conceptual leap beyond mere calculation that recent scholarship","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Lovelace''s primary contribution was building the physical computing engine herself, a claim not supported by the student''s research notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Not supported by the notes."},{"id":"C","text":"Historians agree her notes added nothing beyond Babbage''s own ideas, contradicting scholarship emphasizing her conceptual leap. The authors caution that replication remains necessary before treating the finding as. matching the scope.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by scholarship emphasizing her conceptual leap."},{"id":"D","text":"Bernoulli numbers prove Lovelace invented modern electronic computers, overstating beyond what the notes claim. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Overstates beyond what the notes claim."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize Lovelace''s conceptual contribution beyond mere calculation

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Unwarranted_Synthesis: Not supported by the notes.
- C: Truth_without_Goal: Contradicted by scholarship emphasizing her conceptual leap.
- D: Unwarranted_Synthesis: Overstates beyond what the notes claim.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c03e80ac-8bc1-4720-8188-d05b52a03821', 'The student wants to connect beak variation to survival during environmental change. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Darwin''s Finches Study 100292
• Researchers measured beak depth across drought and wet seasons on Daphne Major.
• Medium ground finches with deeper beaks survived better during drought when large seeds dominated.
• Beak traits shifted measurably within a few generations after rainfall patterns changed.
• The team cautions that extrapolation to all species requires additional field seasons.
• Findings illustrate natural selection acting on heritable variation in a wild population.', 'passage', '[{"id":"A","text":"The study proves evolution cannot occur within observable time frames, opposing documented shifts within a few generations. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Opposes documented shifts within a few generations."},{"id":"B","text":"When drought favored large seeds, medium ground finches with deeper beaks survived better, and measurable beak shifts within a few generations illustrate natural selection acting on heritable variation","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Finches voluntarily changed their beak size in a single season through individual effort, misrepresenting heritable variation as personal choice. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Misrepresents heritable variation as personal choice."},{"id":"D","text":"Rainfall patterns never affect seed size on Daphne Major, contradicting the notes linking drought to large-seed dominance. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicts the notes linking drought to large seeds."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: connect beak variation to survival during environmental change

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Opposes documented shifts within a few generations.
- C: Truth_without_Goal: Misrepresents heritable variation as personal choice.
- D: Truth_without_Goal: Contradicts the notes linking drought to large seeds.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6eb7c104-acf4-429d-9df2-33d14930361a', 'The student wants to explain how Champollion''s method differed from earlier assumptions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Decipherment of Hieroglyphs
• The Rosetta Stone (196 BCE) presents the same decree in hieroglyphic, Demotic, and Greek scripts.
• Scholar Jean-François Champollion compared Greek names to hieroglyphic spellings.
• He argued hieroglyphs could represent sounds, not only ideas.
• Earlier scholars assumed hieroglyphs were purely symbolic picture writing.
• Champollion''s 1822 letter announced a breakthrough in reading Egyptian texts.', 'passage', '[{"id":"A","text":"The Rosetta Stone contains only Greek text, omitting the trilingual structure central to the decipherment described in the notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Omits the trilingual structure."},{"id":"B","text":"Demotic script was unrelated to hieroglyphic decipherment, ignoring its presence on the stone described in the notes. The authors caution that replication remains necessary before treating the finding. as the student''s research.","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Ignores Demotic''s role on the stone."},{"id":"C","text":"Using the Rosetta Stone''s parallel Greek text, Champollion compared names to hieroglyphic spellings and argued hieroglyphs could represent sounds—contrasting earlier scholars who assumed hieroglyphs were purely symbolic picture","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Champollion proved hieroglyphs were purely decorative art with no linguistic content, reversing his documented argument about sound representation. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Reverses his argument about sound representation."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how Champollion''s method differed from earlier assumptions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Omits the trilingual structure.
- B: Unwarranted_Synthesis: Ignores Demotic''s role on the stone.
- D: Truth_without_Goal: Reverses his argument about sound representation.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bfa37461-9b02-4c48-9f0d-daedf0d41c72', 'The student wants to present both productivity gains and documented drawbacks. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Agricultural Intensification 100296
• High-yield wheat varieties expanded production in South Asia during the 1960s–70s.
• Irrigation and fertilizer use rose alongside new seed strains.
• Yields increased, yet smallholders sometimes could not afford inputs.
• Water-table depletion emerged in regions with heavy pumping.
• Historians debate whether gains outweighed ecological and equity costs.', 'passage', '[{"id":"A","text":"The Green Revolution eliminated hunger permanently without any ecological trade-offs, contradicting documented water-table depletion in the notes. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicts documented water-table depletion."},{"id":"B","text":"Smallholders universally benefited from new seed strains, contradicting notes that some could not afford inputs. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicts affordability barriers in the notes."},{"id":"C","text":"Fertilizer use declined during the Green Revolution, contradicting the notes linking fertilizer rise to intensification. The authors caution that replication remains necessary before treating the finding as settled. according to the.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Contradicts rising fertilizer use in the notes."},{"id":"D","text":"High-yield wheat varieties and expanded irrigation raised production in South Asia, yet smallholders sometimes could not afford inputs and water-table depletion emerged—fueling debate about whether gains outweighed ecological","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present both productivity gains and documented drawbacks

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicts documented water-table depletion.
- B: Truth_without_Goal: Contradicts affordability barriers in the notes.
- C: Unwarranted_Synthesis: Contradicts rising fertilizer use in the notes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f61d3b4-70de-49a7-8e2c-39dfb5357ad9', 'The student wants to trace the path from Fleming''s observation to wartime availability. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Alexander Fleming and Penicillin
• Fleming observed mold inhibiting bacterial growth on a contaminated petri dish in 1928.
• He identified the mold as Penicillium and named the antibacterial substance penicillin.
• Initial extracts were unstable and difficult to mass-produce.
• Howard Florey and Ernst Chain later developed methods to purify and scale production.
• Penicillin became widely available to Allied forces during World War II.', 'passage', '[{"id":"A","text":"After Fleming identified penicillin from Penicillium mold in 1928, initial extracts proved unstable until Florey and Chain developed purification methods that enabled mass production widely available to Allied","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Fleming mass-produced penicillin immediately in 1928, ignoring the notes describing unstable initial extracts and later purification work. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Ignores unstable extracts and later purification."},{"id":"C","text":"Florey and Chain discovered mold on a petri dish, misassigning Fleming''s initial observation to later researchers. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Misassigns Fleming''s initial observation."},{"id":"D","text":"Penicillin was never used during World War II, contradicting wartime availability documented in the notes. The authors caution that replication remains necessary before treating the finding as settled. in ways that align.","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicts wartime availability in the notes."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: trace the path from Fleming''s observation to wartime availability

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Unwarranted_Synthesis: Ignores unstable extracts and later purification.
- C: Unwarranted_Synthesis: Misassigns Fleming''s initial observation.
- D: Truth_without_Goal: Contradicts wartime availability in the notes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('875f3d9a-1af3-4764-b86a-2539ccdb8bdf', 'The student wants to introduce the movement''s artistic aims and internal tensions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Writers and artists centered Black urban experience in 1920s Harlem.
• Langston Hughes used jazz rhythms in poetry.
• Zora Neale Hurston collected folklore.
• Patronage from white supporters created tensions.
• The movement influenced later civil-rights culture.', 'passage', '[{"id":"A","text":"Folklore collection was unrelated to the movement''s literary output. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"B","text":"Harlem Renaissance artists celebrated Black urban life through jazz-influenced poetry and folklore while navigating tensions created by white patronage that the notes document.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"The Harlem Renaissance rejected all European artistic influence entirely. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"D","text":"Patronage eliminated creative tensions among Harlem artists. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test.","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the movement''s artistic aims and internal tensions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- C: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- D: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6c544198-7d30-40f2-bef0-ab4bca218bdd', 'The student wants to explain how later evidence overcame initial skepticism. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Alfred Wegener proposed continental drift in 1912.
• Geologists initially rejected the idea lacking a mechanism.
• Mid-ocean ridge mapping later revealed seafloor spreading.
• Magnetic striping supported periodic reversals.
• Plate tectonics unified earthquake, volcano, and mountain patterns.', 'passage', '[{"id":"A","text":"Magnetic striping contradicted seafloor spreading. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"B","text":"Plate tectonics explains only earthquake patterns. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across. reflecting the bounded claims.","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"C","text":"Although geologists initially rejected Wegener''s continental drift lacking a mechanism, mid-ocean ridge mapping, seafloor spreading, and magnetic striping later supplied evidence that unified earthquake, volcano, and mountain patterns.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Wegener''s proposal was immediately accepted without debate. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds. in ways that align........","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how later evidence overcame initial skepticism

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- B: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- D: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6a56eef-56a4-4928-b50a-a235568be2b5', 'The student wants to emphasize how the movement challenged academic conventions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Parisian painters exhibited independently after Salon rejections in 1874.
• Artists captured fleeting light with visible brushstrokes.
• Monet''s series paintings tracked atmospheric changes.
• Critics initially mocked the sketch-like surfaces.
• Dealers later marketed Impressionism to bourgeois collectors.', 'passage', '[{"id":"A","text":"Impressionists sought to replicate Salon academic finish. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds. reflecting.","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"B","text":"Monet avoided atmospheric change in his series. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"C","text":"Early critics universally praised Impressionist surfaces. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"D","text":"Rejected by the Salon, Impressionists exhibited independently, using visible brushstrokes and Monet''s series to capture fleeting light—challenging academic finish even as critics mocked their sketch-like surfaces.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize how the movement challenged academic conventions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- B: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- C: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a60f50f1-d6cc-4c90-84e5-4a79043b9a94', 'The student wants to present humanitarian goals alongside strategic and economic dimensions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• The United States pledged billions for European reconstruction after World War II.
• Aid required purchases of many goods from US suppliers.
• Program aimed to stabilize democracies against Soviet influence.
• Recipient nations modernized industry and infrastructure.
• Historians debate economic strings attached to humanitarian framing.', 'passage', '[{"id":"A","text":"The Marshall Plan pledged billions to rebuild European industry and stabilize democracies, yet required many purchases from US suppliers—prompting historians to debate economic strings attached to humanitarian framing.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"The Marshall Plan provided aid with no purchasing conditions. The authors caution that replication remains necessary before treating the finding as settled. according to the specific details recorded in the student''s project.","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"C","text":"Soviet influence was unrelated to US reconstruction strategy. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"D","text":"Recipient nations rejected all industrial modernization. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present humanitarian goals alongside strategic and economic dimensions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- C: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- D: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a139fc8b-9646-4777-a397-5f726f350155', 'The student wants to introduce the biological origin before laboratory adaptation. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Bacteria use CRISPR sequences to remember viral DNA.
• Cas proteins cut matching sequences during reinfection.
• Scientists adapted the system to edit genomes in labs.
• Early applications targeted disease-causing mutations.
• Ethicists warn about off-target and germline implications.', 'passage', '[{"id":"A","text":"Ethicists raised no concerns about off-target effects. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"B","text":"Bacteria use CRISPR sequences and Cas proteins to cut matching viral DNA during reinfection—a natural immune memory that scientists later adapted to edit genomes in labs, prompting ethicists","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"CRISPR was invented without any bacterial precedent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"D","text":"Cas proteins prevent all genome editing in laboratories. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the biological origin before laboratory adaptation

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- C: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- D: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32c2b006-a154-4ef0-b38f-e40269871e15', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Tikal''s Water Supply
• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.
• The city of Tikal possessed a major reservoir system paved with plaster.
• Plaster lining prevented water from seeping into the porous limestone bedrock.
• The system at Tikal was designed to collect rainwater during the intense tropical wet season.
• This stored water sustained the city''s population of over 60,000 residents during the prolonged dry season.
• Archaeologists dated major plaster phases to the Late Classic period.', 'passage', '[{"id":"A","text":"The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle."},{"id":"B","text":"Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Misses storing water to sustain the population during the dry season."},{"id":"C","text":"Paved with plaster to prevent seepage into porous limestone, Tikal''s reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"To prevent water from seeping into Tikal''s porous limestone bedrock, the Maya paved their massive reservoir system with plaster. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Addresses seepage but omits the seasonal survival function."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle.
- B: Goal_Under_Specification: Misses storing water to sustain the population during the dry season.
- D: Goal_Under_Specification: Addresses seepage but omits the seasonal survival function.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b42eb199-20e1-421e-a978-2feaa4ace77a', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 100312
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy, importing information absent from the student''s research notes. The authors caution that replication remains necessary before treating.","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Imports information absent from the notes."},{"id":"B","text":"Flat-blade turbines remain the industry standard regardless of test outcomes, contradicting documented underperformance of flat blades in the notes. The authors caution that replication remains necessary before.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by documented underperformance of flat blades."},{"id":"C","text":"Noise monitoring alone proves a turbine design is superior, focusing on noise rather than the stated performance goal in the notes. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Focuses on noise, not the stated performance goal."},{"id":"D","text":"Inspired by humpback whale fin tubercles, prototype 100312 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Imports information absent from the notes.
- B: Truth_without_Goal: Contradicted by documented underperformance of flat blades.
- C: Goal_Under_Specification: Focuses on noise, not the stated performance goal.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f7194c0-f174-4e58-960b-14c1a10670ba', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Coral Reef Survey 100314
• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.
• Temperature and salinity remained stable across compared sites.
• Bare rock patches reappeared only where herbivore populations recovered.
• Policy briefs recommend no-take zones sized to herbivore home ranges.
• Authors caution that local reef geology still influences settlement success.', 'passage', '[{"id":"A","text":"Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Parrotfish are colorful reef dwellers that tourists enjoy photographing, offering an irrelevant description unrelated to reef recovery mechanisms in the notes. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Irrelevant to reef recovery mechanism."},{"id":"C","text":"Temperature changes alone explain all coral recruitment failures in the notes, contradicting the documented stable temperature across compared sites. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by stable temperature in the notes."},{"id":"D","text":"Geology determines settlement success, so fish protection is irrelevant, overstating geology while ignoring documented grazing effects in the notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Overstates geology while ignoring documented grazing effects."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain why protecting herbivorous fish matters for reef recovery

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Unwarranted_Synthesis: Irrelevant to reef recovery mechanism.
- C: Truth_without_Goal: Contradicted by stable temperature in the notes.
- D: Goal_Under_Specification: Overstates geology while ignoring documented grazing effects.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37876a01-3185-4df0-a5cc-44d692cc8c04', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Memory Consolidation Study 100316
• Participants who slept eight hours recalled word lists more accurately than those kept awake.
• Both groups studied for equal duration under matched conditions.
• Hippocampal imaging subsamples showed differential activation during retrieval.
• Authors plan replication with longer study materials.
• Lab conditions may limit generalization to classroom learning.', 'passage', '[{"id":"A","text":"Longer study materials would eliminate all differences between groups, speculating beyond the notes'' stated replication plan. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan."},{"id":"B","text":"When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Sleep deprivation improves recall because it increases alertness during testing, contradicting the higher recall documented in the sleep group. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by higher recall in the sleep group."},{"id":"D","text":"Hippocampal imaging proves sleep has no effect on memory, contradicting documented differential activation during retrieval in the notes. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by documented differential activation."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: summarize how sleep affected recall in the controlled study

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan.
- C: Truth_without_Goal: Contradicted by higher recall in the sleep group.
- D: Truth_without_Goal: Contradicted by documented differential activation.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e14e3aa-132e-4b82-a69c-aabcb7b5c9d1', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Literacy Intervention 100318
• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.
• Comprehension scores rose twelve points versus a four-point gain in control cohorts.
• Teachers observed students citing textual evidence during disagreements.
• Scripted prompts required paraphrasing a counterargument before advancing a claim.
• District coaches recorded higher engagement during observed lessons.', 'passage', '[{"id":"A","text":"Engagement observations prove discussion protocols reduce comprehension, contradicting higher comprehension scores linked to discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by higher comprehension scores."},{"id":"B","text":"Paraphrasing prompts are unrelated to the measured score gains, ignoring the link between structured prompts and measured outcomes. The authors caution that replication remains necessary.......","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes."},{"id":"C","text":"Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort''s four-point gain—with teachers observing students citing textual evidence during disagreements.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Worksheets remain the only valid tool because they require silent focus, contradicting documented gains for discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by documented gains for discussion."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize the most empirically supported approach documented in the notes

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicted by higher comprehension scores.
- B: Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes.
- D: Truth_without_Goal: Contradicted by documented gains for discussion.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2715be57-7df5-4d8d-ba5b-c41c8882616c', 'The student wants to emphasize Lovelace''s conceptual contribution beyond mere calculation. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Ada Lovelace and Early Computing
• Ada Lovelace was a 19th-century English mathematician who worked with Charles Babbage.
• She wrote notes describing how a computing engine could manipulate symbols, not only numbers.
• Her notes included an algorithm for Bernoulli numbers, often cited as early programming.
• Historians debate how much of the notes reflect her independent insight versus Babbage''s ideas.
• Recent scholarship emphasizes her conceptual leap beyond mere calculation.', 'passage', '[{"id":"A","text":"Lovelace''s primary contribution was building the physical computing engine herself, a claim not supported by the student''s research notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Not supported by the notes."},{"id":"B","text":"Historians agree her notes added nothing beyond Babbage''s own ideas, contradicting scholarship emphasizing her conceptual leap. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by scholarship emphasizing her conceptual leap."},{"id":"C","text":"Bernoulli numbers prove Lovelace invented modern electronic computers, overstating beyond what the notes claim. The authors caution that replication remains necessary before treating the finding as settled. matching the scope of facts.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Overstates beyond what the notes claim."},{"id":"D","text":"Lovelace''s notes described how a computing engine could manipulate symbols—not only numbers—and included an algorithm for Bernoulli numbers, reflecting a conceptual leap beyond mere calculation that recent scholarship","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize Lovelace''s conceptual contribution beyond mere calculation

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Not supported by the notes.
- B: Truth_without_Goal: Contradicted by scholarship emphasizing her conceptual leap.
- C: Unwarranted_Synthesis: Overstates beyond what the notes claim.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f75044f7-0c53-4d76-a342-071991e41ad3', 'The student wants to connect beak variation to survival during environmental change. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Darwin''s Finches Study 100322
• Researchers measured beak depth across drought and wet seasons on Daphne Major.
• Medium ground finches with deeper beaks survived better during drought when large seeds dominated.
• Beak traits shifted measurably within a few generations after rainfall patterns changed.
• The team cautions that extrapolation to all species requires additional field seasons.
• Findings illustrate natural selection acting on heritable variation in a wild population.', 'passage', '[{"id":"A","text":"When drought favored large seeds, medium ground finches with deeper beaks survived better, and measurable beak shifts within a few generations illustrate natural selection acting on heritable variation","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Finches voluntarily changed their beak size in a single season through individual effort, misrepresenting heritable variation as personal choice. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Misrepresents heritable variation as personal choice."},{"id":"C","text":"Rainfall patterns never affect seed size on Daphne Major, contradicting the notes linking drought to large-seed dominance. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicts the notes linking drought to large seeds."},{"id":"D","text":"The study proves evolution cannot occur within observable time frames, opposing documented shifts within a few generations. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Opposes documented shifts within a few generations."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: connect beak variation to survival during environmental change

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Truth_without_Goal: Misrepresents heritable variation as personal choice.
- C: Truth_without_Goal: Contradicts the notes linking drought to large seeds.
- D: Truth_without_Goal: Opposes documented shifts within a few generations.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db7e69f7-5a73-4a9f-aa41-81fabe497bc5', 'The student wants to explain how Champollion''s method differed from earlier assumptions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Decipherment of Hieroglyphs
• The Rosetta Stone (196 BCE) presents the same decree in hieroglyphic, Demotic, and Greek scripts.
• Scholar Jean-François Champollion compared Greek names to hieroglyphic spellings.
• He argued hieroglyphs could represent sounds, not only ideas.
• Earlier scholars assumed hieroglyphs were purely symbolic picture writing.
• Champollion''s 1822 letter announced a breakthrough in reading Egyptian texts.', 'passage', '[{"id":"A","text":"Demotic script was unrelated to hieroglyphic decipherment, ignoring its presence on the stone described in the notes. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Ignores Demotic''s role on the stone."},{"id":"B","text":"Using the Rosetta Stone''s parallel Greek text, Champollion compared names to hieroglyphic spellings and argued hieroglyphs could represent sounds—contrasting earlier scholars who assumed hieroglyphs were purely symbolic picture","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Champollion proved hieroglyphs were purely decorative art with no linguistic content, reversing his documented argument about sound representation. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Reverses his argument about sound representation."},{"id":"D","text":"The Rosetta Stone contains only Greek text, omitting the trilingual structure central to the decipherment described in the notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Omits the trilingual structure."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how Champollion''s method differed from earlier assumptions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Ignores Demotic''s role on the stone.
- C: Truth_without_Goal: Reverses his argument about sound representation.
- D: Goal_Under_Specification: Omits the trilingual structure.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8a23a0d-63a5-401b-84a2-0405b155c962', 'The student wants to present both productivity gains and documented drawbacks. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Agricultural Intensification 100326
• High-yield wheat varieties expanded production in South Asia during the 1960s–70s.
• Irrigation and fertilizer use rose alongside new seed strains.
• Yields increased, yet smallholders sometimes could not afford inputs.
• Water-table depletion emerged in regions with heavy pumping.
• Historians debate whether gains outweighed ecological and equity costs.', 'passage', '[{"id":"A","text":"Smallholders universally benefited from new seed strains, contradicting notes that some could not afford inputs. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicts affordability barriers in the notes."},{"id":"B","text":"Fertilizer use declined during the Green Revolution, contradicting the notes linking fertilizer rise to intensification. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Contradicts rising fertilizer use in the notes."},{"id":"C","text":"High-yield wheat varieties and expanded irrigation raised production in South Asia, yet smallholders sometimes could not afford inputs and water-table depletion emerged—fueling debate about whether gains outweighed ecological","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"The Green Revolution eliminated hunger permanently without any ecological trade-offs, contradicting documented water-table depletion in the notes. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicts documented water-table depletion."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present both productivity gains and documented drawbacks

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicts affordability barriers in the notes.
- B: Unwarranted_Synthesis: Contradicts rising fertilizer use in the notes.
- D: Truth_without_Goal: Contradicts documented water-table depletion.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c708369a-7aea-46e1-8365-55250e5053cf', 'The student wants to trace the path from Fleming''s observation to wartime availability. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Alexander Fleming and Penicillin
• Fleming observed mold inhibiting bacterial growth on a contaminated petri dish in 1928.
• He identified the mold as Penicillium and named the antibacterial substance penicillin.
• Initial extracts were unstable and difficult to mass-produce.
• Howard Florey and Ernst Chain later developed methods to purify and scale production.
• Penicillin became widely available to Allied forces during World War II.', 'passage', '[{"id":"A","text":"Fleming mass-produced penicillin immediately in 1928, ignoring the notes describing unstable initial extracts and later purification work. The authors caution that replication remains necessary before treating the finding","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Ignores unstable extracts and later purification."},{"id":"B","text":"Florey and Chain discovered mold on a petri dish, misassigning Fleming''s initial observation to later researchers. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Misassigns Fleming''s initial observation."},{"id":"C","text":"Penicillin was never used during World War II, contradicting wartime availability documented in the notes. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicts wartime availability in the notes."},{"id":"D","text":"After Fleming identified penicillin from Penicillium mold in 1928, initial extracts proved unstable until Florey and Chain developed purification methods that enabled mass production widely available to Allied","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: trace the path from Fleming''s observation to wartime availability

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Ignores unstable extracts and later purification.
- B: Unwarranted_Synthesis: Misassigns Fleming''s initial observation.
- C: Truth_without_Goal: Contradicts wartime availability in the notes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cea5caeb-833a-4cf4-8728-43a3e60c707b', 'The student wants to introduce the movement''s artistic aims and internal tensions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Writers and artists centered Black urban experience in 1920s Harlem.
• Langston Hughes used jazz rhythms in poetry.
• Zora Neale Hurston collected folklore.
• Patronage from white supporters created tensions.
• The movement influenced later civil-rights culture.', 'passage', '[{"id":"A","text":"Harlem Renaissance artists celebrated Black urban life through jazz-influenced poetry and folklore while navigating tensions created by white patronage that the notes document.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"The Harlem Renaissance rejected all European artistic influence entirely. The authors caution that replication remains necessary before treating the finding as settled. as the student''s.","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"C","text":"Patronage eliminated creative tensions among Harlem artists. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"D","text":"Folklore collection was unrelated to the movement''s literary output. The authors caution that replication remains necessary before treating the finding as settled.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the movement''s artistic aims and internal tensions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- C: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- D: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5025da35-05bf-4be2-9374-e2b31a05efff', 'The student wants to explain how later evidence overcame initial skepticism. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Alfred Wegener proposed continental drift in 1912.
• Geologists initially rejected the idea lacking a mechanism.
• Mid-ocean ridge mapping later revealed seafloor spreading.
• Magnetic striping supported periodic reversals.
• Plate tectonics unified earthquake, volcano, and mountain patterns.', 'passage', '[{"id":"A","text":"Plate tectonics explains only earthquake patterns. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across. reflecting the bounded claims.","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"B","text":"Although geologists initially rejected Wegener''s continental drift lacking a mechanism, mid-ocean ridge mapping, seafloor spreading, and magnetic striping later supplied evidence that unified earthquake, volcano, and mountain patterns.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Wegener''s proposal was immediately accepted without debate. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"D","text":"Magnetic striping contradicted seafloor spreading. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how later evidence overcame initial skepticism

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- C: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- D: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('54044215-c9f3-48f6-b265-aaf466dc8097', 'The student wants to emphasize how the movement challenged academic conventions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Parisian painters exhibited independently after Salon rejections in 1874.
• Artists captured fleeting light with visible brushstrokes.
• Monet''s series paintings tracked atmospheric changes.
• Critics initially mocked the sketch-like surfaces.
• Dealers later marketed Impressionism to bourgeois collectors.', 'passage', '[{"id":"A","text":"Monet avoided atmospheric change in his series. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds. reflecting........","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"B","text":"Early critics universally praised Impressionist surfaces. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across","is_correct":false,"explanation":"[Truth without Goal] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"C","text":"Rejected by the Salon, Impressionists exhibited independently, using visible brushstrokes and Monet''s series to capture fleeting light—challenging academic finish even as critics mocked their sketch-like surfaces.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Impressionists sought to replicate Salon academic finish. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize how the movement challenged academic conventions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- B: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.
- D: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('67ca6aef-0836-4fa8-9ddb-4699d6480a58', 'The student wants to present humanitarian goals alongside strategic and economic dimensions. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• The United States pledged billions for European reconstruction after World War II.
• Aid required purchases of many goods from US suppliers.
• Program aimed to stabilize democracies against Soviet influence.
• Recipient nations modernized industry and infrastructure.
• Historians debate economic strings attached to humanitarian framing.', 'passage', '[{"id":"A","text":"The Marshall Plan provided aid with no purchasing conditions. The authors caution that replication remains necessary before treating the finding as settled. according to the specific details recorded in the student''s project.","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"B","text":"Soviet influence was unrelated to US reconstruction strategy. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern. consistent with the.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"C","text":"Recipient nations rejected all industrial modernization. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."},{"id":"D","text":"The Marshall Plan pledged billions to rebuild European industry and stabilize democracies, yet required many purchases from US suppliers—prompting historians to debate economic strings attached to humanitarian framing.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present humanitarian goals alongside strategic and economic dimensions

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- B: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- C: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('53c82fbc-608f-405c-9813-7e298519dde4', 'The student wants to introduce the biological origin before laboratory adaptation. Which choice most effectively uses relevant information from the notes to accomplish this goal?', '• Bacteria use CRISPR sequences to remember viral DNA.
• Cas proteins cut matching sequences during reinfection.
• Scientists adapted the system to edit genomes in labs.
• Early applications targeted disease-causing mutations.
• Ethicists warn about off-target and germline implications.', 'passage', '[{"id":"A","text":"Bacteria use CRISPR sequences and Cas proteins to cut matching viral DNA during reinfection—a natural immune memory that scientists later adapted to edit genomes in labs, prompting ethicists","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"CRISPR was invented without any bacterial precedent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only."},{"id":"C","text":"Cas proteins prevent all genome editing in laboratories. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only."},{"id":"D","text":"Ethicists raised no concerns about off-target effects. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the biological origin before laboratory adaptation

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Goal_Under_Specification: Trap Goal_Under_Specification: fails the rhetorical goal using note facts only.
- C: Truth_without_Goal: Trap Truth_without_Goal: fails the rhetorical goal using note facts only.
- D: Unwarranted_Synthesis: Trap Unwarranted_Synthesis: fails the rhetorical goal using note facts only.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c15468d7-2f08-44f4-b6f7-f221a40cf4d3', 'The student wants to explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Tikal''s Water Supply
• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.
• The city of Tikal possessed a major reservoir system paved with plaster.
• Plaster lining prevented water from seeping into the porous limestone bedrock.
• The system at Tikal was designed to collect rainwater during the intense tropical wet season.
• This stored water sustained the city''s population of over 60,000 residents during the prolonged dry season.
• Archaeologists dated major plaster phases to the Late Classic period.', 'passage', '[{"id":"A","text":"Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Misses storing water to sustain the population during the dry season."},{"id":"B","text":"Paved with plaster to prevent seepage into porous limestone, Tikal''s reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"To prevent water from seeping into Tikal''s porous limestone bedrock, the Maya paved their massive reservoir system with plaster. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Addresses seepage but omits the seasonal survival function."},{"id":"D","text":"The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how the architectural design of Tikal''s reservoir system directly addressed an environmental challenge of the region

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Misses storing water to sustain the population during the dry season.
- C: Goal_Under_Specification: Addresses seepage but omits the seasonal survival function.
- D: Goal_Under_Specification: Too general; omits porous limestone and seasonal cycle.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94f3bc0f-a176-4422-84e4-10b5426ba971', 'The student wants to introduce the turbine design and its measured performance advantage. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Biomimetic Wind Turbine 100342
• Engineers modeled blade ridges on humpback whale fin tubercles.
• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.
• Flat-blade designs underperformed at identical speeds in controlled comparisons.
• Field monitoring confirmed gains persisted across seasonal wind variability.
• Overnight noise levels remained within residential ordinance limits.', 'passage', '[{"id":"A","text":"Flat-blade turbines remain the industry standard regardless of test outcomes, contradicting documented underperformance of flat blades in the notes. The authors caution that replication remains necessary before.","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by documented underperformance of flat blades."},{"id":"B","text":"Noise monitoring alone proves a turbine design is superior, focusing on noise rather than the stated performance goal in the notes. The authors caution that replication remains necessary. as........","is_correct":false,"explanation":"[Truth without Goal] Goal_Under_Specification: Focuses on noise, not the stated performance goal."},{"id":"C","text":"Inspired by humpback whale fin tubercles, prototype 100342 achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"D","text":"Whale-fin tubercles have inspired many unrelated inventions beyond energy, importing information absent from the student''s research notes. The authors caution that replication remains necessary before treating.","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Imports information absent from the notes."}]'::jsonb, 'C', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce the turbine design and its measured performance advantage

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice C integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Truth_without_Goal: Contradicted by documented underperformance of flat blades.
- B: Goal_Under_Specification: Focuses on noise, not the stated performance goal.
- D: Unwarranted_Synthesis: Imports information absent from the notes.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('764cc517-4a6a-464d-a442-7adc1ad658fc', 'The student wants to explain why protecting herbivorous fish matters for reef recovery. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Coral Reef Survey 100344
• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.
• Temperature and salinity remained stable across compared sites.
• Bare rock patches reappeared only where herbivore populations recovered.
• Policy briefs recommend no-take zones sized to herbivore home ranges.
• Authors caution that local reef geology still influences settlement success.', 'passage', '[{"id":"A","text":"Parrotfish are colorful reef dwellers that tourists enjoy photographing, offering an irrelevant description unrelated to reef recovery mechanisms in the notes. The authors caution that replication remains necessary","is_correct":false,"explanation":"[Goal Under-Specification] Unwarranted_Synthesis: Irrelevant to reef recovery mechanism."},{"id":"B","text":"Temperature changes alone explain all coral recruitment failures in the notes, contradicting the documented stable temperature across compared sites. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by stable temperature in the notes."},{"id":"C","text":"Geology determines settlement success, so fish protection is irrelevant, overstating geology while ignoring documented grazing effects in the notes. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Unwarranted Synthesis] Goal_Under_Specification: Overstates geology while ignoring documented grazing effects."},{"id":"D","text":"Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."}]'::jsonb, 'D', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain why protecting herbivorous fish matters for reef recovery

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice D integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Unwarranted_Synthesis: Irrelevant to reef recovery mechanism.
- B: Truth_without_Goal: Contradicted by stable temperature in the notes.
- C: Goal_Under_Specification: Overstates geology while ignoring documented grazing effects.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cabe9417-41e3-45ab-99db-458ae54667f5', 'The student wants to summarize how sleep affected recall in the controlled study. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Memory Consolidation Study 100346
• Participants who slept eight hours recalled word lists more accurately than those kept awake.
• Both groups studied for equal duration under matched conditions.
• Hippocampal imaging subsamples showed differential activation during retrieval.
• Authors plan replication with longer study materials.
• Lab conditions may limit generalization to classroom learning.', 'passage', '[{"id":"A","text":"When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"B","text":"Sleep deprivation improves recall because it increases alertness during testing, contradicting the higher recall documented in the sleep group. The authors caution that replication remains necessary before treating","is_correct":false,"explanation":"[Goal Under-Specification] Truth_without_Goal: Contradicted by higher recall in the sleep group."},{"id":"C","text":"Hippocampal imaging proves sleep has no effect on memory, contradicting documented differential activation during retrieval in the notes. The authors caution that replication remains necessary before treating the","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by documented differential activation."},{"id":"D","text":"Longer study materials would eliminate all differences between groups, speculating beyond the notes'' stated replication plan. The authors caution that replication remains necessary before treating the finding as","is_correct":false,"explanation":"[Unwarranted Synthesis] Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: summarize how sleep affected recall in the controlled study

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- B: Truth_without_Goal: Contradicted by higher recall in the sleep group.
- C: Truth_without_Goal: Contradicted by documented differential activation.
- D: Unwarranted_Synthesis: Speculates beyond the notes'' stated replication plan.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a35c17e9-5786-41ba-89be-77d3aaa26808', 'The student wants to emphasize the most empirically supported approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Literacy Intervention 100348
• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.
• Comprehension scores rose twelve points versus a four-point gain in control cohorts.
• Teachers observed students citing textual evidence during disagreements.
• Scripted prompts required paraphrasing a counterargument before advancing a claim.
• District coaches recorded higher engagement during observed lessons.', 'passage', '[{"id":"A","text":"Paraphrasing prompts are unrelated to the measured score gains, ignoring the link between structured prompts and measured outcomes. The authors caution that replication remains necessary.","is_correct":false,"explanation":"[Goal Under-Specification] Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes."},{"id":"B","text":"Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort''s four-point gain—with teachers observing students citing textual evidence during disagreements.","is_correct":true,"explanation":"Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims."},{"id":"C","text":"Worksheets remain the only valid tool because they require silent focus, contradicting documented gains for discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Truth without Goal] Truth_without_Goal: Contradicted by documented gains for discussion."},{"id":"D","text":"Engagement observations prove discussion protocols reduce comprehension, contradicting higher comprehension scores linked to discussion in the notes. The authors caution that replication remains.","is_correct":false,"explanation":"[Unwarranted Synthesis] Truth_without_Goal: Contradicted by higher comprehension scores."}]'::jsonb, 'B', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize the most empirically supported approach documented in the notes

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice B integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
- A: Goal_Under_Specification: Ignores the link between structured prompts and measured outcomes.
- C: Truth_without_Goal: Contradicted by documented gains for discussion.
- D: Truth_without_Goal: Contradicted by higher comprehension scores.', NULL, 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
