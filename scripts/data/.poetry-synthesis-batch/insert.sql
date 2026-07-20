BEGIN;
DELETE FROM public.questions WHERE id IN ('b3d5537f-4c51-490e-b40f-c768e487bb3d','6974ceff-3fd2-4b5d-aa91-58e00e9b680f','bba9b6a1-c9bc-46af-abfb-02214360814f','0407abce-917d-4cad-939a-49d998fcfcc5','c033f2f9-f139-4fbc-9586-37de45a132c9','bcce92d3-90c2-4f58-a861-d47508f0f49c','5e3ba455-be18-4719-8bf5-0d85b011eade','0865a534-ccf2-4db3-853f-58d26069a65e','83c21998-b8de-40d9-ab9b-ab7cdb42282d','52c453da-7ec6-4f2c-89b9-709c863b40cf','12073f1d-a7bf-4b28-98ac-1bcff0274533','37e77fa2-4f50-46f9-9216-2be3e53db027');
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('914455a7-403a-4b22-ac1d-1b33d2b52301', 'As used in line 6, "wan" most nearly means', 'When April wears her silver veil
And raindrops tap the garden rail,
My sister sits with folded hands,
Her laughter gone to distant lands.
The doctor spoke in measured tone;
Her cheek had grown a pallid, wan
Reflection of the hearth''s low flame—
Not illness yet, but not the same.', 'poetry', '[{"id":"A","text":"pale","is_correct":true,"explanation":"Correct: ''wan'' describes her cheek as pallid, matching a pale, colorless appearance."},{"id":"B","text":"cheerful","is_correct":false,"explanation":"Incorrect: the poem links her wan cheek to lost laughter, not cheer."},{"id":"C","text":"wide","is_correct":false,"explanation":"Incorrect: ''wan'' concerns color, not physical breadth."},{"id":"D","text":"stubborn","is_correct":false,"explanation":"Incorrect: no stubbornness is attributed to her appearance."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Line 6 pairs {{yellow:pallid, wan}} with a cheek that reflects the hearth''s low flame.

Step 2 — Test each meaning
Pallid signals loss of healthy color, so ''wan'' most nearly means pale.

Step 3 — Confirm the answer
Choice A is correct.

Distractor analysis:
- B: Contradicts the absence of laughter and pallor.
- C: Describes size, not complexion.
- D: Personality is never discussed.', 'Read the word beside ''pallid'' on line 6.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature","passage_genre":"poetry","literary_period":"victorian"}'::jsonb, 'poetry-wic-easy-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('750aff3c-eddc-4e09-9d98-680807553845', 'As used in line 5, "borne" most nearly means', 'We stacked our songs like corded wood
Against a winter sharp and rude,
Yet still the block kept steady heat—
Not borrowed flame, but self-complete.
The joy we carried, self-borne, bright,
Defied the auction of the night;
No critic''s purse could bid it low:
We owned the ember''s afterglow.', 'poetry', '[{"id":"A","text":"carried within oneself","is_correct":true,"explanation":"Correct: ''self-borne'' joy is internally sustained, not borrowed from outside."},{"id":"B","text":"forbidden","is_correct":false,"explanation":"Incorrect: the poem celebrates the joy as defiant, not banned."},{"id":"C","text":"displayed for sale","is_correct":false,"explanation":"Incorrect: the joy resists being auctioned, not offered for sale."},{"id":"D","text":"forgotten","is_correct":false,"explanation":"Incorrect: the joy remains bright and owned, not lost."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Line 5 calls the joy {{yellow:self-borne, bright}} and contrasts it with borrowed flame.

Step 2 — Test each meaning
Because the heat is ''self-complete,'' ''borne'' means carried or sustained within oneself.

Step 3 — Confirm the answer
Choice A is correct.

Distractor analysis:
- B: The poem presents joy as permitted and defiant, not forbidden.
- C: Auction imagery shows joy cannot be sold.
- D: The ember''s afterglow persists.', 'Contrast ''self-borne'' with ''borrowed flame'' in line 4.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"vocabulary_in_context","rw_format":"passage_mc","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature","passage_genre":"poetry","literary_period":"harlem_renaissance"}'::jsonb, 'poetry-wic-medium-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('8e103cde-d682-4826-a108-22e242647f5d', 'Which choice best describes the overall structure of the poem?', 'The city wears a collar tight
Of smoke and iron, day and night;
I count its chimneys, one by one,
And mourn the unreturning sun.
But turn—beyond the clanging street—
A meadow opens, cool and sweet;
There birch trees write in greenest ink,
And brooks persuade the grass to drink.', 'poetry', '[{"id":"A","text":"It contrasts an oppressive urban scene with a restorative natural landscape.","is_correct":true,"explanation":"Correct: stanzas shift from city smoke to meadow coolness."},{"id":"B","text":"It narrates a single day''s journey without changing setting.","is_correct":false,"explanation":"Incorrect: the setting changes from city to meadow."},{"id":"C","text":"It argues that factories should replace farmland.","is_correct":false,"explanation":"Incorrect: the meadow is presented positively, not as something to replace."},{"id":"D","text":"It lists historical dates in chronological order.","is_correct":false,"explanation":"Incorrect: no dates appear."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
The opening quatrain depicts {{yellow:smoke and iron}}; the closing quatrain turns to a meadow.

Step 2 — Match structure to purpose
The pivot word ''But turn'' signals contrast between city oppression and natural restoration.

Step 3 — Confirm the answer
Choice A is correct.

Distractor analysis:
- B: Two distinct settings are juxtaposed.
- C: The poem favors the meadow, not industrial expansion.
- D: No chronology is provided.', 'Notice how the poem shifts after ''But turn.''', 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"structure","rw_format":"passage_mc","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature","passage_genre":"poetry","literary_period":"romantic"}'::jsonb, 'poetry-tsp-easy-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('4312fec0-5e16-4202-9fb0-576909516ff5', 'Which choice best describes the function of the final two lines?', 'Clocks dissolve. The stair
Spirals through rooms I never entered.
A woman pours tea beside a window
Whose glass remembers every weather.
Letters arrive with stamps from ports
I cannot trace on any chart.
The table holds a bowl of pears
That ripen while I read each line.
At last the fruit gives up its skin—
That is the poem''s hidden design.', 'poetry', '[{"id":"A","text":"They reveal that the preceding images were building toward a single metaphor about ripening as artistic design.","is_correct":true,"explanation":"Correct: the pears ripening parallels the poem disclosing its ''hidden design.''"},{"id":"B","text":"They introduce a new unrelated topic about maritime commerce.","is_correct":false,"explanation":"Incorrect: ports appear earlier; the ending returns to the pears metaphor."},{"id":"C","text":"They reject the surreal images as meaningless dreams.","is_correct":false,"explanation":"Incorrect: the ending affirms purposeful design, not meaninglessness."},{"id":"D","text":"They summarize a scientific study of fruit cultivation.","is_correct":false,"explanation":"Incorrect: the ripening image is metaphorical, not agricultural reporting."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Surreal domestic images accumulate until the pears {{yellow:ripen while I read each line}}.

Step 2 — Match structure to purpose
The closing couplet states the fruit ''gives up its skin'' as the poem''s hidden design—metaphor for disclosure.

Step 3 — Confirm the answer
Choice A is correct.

Distractor analysis:
- B: Ports are earlier detail; the ending unifies the fruit motif.
- C: The speaker claims intentional design.
- D: No scientific framing appears.', 'Link the ripening pears to ''hidden design.''', 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"structure","rw_format":"passage_mc","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature","passage_genre":"poetry","literary_period":"early_modernism"}'::jsonb, 'poetry-tsp-medium-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('1da266a2-b100-4eaa-8142-e8278e6ece9f', 'Which choice best states the main idea of the poem?', 'I folded your last letter thin
And tucked it where the heart begins;
Not to forget, but to transform
The weight of loss to something warm.
The ink has faded, yet I keep
The crease where once you paused to weep;
Grief, pressed like flowers in a book,
Can teach the hand a gentler look.', 'poetry', '[{"id":"A","text":"Preserving a memento of loss can reshape grief into quiet strength.","is_correct":true,"explanation":"Correct: keeping the letter transforms loss into warmth and gentleness."},{"id":"B","text":"The speaker urges readers to destroy painful reminders immediately.","is_correct":false,"explanation":"Incorrect: the speaker keeps and values the letter."},{"id":"C","text":"The poem primarily catalogs postal regulations in the nineteenth century.","is_correct":false,"explanation":"Incorrect: the focus is emotional, not bureaucratic."},{"id":"D","text":"The speaker has forgotten the addressee entirely.","is_correct":false,"explanation":"Incorrect: the letter is deliberately preserved."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
The speaker keeps the letter {{yellow:not to forget, but to transform the weight of loss}}.

Step 2 — Eliminate scope errors
Grief becomes a pressed flower that teaches gentleness—transformation, not erasure.

Step 3 — Confirm the answer
Choice A is correct.

Distractor analysis:
- B: The speaker saves rather than destroys the letter.
- C: No regulations are discussed.
- D: Memory is actively tended.', 'Focus on why the speaker keeps the folded letter.', 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"main_idea","rw_format":"passage_mc","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature","passage_genre":"poetry","literary_period":"victorian"}'::jsonb, 'poetry-cid-easy-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('9ac54261-7e42-4261-813d-b649a5af7baf', 'Which choice best states the main idea of the poem?', 'They praised the tenement for thrift,
Its bricks efficient, bare, and clean;
Yet from the rail we coaxed a drift
Of green that dared the gray between.
A jar of soil, a stolen sunbeam,
A vine that learned the fire escape—
Small beauties, rooted in the seam
Of hardship, still refuse to drape
Their leaves in shame. We call it grace:
Survival wearing beauty''s face.', 'poetry', '[{"id":"A","text":"Beauty and resilience can flourish even within cramped, harsh living conditions.","is_correct":true,"explanation":"Correct: plants on the fire escape embody grace amid hardship."},{"id":"B","text":"Urban gardening is too expensive for working families.","is_correct":false,"explanation":"Incorrect: the poem celebrates thrift and improvised growth."},{"id":"C","text":"Official praise of tenements proves housing reform succeeded.","is_correct":false,"explanation":"Incorrect: thrift is others'' praise; the speaker highlights quiet resistance."},{"id":"D","text":"The speaker regrets moving to the countryside.","is_correct":false,"explanation":"Incorrect: no relocation or regret is mentioned."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Small beauties {{yellow:rooted in the seam of hardship}} still refuse shame.

Step 2 — Eliminate scope errors
The closing couplet names survival wearing beauty''s face as grace.

Step 3 — Confirm the answer
Choice A is correct.

Distractor analysis:
- B: Growth is improvised from a jar and sunbeam, not costly.
- C: Official praise is contrasted with residents'' creative resilience.
- D: The setting remains the tenement rail.', 'Read the final couplet about ''grace.''', 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"main_idea","rw_format":"passage_mc","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature","passage_genre":"poetry","literary_period":"harlem_renaissance"}'::jsonb, 'poetry-cid-medium-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('69f6cf95-62e6-4a4c-9443-24ecbece46c6', 'The student wants to emphasize how Hurston combined folklore research with literary storytelling. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Zora Neale Hurston
• Hurston conducted anthropological fieldwork collecting Black folk tales in Eatonville, Florida.
• She published the novel Their Eyes Were Watching God in 1937.
• Critics note the novel''s dialogue draws on oral storytelling rhythms she recorded in the field.
• She studied under anthropologist Franz Boas at Barnard College.
• Some contemporaries criticized her for not focusing solely on political protest fiction.', 'passage', '[{"id":"A","text":"After studying under Franz Boas, Hurston collected folk tales in Eatonville and later shaped Their Eyes Were Watching God with dialogue echoing the oral rhythms she had recorded.","is_correct":true,"explanation":"Synthesizes fieldwork and novel to show folklore informing literary storytelling."},{"id":"B","text":"Hurston''s contemporaries agreed she should write only political protest fiction.","is_correct":false,"explanation":"Misstates the notes: some criticized her, but agreement is not claimed."},{"id":"C","text":"Their Eyes Were Watching God was published before Hurston entered Barnard College.","is_correct":false,"explanation":"Imports an unsupported chronology reversal."},{"id":"D","text":"Franz Boas wrote the dialogue in Their Eyes Were Watching God based on Eatonville tales.","is_correct":false,"explanation":"Boas was her teacher; the notes credit Hurston''s novel."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize how Hurston combined folklore research with literary storytelling

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Distorts criticism into unanimous agreement.
- C: Contradicts the implied sequence of study, fieldwork, and publication.
- D: Assigns authorship to Boas without support.', 'Which option connects field recordings to the novel''s dialogue?', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature"}'::jsonb, 'syn-easy-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('084bbc6e-33cf-42d8-8512-e1c045f7ae79', 'The student wants to introduce Carson''s book and its central environmental warning. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Rachel Carson and Silent Spring
• Rachel Carson was a marine biologist and science writer.
• Silent Spring (1962) argued that widespread pesticide use harmed wildlife and human health.
• The book examined how DDT accumulated in food chains.
• Carson urged policymakers to weigh ecological risks before approving chemical sprays.
• Silent Spring is credited with helping launch the modern environmental movement.', 'passage', '[{"id":"A","text":"Marine biologist Rachel Carson''s 1962 book Silent Spring warned that pesticides such as DDT accumulate in food chains, threatening wildlife and human health.","is_correct":true,"explanation":"Introduces author, title, date, and central warning using note facts."},{"id":"B","text":"Silent Spring proved pesticides never affect human health when used correctly.","is_correct":false,"explanation":"Contradicts the book''s warning about health harms."},{"id":"C","text":"Carson focused exclusively on oceanography and never discussed land animals.","is_correct":false,"explanation":"Notes mention wildlife broadly and food chains, not oceans only."},{"id":"D","text":"Policymakers banned every chemical before Carson began writing.","is_correct":false,"explanation":"Carson urged weighing risks; no preemptive ban is stated."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: introduce Carson''s book and its central environmental warning

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Reverses the book''s argument.
- C: Ignores wildlife and food-chain evidence.
- D: Invents a timeline not in the notes.', 'Include the title, date, and DDT warning.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature"}'::jsonb, 'syn-easy-002', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('1a901e1e-f920-44f2-9909-c77132b720d4', 'The student wants to explain how Kurosawa used weather to mirror characters'' moral uncertainty. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Akira Kurosawa''s Rashomon (1950)
• The film depicts four contradictory accounts of a samurai''s death in a forest.
• Kurosawa shot many scenes during intense sunlight filtered through leaves, creating shifting patches of light and shadow.
• Critics argue the unstable lighting visualizes the difficulty of establishing a single truthful narrative.
• The screenplay adapts two short stories by Ryūnosuke Akutagawa.
• Rashomon won an honorary Academy Award in 1952.', 'passage', '[{"id":"A","text":"As characters offer contradictory accounts of the samurai''s death, Kurosawa''s leaf-filtered sunlight casts shifting light and shadow, visualizing how hard it is to fix a single truthful narrative.","is_correct":true,"explanation":"Links contradictory testimony to lighting that mirrors moral uncertainty."},{"id":"B","text":"Kurosawa used constant studio lighting to emphasize that one witness tells the truth.","is_correct":false,"explanation":"Contradicts shifting natural light described in the notes."},{"id":"C","text":"The film''s Academy Award proves which account of the death is accurate.","is_correct":false,"explanation":"An award does not establish narrative truth within the story."},{"id":"D","text":"Akutagawa directed the film and chose the weather patterns himself.","is_correct":false,"explanation":"Akutagawa wrote source stories; Kurosawa directed."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain how Kurosawa used weather to mirror characters'' moral uncertainty

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Opposes the documented shifting sunlight.
- C: Imports irrelevant award logic.
- D: Misidentifies the director.', 'Connect contradictory accounts to shifting light.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature"}'::jsonb, 'syn-medium-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('d97c1e17-b267-4aa5-a09e-6956f92af504', 'The student wants to emphasize what the Oseberg burial reveals about Viking beliefs concerning the afterlife. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'Oseberg Ship Burial (Norway, c. 834 CE)
• Archaeologists excavated a largely intact wooden ship holding two women.
• Grave goods included sledges, tapestries, farm tools, and sacrificed animals.
• The vessel was buried beneath a turf mound, suggesting a journey metaphor.
• Oak carvings on the ship feature serpents and gripping beasts.
• Scholars interpret the array of practical and ceremonial objects as provisions for an afterlife voyage.', 'passage', '[{"id":"A","text":"The ship burial—with sledges, tools, animals, and a vessel meant for journey—suggests Vikings supplied the dead with provisions for an afterlife voyage.","is_correct":true,"explanation":"Synthesizes goods and ship imagery to state the afterlife belief."},{"id":"B","text":"Because the ship was dismantled before burial, Vikings rejected seafaring metaphors for death.","is_correct":false,"explanation":"The notes say the ship was intact, supporting the voyage metaphor."},{"id":"C","text":"Serpent carvings prove the women were merchants who traded only with southern Europe.","is_correct":false,"explanation":"Imports an unsupported commercial claim from decorative motifs."},{"id":"D","text":"Farm tools were included solely to record agricultural tax rates in ninth-century Norway.","is_correct":false,"explanation":"Tools are interpreted as afterlife provisions, not tax records."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: emphasize what the Oseberg burial reveals about Viking beliefs concerning the afterlife

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Contradicts the intact ship evidence.
- C: Overreads carvings into trade history.
- D: Reframes ritual goods as bureaucratic records.', 'Combine grave goods with the journey metaphor.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature"}'::jsonb, 'syn-medium-002', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('61e3dec9-063c-448f-9414-30c589027b01', 'The student wants to present promising therapeutic results while noting the ethical concern emphasized in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'CRISPR Clinical Trial (sickle cell disease)
• Researchers edited patients'' blood stem cells to produce fetal hemoglobin, reducing painful crises in a Phase 1 trial.
• All participants required chemotherapy to clear existing marrow before infusion.
• Independent ethicists warned that germline edits—changes inheritable by future children—remain banned in most countries.
• Trial consent forms stressed that edits targeted somatic cells only.
• Authors cautioned that long-term off-target effects require decades of follow-up.', 'passage', '[{"id":"A","text":"The Phase 1 trial reported fewer sickle-cell crises after somatic edits boosted fetal hemoglobin, yet ethicists stress that inheritable germline changes stay banned and decades of follow-up are needed to monitor off-target effects.","is_correct":true,"explanation":"Balances therapeutic promise with germline ethics and follow-up caveat."},{"id":"B","text":"Because germline edits are banned, the trial could not reduce crises or edit any cells.","is_correct":false,"explanation":"Confuses the somatic success with the separate germline prohibition."},{"id":"C","text":"Chemotherapy was optional, and ethicists endorsed immediate germline editing for all participants.","is_correct":false,"explanation":"Contradicts required chemotherapy and germline warnings."},{"id":"D","text":"Short-term results alone prove off-target risks will never appear.","is_correct":false,"explanation":"Opposes the authors'' call for decades of follow-up."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: present promising therapeutic results while noting the ethical concern emphasized in the notes

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Denies documented clinical improvements.
- C: Reverses chemotherapy necessity and ethicists'' germline stance.
- D: Overstates early data against stated caution.', 'Include somatic success, germline ban, and long follow-up.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature"}'::jsonb, 'syn-hard-001', now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES ('7723d326-83bf-47eb-91cd-6ceca00e0806', 'The student wants to explain Du Bois''s concept of double consciousness as a tension between self-perception and imposed identity. Which choice most effectively uses relevant information from the notes to accomplish this goal?', 'W. E. B. Du Bois and Double Consciousness
• Du Bois introduced the term in The Souls of Black Folk (1903).
• He described African Americans seeing themselves through their own eyes and through the contempt of others.
• The metaphor involves a "two-ness" of identity that is not inherently pathological but politically imposed.
• Du Bois linked the concept to the struggle for democratic recognition after Reconstruction.
• Later scholars note the idea influenced twentieth-century discussions of intersectionality.', 'passage', '[{"id":"A","text":"Du Bois argued that African Americans experience a politically imposed two-ness, perceiving themselves both through their own eyes and through others'' contempt—a tension he tied to the fight for recognition after Reconstruction.","is_correct":true,"explanation":"Defines double consciousness as internal and external perception in political tension."},{"id":"B","text":"Du Bois claimed double consciousness means African Americans always agree with outside observers.","is_correct":false,"explanation":"The notes stress tension between views, not agreement."},{"id":"C","text":"The concept appeared only in late-twentieth-century intersectionality theory, not in Du Bois''s writing.","is_correct":false,"explanation":"Du Bois introduced it in 1903; later scholars built on it."},{"id":"D","text":"Du Bois described double consciousness as a purely medical diagnosis unrelated to politics.","is_correct":false,"explanation":"Notes link the idea to democratic recognition, not clinical pathology alone."}]'::jsonb, 'A', 'Step 1 — Review the notes
Identify facts in the notes that relate to the goal: explain Du Bois''s concept of double consciousness as a tension between self-perception and imposed identity

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice A integrates the relevant note details to accomplish the goal.

Distractor analysis:
- B: Collapses tension into agreement.
- C: Misdates the origin of the term.
- D: Ignores the political framing in the notes.', 'Combine ''two-ness,'' two ways of seeing, and political context.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"notes_synthesis","rw_format":"bullet_notes","generator":"generate-poetry-synthesis-batch.mjs","explanation_v2":true,"original":true,"blueprint_version":"dsat_blueprint_v1","dsat_topic":"literature"}'::jsonb, 'syn-hard-002', now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;