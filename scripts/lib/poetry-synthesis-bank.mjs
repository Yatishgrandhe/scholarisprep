/**
 * Hand-crafted Digital SAT poetry literary items + rhetorical synthesis notes.
 * Poetry: WIC / TSP / CID with stimulus_type poetry and passage_genre metadata.
 * Synthesis: SYN notes_synthesis with rhetorical-goal stems.
 */

import { SKILLS } from "./dsat-rw-blueprint.mjs";

/** IDs of templated rows to replace (6 poetry prose + 6 repetitive synthesis). */
export const REPLACE_IDS = {
  poetry: [
    "b3d5537f-4c51-490e-b40f-c768e487bb3d", // WIC easy
    "6974ceff-3fd2-4b5d-aa91-58e00e9b680f", // WIC medium
    "bba9b6a1-c9bc-46af-abfb-02214360814f", // TSP easy
    "0407abce-917d-4cad-939a-49d998fcfcc5", // TSP medium
    "c033f2f9-f139-4fbc-9586-37de45a132c9", // CID easy
    "bcce92d3-90c2-4f58-a861-d47508f0f49c", // CID medium
  ],
  synthesis: [
    "5e3ba455-be18-4719-8bf5-0d85b011eade", // SYN easy
    "0865a534-ccf2-4db3-853f-58d26069a65e", // SYN easy
    "83c21998-b8de-40d9-ab9b-ab7cdb42282d", // SYN medium
    "52c453da-7ec6-4f2c-89b9-709c863b40cf", // SYN medium
    "12073f1d-a7bf-4b28-98ac-1bcff0274533", // SYN hard
    "37e77fa2-4f50-46f9-9216-2be3e53db027", // SYN hard
  ],
};

function synExplanation(goal, correctId, distractors) {
  return `Step 1 — Review the notes
Identify facts in the notes that relate to the goal: ${goal}

Step 2 — Match the rhetorical goal
Eliminate options that omit required note content or import outside information.

Step 3 — Select effective synthesis
Choice ${correctId} integrates the relevant note details to accomplish the goal.

Distractor analysis:
${distractors.map((d) => `- ${d.id}: ${d.reason}`).join("\n")}`;
}

function poetryExplanation({ step1, step2, correctId, distractors }) {
  return `Step 1 — ${step1.title}
${step1.body}

Step 2 — ${step2.title}
${step2.body}

Step 3 — Confirm the answer
Choice ${correctId} is correct.

Distractor analysis:
${distractors.map((d) => `- ${d.id}: ${d.reason}`).join("\n")}`;
}

const POETRY_ITEMS = [
  {
    external_id: "poetry-wic-easy-001",
    skill_id: "WIC",
    rw_subtype: "vocabulary_in_context",
    rw_format: "passage_mc",
    difficulty: "easy",
    literary_period: "victorian",
    stimulus_type: "poetry",
    question_text: 'As used in line 6, "wan" most nearly means',
    stimulus_text: `When April wears her silver veil
And raindrops tap the garden rail,
My sister sits with folded hands,
Her laughter gone to distant lands.
The doctor spoke in measured tone;
Her cheek had grown a pallid, wan
Reflection of the hearth's low flame—
Not illness yet, but not the same.`,
    options: [
      { id: "A", text: "pale", is_correct: true, explanation: "Correct: 'wan' describes her cheek as pallid, matching a pale, colorless appearance." },
      { id: "B", text: "cheerful", is_correct: false, explanation: "Incorrect: the poem links her wan cheek to lost laughter, not cheer." },
      { id: "C", text: "wide", is_correct: false, explanation: "Incorrect: 'wan' concerns color, not physical breadth." },
      { id: "D", text: "stubborn", is_correct: false, explanation: "Incorrect: no stubbornness is attributed to her appearance." },
    ],
    correct_answer: "A",
    explanation: poetryExplanation({
      step1: { title: "Locate the word in context", body: "Line 6 pairs {{yellow:pallid, wan}} with a cheek that reflects the hearth's low flame." },
      step2: { title: "Test each meaning", body: "Pallid signals loss of healthy color, so 'wan' most nearly means pale." },
      correctId: "A",
      distractors: [
        { id: "B", reason: "Contradicts the absence of laughter and pallor." },
        { id: "C", reason: "Describes size, not complexion." },
        { id: "D", reason: "Personality is never discussed." },
      ],
    }),
    hint: "Read the word beside 'pallid' on line 6.",
  },
  {
    external_id: "poetry-wic-medium-001",
    skill_id: "WIC",
    rw_subtype: "vocabulary_in_context",
    rw_format: "passage_mc",
    difficulty: "medium",
    literary_period: "harlem_renaissance",
    stimulus_type: "poetry",
    question_text: 'As used in line 5, "borne" most nearly means',
    stimulus_text: `We stacked our songs like corded wood
Against a winter sharp and rude,
Yet still the block kept steady heat—
Not borrowed flame, but self-complete.
The joy we carried, self-borne, bright,
Defied the auction of the night;
No critic's purse could bid it low:
We owned the ember's afterglow.`,
    options: [
      { id: "A", text: "carried within oneself", is_correct: true, explanation: "Correct: 'self-borne' joy is internally sustained, not borrowed from outside." },
      { id: "B", text: "forbidden", is_correct: false, explanation: "Incorrect: the poem celebrates the joy as defiant, not banned." },
      { id: "C", text: "displayed for sale", is_correct: false, explanation: "Incorrect: the joy resists being auctioned, not offered for sale." },
      { id: "D", text: "forgotten", is_correct: false, explanation: "Incorrect: the joy remains bright and owned, not lost." },
    ],
    correct_answer: "A",
    explanation: poetryExplanation({
      step1: { title: "Locate the word in context", body: "Line 5 calls the joy {{yellow:self-borne, bright}} and contrasts it with borrowed flame." },
      step2: { title: "Test each meaning", body: "Because the heat is 'self-complete,' 'borne' means carried or sustained within oneself." },
      correctId: "A",
      distractors: [
        { id: "B", reason: "The poem presents joy as permitted and defiant, not forbidden." },
        { id: "C", reason: "Auction imagery shows joy cannot be sold." },
        { id: "D", reason: "The ember's afterglow persists." },
      ],
    }),
    hint: "Contrast 'self-borne' with 'borrowed flame' in line 4.",
  },
  {
    external_id: "poetry-tsp-easy-001",
    skill_id: "TSP",
    rw_subtype: "structure",
    rw_format: "passage_mc",
    difficulty: "easy",
    literary_period: "romantic",
    stimulus_type: "poetry",
    question_text: "Which choice best describes the overall structure of the poem?",
    stimulus_text: `The city wears a collar tight
Of smoke and iron, day and night;
I count its chimneys, one by one,
And mourn the unreturning sun.
But turn—beyond the clanging street—
A meadow opens, cool and sweet;
There birch trees write in greenest ink,
And brooks persuade the grass to drink.`,
    options: [
      { id: "A", text: "It contrasts an oppressive urban scene with a restorative natural landscape.", is_correct: true, explanation: "Correct: stanzas shift from city smoke to meadow coolness." },
      { id: "B", text: "It narrates a single day's journey without changing setting.", is_correct: false, explanation: "Incorrect: the setting changes from city to meadow." },
      { id: "C", text: "It argues that factories should replace farmland.", is_correct: false, explanation: "Incorrect: the meadow is presented positively, not as something to replace." },
      { id: "D", text: "It lists historical dates in chronological order.", is_correct: false, explanation: "Incorrect: no dates appear." },
    ],
    correct_answer: "A",
    explanation: poetryExplanation({
      step1: { title: "Identify the passage organization", body: "The opening quatrain depicts {{yellow:smoke and iron}}; the closing quatrain turns to a meadow." },
      step2: { title: "Match structure to purpose", body: "The pivot word 'But turn' signals contrast between city oppression and natural restoration." },
      correctId: "A",
      distractors: [
        { id: "B", reason: "Two distinct settings are juxtaposed." },
        { id: "C", reason: "The poem favors the meadow, not industrial expansion." },
        { id: "D", reason: "No chronology is provided." },
      ],
    }),
    hint: "Notice how the poem shifts after 'But turn.'",
  },
  {
    external_id: "poetry-tsp-medium-001",
    skill_id: "TSP",
    rw_subtype: "structure",
    rw_format: "passage_mc",
    difficulty: "medium",
    literary_period: "early_modernism",
    stimulus_type: "poetry",
    question_text: "Which choice best describes the function of the final two lines?",
    stimulus_text: `Clocks dissolve. The stair
Spirals through rooms I never entered.
A woman pours tea beside a window
Whose glass remembers every weather.
Letters arrive with stamps from ports
I cannot trace on any chart.
The table holds a bowl of pears
That ripen while I read each line.
At last the fruit gives up its skin—
That is the poem's hidden design.`,
    options: [
      { id: "A", text: "They reveal that the preceding images were building toward a single metaphor about ripening as artistic design.", is_correct: true, explanation: "Correct: the pears ripening parallels the poem disclosing its 'hidden design.'" },
      { id: "B", text: "They introduce a new unrelated topic about maritime commerce.", is_correct: false, explanation: "Incorrect: ports appear earlier; the ending returns to the pears metaphor." },
      { id: "C", text: "They reject the surreal images as meaningless dreams.", is_correct: false, explanation: "Incorrect: the ending affirms purposeful design, not meaninglessness." },
      { id: "D", text: "They summarize a scientific study of fruit cultivation.", is_correct: false, explanation: "Incorrect: the ripening image is metaphorical, not agricultural reporting." },
    ],
    correct_answer: "A",
    explanation: poetryExplanation({
      step1: { title: "Identify the passage organization", body: "Surreal domestic images accumulate until the pears {{yellow:ripen while I read each line}}." },
      step2: { title: "Match structure to purpose", body: "The closing couplet states the fruit 'gives up its skin' as the poem's hidden design—metaphor for disclosure." },
      correctId: "A",
      distractors: [
        { id: "B", reason: "Ports are earlier detail; the ending unifies the fruit motif." },
        { id: "C", reason: "The speaker claims intentional design." },
        { id: "D", reason: "No scientific framing appears." },
      ],
    }),
    hint: "Link the ripening pears to 'hidden design.'",
  },
  {
    external_id: "poetry-cid-easy-001",
    skill_id: "CID",
    rw_subtype: "main_idea",
    rw_format: "passage_mc",
    difficulty: "easy",
    literary_period: "victorian",
    stimulus_type: "poetry",
    question_text: "Which choice best states the main idea of the poem?",
    stimulus_text: `I folded your last letter thin
And tucked it where the heart begins;
Not to forget, but to transform
The weight of loss to something warm.
The ink has faded, yet I keep
The crease where once you paused to weep;
Grief, pressed like flowers in a book,
Can teach the hand a gentler look.`,
    options: [
      { id: "A", text: "Preserving a memento of loss can reshape grief into quiet strength.", is_correct: true, explanation: "Correct: keeping the letter transforms loss into warmth and gentleness." },
      { id: "B", text: "The speaker urges readers to destroy painful reminders immediately.", is_correct: false, explanation: "Incorrect: the speaker keeps and values the letter." },
      { id: "C", text: "The poem primarily catalogs postal regulations in the nineteenth century.", is_correct: false, explanation: "Incorrect: the focus is emotional, not bureaucratic." },
      { id: "D", text: "The speaker has forgotten the addressee entirely.", is_correct: false, explanation: "Incorrect: the letter is deliberately preserved." },
    ],
    correct_answer: "A",
    explanation: poetryExplanation({
      step1: { title: "Identify the central claim", body: "The speaker keeps the letter {{yellow:not to forget, but to transform the weight of loss}}." },
      step2: { title: "Eliminate scope errors", body: "Grief becomes a pressed flower that teaches gentleness—transformation, not erasure." },
      correctId: "A",
      distractors: [
        { id: "B", reason: "The speaker saves rather than destroys the letter." },
        { id: "C", reason: "No regulations are discussed." },
        { id: "D", reason: "Memory is actively tended." },
      ],
    }),
    hint: "Focus on why the speaker keeps the folded letter.",
  },
  {
    external_id: "poetry-cid-medium-001",
    skill_id: "CID",
    rw_subtype: "main_idea",
    rw_format: "passage_mc",
    difficulty: "medium",
    literary_period: "harlem_renaissance",
    stimulus_type: "poetry",
    question_text: "Which choice best states the main idea of the poem?",
    stimulus_text: `They praised the tenement for thrift,
Its bricks efficient, bare, and clean;
Yet from the rail we coaxed a drift
Of green that dared the gray between.
A jar of soil, a stolen sunbeam,
A vine that learned the fire escape—
Small beauties, rooted in the seam
Of hardship, still refuse to drape
Their leaves in shame. We call it grace:
Survival wearing beauty's face.`,
    options: [
      { id: "A", text: "Beauty and resilience can flourish even within cramped, harsh living conditions.", is_correct: true, explanation: "Correct: plants on the fire escape embody grace amid hardship." },
      { id: "B", text: "Urban gardening is too expensive for working families.", is_correct: false, explanation: "Incorrect: the poem celebrates thrift and improvised growth." },
      { id: "C", text: "Official praise of tenements proves housing reform succeeded.", is_correct: false, explanation: "Incorrect: thrift is others' praise; the speaker highlights quiet resistance." },
      { id: "D", text: "The speaker regrets moving to the countryside.", is_correct: false, explanation: "Incorrect: no relocation or regret is mentioned." },
    ],
    correct_answer: "A",
    explanation: poetryExplanation({
      step1: { title: "Identify the central claim", body: "Small beauties {{yellow:rooted in the seam of hardship}} still refuse shame." },
      step2: { title: "Eliminate scope errors", body: "The closing couplet names survival wearing beauty's face as grace." },
      correctId: "A",
      distractors: [
        { id: "B", reason: "Growth is improvised from a jar and sunbeam, not costly." },
        { id: "C", reason: "Official praise is contrasted with residents' creative resilience." },
        { id: "D", reason: "The setting remains the tenement rail." },
      ],
    }),
    hint: "Read the final couplet about 'grace.'",
  },
];

const SYNTHESIS_ITEMS = [
  {
    external_id: "syn-easy-001",
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty: "easy",
    stimulus_type: "passage",
    question_text:
      "The student wants to emphasize how Hurston combined folklore research with literary storytelling. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Zora Neale Hurston
• Hurston conducted anthropological fieldwork collecting Black folk tales in Eatonville, Florida.
• She published the novel Their Eyes Were Watching God in 1937.
• Critics note the novel's dialogue draws on oral storytelling rhythms she recorded in the field.
• She studied under anthropologist Franz Boas at Barnard College.
• Some contemporaries criticized her for not focusing solely on political protest fiction.`,
    options: [
      {
        id: "A",
        text: "After studying under Franz Boas, Hurston collected folk tales in Eatonville and later shaped Their Eyes Were Watching God with dialogue echoing the oral rhythms she had recorded.",
        is_correct: true,
        explanation: "Synthesizes fieldwork and novel to show folklore informing literary storytelling.",
      },
      {
        id: "B",
        text: "Hurston's contemporaries agreed she should write only political protest fiction.",
        is_correct: false,
        explanation: "Misstates the notes: some criticized her, but agreement is not claimed.",
      },
      {
        id: "C",
        text: "Their Eyes Were Watching God was published before Hurston entered Barnard College.",
        is_correct: false,
        explanation: "Imports an unsupported chronology reversal.",
      },
      {
        id: "D",
        text: "Franz Boas wrote the dialogue in Their Eyes Were Watching God based on Eatonville tales.",
        is_correct: false,
        explanation: "Boas was her teacher; the notes credit Hurston's novel.",
      },
    ],
    correct_answer: "A",
    explanation: synExplanation(
      "emphasize how Hurston combined folklore research with literary storytelling",
      "A",
      [
        { id: "B", reason: "Distorts criticism into unanimous agreement." },
        { id: "C", reason: "Contradicts the implied sequence of study, fieldwork, and publication." },
        { id: "D", reason: "Assigns authorship to Boas without support." },
      ],
    ),
    hint: "Which option connects field recordings to the novel's dialogue?",
  },
  {
    external_id: "syn-easy-002",
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty: "easy",
    stimulus_type: "passage",
    question_text:
      "The student wants to introduce Carson's book and its central environmental warning. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Rachel Carson and Silent Spring
• Rachel Carson was a marine biologist and science writer.
• Silent Spring (1962) argued that widespread pesticide use harmed wildlife and human health.
• The book examined how DDT accumulated in food chains.
• Carson urged policymakers to weigh ecological risks before approving chemical sprays.
• Silent Spring is credited with helping launch the modern environmental movement.`,
    options: [
      {
        id: "A",
        text: "Marine biologist Rachel Carson's 1962 book Silent Spring warned that pesticides such as DDT accumulate in food chains, threatening wildlife and human health.",
        is_correct: true,
        explanation: "Introduces author, title, date, and central warning using note facts.",
      },
      {
        id: "B",
        text: "Silent Spring proved pesticides never affect human health when used correctly.",
        is_correct: false,
        explanation: "Contradicts the book's warning about health harms.",
      },
      {
        id: "C",
        text: "Carson focused exclusively on oceanography and never discussed land animals.",
        is_correct: false,
        explanation: "Notes mention wildlife broadly and food chains, not oceans only.",
      },
      {
        id: "D",
        text: "Policymakers banned every chemical before Carson began writing.",
        is_correct: false,
        explanation: "Carson urged weighing risks; no preemptive ban is stated.",
      },
    ],
    correct_answer: "A",
    explanation: synExplanation("introduce Carson's book and its central environmental warning", "A", [
      { id: "B", reason: "Reverses the book's argument." },
      { id: "C", reason: "Ignores wildlife and food-chain evidence." },
      { id: "D", reason: "Invents a timeline not in the notes." },
    ]),
    hint: "Include the title, date, and DDT warning.",
  },
  {
    external_id: "syn-medium-001",
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty: "medium",
    stimulus_type: "passage",
    question_text:
      "The student wants to explain how Kurosawa used weather to mirror characters' moral uncertainty. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Akira Kurosawa's Rashomon (1950)
• The film depicts four contradictory accounts of a samurai's death in a forest.
• Kurosawa shot many scenes during intense sunlight filtered through leaves, creating shifting patches of light and shadow.
• Critics argue the unstable lighting visualizes the difficulty of establishing a single truthful narrative.
• The screenplay adapts two short stories by Ryūnosuke Akutagawa.
• Rashomon won an honorary Academy Award in 1952.`,
    options: [
      {
        id: "A",
        text: "As characters offer contradictory accounts of the samurai's death, Kurosawa's leaf-filtered sunlight casts shifting light and shadow, visualizing how hard it is to fix a single truthful narrative.",
        is_correct: true,
        explanation: "Links contradictory testimony to lighting that mirrors moral uncertainty.",
      },
      {
        id: "B",
        text: "Kurosawa used constant studio lighting to emphasize that one witness tells the truth.",
        is_correct: false,
        explanation: "Contradicts shifting natural light described in the notes.",
      },
      {
        id: "C",
        text: "The film's Academy Award proves which account of the death is accurate.",
        is_correct: false,
        explanation: "An award does not establish narrative truth within the story.",
      },
      {
        id: "D",
        text: "Akutagawa directed the film and chose the weather patterns himself.",
        is_correct: false,
        explanation: "Akutagawa wrote source stories; Kurosawa directed.",
      },
    ],
    correct_answer: "A",
    explanation: synExplanation(
      "explain how Kurosawa used weather to mirror characters' moral uncertainty",
      "A",
      [
        { id: "B", reason: "Opposes the documented shifting sunlight." },
        { id: "C", reason: "Imports irrelevant award logic." },
        { id: "D", reason: "Misidentifies the director." },
      ],
    ),
    hint: "Connect contradictory accounts to shifting light.",
  },
  {
    external_id: "syn-medium-002",
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty: "medium",
    stimulus_type: "passage",
    question_text:
      "The student wants to emphasize what the Oseberg burial reveals about Viking beliefs concerning the afterlife. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Oseberg Ship Burial (Norway, c. 834 CE)
• Archaeologists excavated a largely intact wooden ship holding two women.
• Grave goods included sledges, tapestries, farm tools, and sacrificed animals.
• The vessel was buried beneath a turf mound, suggesting a journey metaphor.
• Oak carvings on the ship feature serpents and gripping beasts.
• Scholars interpret the array of practical and ceremonial objects as provisions for an afterlife voyage.`,
    options: [
      {
        id: "A",
        text: "The ship burial—with sledges, tools, animals, and a vessel meant for journey—suggests Vikings supplied the dead with provisions for an afterlife voyage.",
        is_correct: true,
        explanation: "Synthesizes goods and ship imagery to state the afterlife belief.",
      },
      {
        id: "B",
        text: "Because the ship was dismantled before burial, Vikings rejected seafaring metaphors for death.",
        is_correct: false,
        explanation: "The notes say the ship was intact, supporting the voyage metaphor.",
      },
      {
        id: "C",
        text: "Serpent carvings prove the women were merchants who traded only with southern Europe.",
        is_correct: false,
        explanation: "Imports an unsupported commercial claim from decorative motifs.",
      },
      {
        id: "D",
        text: "Farm tools were included solely to record agricultural tax rates in ninth-century Norway.",
        is_correct: false,
        explanation: "Tools are interpreted as afterlife provisions, not tax records.",
      },
    ],
    correct_answer: "A",
    explanation: synExplanation(
      "emphasize what the Oseberg burial reveals about Viking beliefs concerning the afterlife",
      "A",
      [
        { id: "B", reason: "Contradicts the intact ship evidence." },
        { id: "C", reason: "Overreads carvings into trade history." },
        { id: "D", reason: "Reframes ritual goods as bureaucratic records." },
      ],
    ),
    hint: "Combine grave goods with the journey metaphor.",
  },
  {
    external_id: "syn-hard-001",
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty: "hard",
    stimulus_type: "passage",
    question_text:
      "The student wants to present promising therapeutic results while noting the ethical concern emphasized in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `CRISPR Clinical Trial (sickle cell disease)
• Researchers edited patients' blood stem cells to produce fetal hemoglobin, reducing painful crises in a Phase 1 trial.
• All participants required chemotherapy to clear existing marrow before infusion.
• Independent ethicists warned that germline edits—changes inheritable by future children—remain banned in most countries.
• Trial consent forms stressed that edits targeted somatic cells only.
• Authors cautioned that long-term off-target effects require decades of follow-up.`,
    options: [
      {
        id: "A",
        text: "The Phase 1 trial reported fewer sickle-cell crises after somatic edits boosted fetal hemoglobin, yet ethicists stress that inheritable germline changes stay banned and decades of follow-up are needed to monitor off-target effects.",
        is_correct: true,
        explanation: "Balances therapeutic promise with germline ethics and follow-up caveat.",
      },
      {
        id: "B",
        text: "Because germline edits are banned, the trial could not reduce crises or edit any cells.",
        is_correct: false,
        explanation: "Confuses the somatic success with the separate germline prohibition.",
      },
      {
        id: "C",
        text: "Chemotherapy was optional, and ethicists endorsed immediate germline editing for all participants.",
        is_correct: false,
        explanation: "Contradicts required chemotherapy and germline warnings.",
      },
      {
        id: "D",
        text: "Short-term results alone prove off-target risks will never appear.",
        is_correct: false,
        explanation: "Opposes the authors' call for decades of follow-up.",
      },
    ],
    correct_answer: "A",
    explanation: synExplanation(
      "present promising therapeutic results while noting the ethical concern emphasized in the notes",
      "A",
      [
        { id: "B", reason: "Denies documented clinical improvements." },
        { id: "C", reason: "Reverses chemotherapy necessity and ethicists' germline stance." },
        { id: "D", reason: "Overstates early data against stated caution." },
      ],
    ),
    hint: "Include somatic success, germline ban, and long follow-up.",
  },
  {
    external_id: "syn-hard-002",
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty: "hard",
    stimulus_type: "passage",
    question_text:
      "The student wants to explain Du Bois's concept of double consciousness as a tension between self-perception and imposed identity. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `W. E. B. Du Bois and Double Consciousness
• Du Bois introduced the term in The Souls of Black Folk (1903).
• He described African Americans seeing themselves through their own eyes and through the contempt of others.
• The metaphor involves a "two-ness" of identity that is not inherently pathological but politically imposed.
• Du Bois linked the concept to the struggle for democratic recognition after Reconstruction.
• Later scholars note the idea influenced twentieth-century discussions of intersectionality.`,
    options: [
      {
        id: "A",
        text: "Du Bois argued that African Americans experience a politically imposed two-ness, perceiving themselves both through their own eyes and through others' contempt—a tension he tied to the fight for recognition after Reconstruction.",
        is_correct: true,
        explanation: "Defines double consciousness as internal and external perception in political tension.",
      },
      {
        id: "B",
        text: "Du Bois claimed double consciousness means African Americans always agree with outside observers.",
        is_correct: false,
        explanation: "The notes stress tension between views, not agreement.",
      },
      {
        id: "C",
        text: "The concept appeared only in late-twentieth-century intersectionality theory, not in Du Bois's writing.",
        is_correct: false,
        explanation: "Du Bois introduced it in 1903; later scholars built on it.",
      },
      {
        id: "D",
        text: "Du Bois described double consciousness as a purely medical diagnosis unrelated to politics.",
        is_correct: false,
        explanation: "Notes link the idea to democratic recognition, not clinical pathology alone.",
      },
    ],
    correct_answer: "A",
    explanation: synExplanation(
      "explain Du Bois's concept of double consciousness as a tension between self-perception and imposed identity",
      "A",
      [
        { id: "B", reason: "Collapses tension into agreement." },
        { id: "C", reason: "Misdates the origin of the term." },
        { id: "D", reason: "Ignores the political framing in the notes." },
      ],
    ),
    hint: "Combine 'two-ness,' two ways of seeing, and political context.",
  },
];

export function getPoetrySynthesisBank() {
  return { poetry: POETRY_ITEMS, synthesis: SYNTHESIS_ITEMS };
}

export function bankItemToRow(item, id) {
  const skill = SKILLS[item.skill_id];
  const meta = {
    dsat_blueprint_v1: true,
    rw_subtype: item.rw_subtype,
    rw_format: item.rw_format,
    generator: "generate-poetry-synthesis-batch.mjs",
    explanation_v2: true,
    original: true,
    blueprint_version: "dsat_blueprint_v1",
    dsat_topic: "literature",
  };
  if (item.literary_period) {
    meta.passage_genre = "poetry";
    meta.literary_period = item.literary_period;
  }
  return {
    id,
    external_id: item.external_id,
    question_text: item.question_text,
    stimulus_text: item.stimulus_text,
    stimulus_type: item.stimulus_type,
    options: item.options,
    correct_answer: item.correct_answer,
    explanation: item.explanation,
    hint: item.hint ?? null,
    difficulty: item.difficulty,
    skill_id: item.skill_id,
    rw_subtype: item.rw_subtype,
    rw_format: item.rw_format,
    topic: skill.topic,
    subtopic: skill.subtopic,
    section: skill.section,
    domain_id: skill.domain_id,
    source_metadata: meta,
  };
}
