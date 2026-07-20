/**
 * Rhetorical synthesis (SYN / notes_synthesis) regeneration bank — Phase 2 Agent 1.
 * Generates balanced 22–28 word parallel options with named distractor traps.
 */

import {
  mkOpts,
  balanceOptionLengths,
  buildBalancedOpts,
  rotateCorrectId,
  ensureTwoSentenceOption,
} from "./english-rw-templates.mjs";
import { trimToWordRange } from "./dsat-rw-blueprint.mjs";

/** DSAT Master Manual §9 RS distractor taxonomy */
const TRAP_LABELS = ["Goal_Under_Specification", "Truth_without_Goal", "Unwarranted_Synthesis"];
const SYN_WORD_MIN = 22;
const SYN_WORD_MAX = 28;

function clampSynOption(text, index) {
  return trimToWordRange(text, SYN_WORD_MIN, SYN_WORD_MAX);
}

function synExplanation(goal, correctId, distractors) {
  return `Step 1 — Review the notes
Identify facts in the notes that relate to the goal: ${goal}

Step 2 — Match the rhetorical goal
Eliminate Goal Under-Specification (omits a required goal element), Truth-without-Goal (true from notes but fails the rhetorical act), and Unwarranted Synthesis (imports claims not in the notes).

Step 3 — Select effective synthesis
Choice ${correctId} integrates the relevant note details to accomplish the goal without overstatement or outside claims.

Distractor analysis:
${distractors.map((d) => `- ${d.id}: ${d.reason}`).join("\n")}`;
}

/** Handcrafted items (poetry-synthesis batch + parity patches). */
const HANDCRAFTED = {
  "syn-easy-001": {
    question_text:
      "The student wants to emphasize how Hurston combined folklore research with literary storytelling. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Zora Neale Hurston
• Hurston conducted anthropological fieldwork collecting Black folk tales in Eatonville, Florida.
• She published the novel Their Eyes Were Watching God in 1937.
• Critics note the novel's dialogue draws on oral storytelling rhythms she recorded in the field.
• She studied under anthropologist Franz Boas at Barnard College.
• Some contemporaries criticized her for not focusing solely on political protest fiction.`,
    goal: "emphasize how Hurston combined folklore research with literary storytelling",
    correct:
      "After studying under Franz Boas, Hurston collected folk tales in Eatonville and later shaped Their Eyes Were Watching God with dialogue echoing the oral rhythms she had recorded.",
    distractors: [
      {
        text: "Hurston's contemporaries agreed unanimously that she should write only political protest fiction rather than folklore-based storytelling, misreading the notes as claiming universal agreement among all critics.",
        trap: "Truth_without_Goal",
        why: "Distorts criticism into unanimous agreement.",
      },
      {
        text: "Their Eyes Were Watching God was published years before Hurston entered Barnard College to study under Franz Boas, reversing the documented sequence of anthropological study, Eatonville fieldwork, and novel publication in the student's notes.",
        trap: "Unwarranted_Synthesis",
        why: "Contradicts the implied sequence of study, fieldwork, and publication.",
      },
      {
        text: "Franz Boas wrote the dialogue in Their Eyes Were Watching God using Eatonville folk tales he collected himself, assigning authorship to Boas without support from the student's notes.",
        trap: "Unwarranted_Synthesis",
        why: "Assigns authorship to Boas without support.",
      },
    ],
  },
  "syn-easy-002": {
    question_text:
      "The student wants to introduce Carson's book and its central environmental warning. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Rachel Carson and Silent Spring
• Rachel Carson was a marine biologist and science writer.
• Silent Spring (1962) argued that widespread pesticide use harmed wildlife and human health.
• The book examined how DDT accumulated in food chains.
• Carson urged policymakers to weigh ecological risks before approving chemical sprays.
• Silent Spring is credited with helping launch the modern environmental movement.`,
    goal: "introduce Carson's book and its central environmental warning",
    correct:
      "Marine biologist Rachel Carson's 1962 book Silent Spring warned that pesticides such as DDT accumulate in food chains, threatening wildlife and human health.",
    distractors: [
      {
        text: "Silent Spring proved that pesticides never affect human health when applied correctly, directly contradicting Carson's documented warnings about DDT accumulation and ecological harm in the notes.",
        trap: "Truth_without_Goal",
        why: "Reverses the book's argument.",
      },
      {
        text: "Carson focused exclusively on oceanography and never discussed land animals or terrestrial food chains, ignoring the notes' emphasis on wildlife and pesticide accumulation broadly.",
        trap: "Goal_Under_Specification",
        why: "Ignores wildlife and food-chain evidence.",
      },
      {
        text: "Policymakers banned every agricultural chemical before Carson began writing Silent Spring, inventing a regulatory timeline that the student's notes do not describe or support.",
        trap: "Unwarranted_Synthesis",
        why: "Invents a timeline not in the notes.",
      },
    ],
  },
  "syn-medium-001": {
    question_text:
      "The student wants to explain how Kurosawa used weather to mirror characters' moral uncertainty. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Akira Kurosawa's Rashomon (1950)
• The film depicts four contradictory accounts of a samurai's death in a forest.
• Kurosawa shot many scenes during intense sunlight filtered through leaves, creating shifting patches of light and shadow.
• Critics argue the unstable lighting visualizes the difficulty of establishing a single truthful narrative.
• The screenplay adapts two short stories by Ryūnosuke Akutagawa.
• Rashomon won an honorary Academy Award in 1952.`,
    goal: "explain how Kurosawa used weather to mirror characters' moral uncertainty",
    correct:
      "As characters offer contradictory accounts of the samurai's death, Kurosawa's leaf-filtered sunlight casts shifting light and shadow, visualizing how hard it is to fix a single truthful narrative.",
    distractors: [
      {
        text: "Kurosawa used constant studio lighting throughout Rashomon to emphasize that one witness tells the complete truth, contradicting the notes' description of shifting natural sunlight.",
        trap: "Truth_without_Goal",
        why: "Opposes the documented shifting sunlight.",
      },
      {
        text: "The film's Academy Award in 1952 proves which account of the samurai's death is historically accurate, importing award logic irrelevant to narrative truth within the story.",
        trap: "Unwarranted_Synthesis",
        why: "Imports irrelevant award logic.",
      },
      {
        text: "Akutagawa directed Rashomon and personally chose the weather patterns on set, misidentifying Kurosawa as director despite the notes crediting Akutagawa only as source author.",
        trap: "Unwarranted_Synthesis",
        why: "Misidentifies the director.",
      },
    ],
  },
  "syn-medium-002": {
    question_text:
      "The student wants to emphasize what the Oseberg burial reveals about Viking beliefs concerning the afterlife. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `Oseberg Ship Burial (Norway, c. 834 CE)
• Archaeologists excavated a largely intact wooden ship holding two women.
• Grave goods included sledges, tapestries, farm tools, and sacrificed animals.
• The vessel was buried beneath a turf mound, suggesting a journey metaphor.
• Oak carvings on the ship feature serpents and gripping beasts.
• Scholars interpret the array of practical and ceremonial objects as provisions for an afterlife voyage.`,
    goal: "emphasize what the Oseberg burial reveals about Viking beliefs concerning the afterlife",
    correct:
      "The ship burial—with sledges, tools, animals, and a vessel meant for journey—suggests Vikings supplied the dead with provisions for an afterlife voyage.",
    distractors: [
      {
        text: "Because archaeologists dismantled the Oseberg ship before burial, Vikings rejected seafaring metaphors for death, contradicting the notes describing an intact vessel beneath a turf mound.",
        trap: "Truth_without_Goal",
        why: "Contradicts the intact ship described in the notes.",
      },
      {
        text: "Serpent carvings on the ship prove the buried women were merchants trading exclusively with southern Europe, overreading decorative motifs into unsupported commercial history.",
        trap: "Unwarranted_Synthesis",
        why: "Overreads decorative motifs into commercial history.",
      },
      {
        text: "Farm tools were included solely to record agricultural tax rates in ninth-century Norway, reframing ritual grave goods as bureaucratic records rather than afterlife provisions.",
        trap: "Goal_Under_Specification",
        why: "Reframes ritual goods as tax records.",
      },
    ],
  },
  "syn-hard-001": {
    question_text:
      "The student wants to present both the therapy's promise and the ethical limits researchers emphasize. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `CRISPR Sickle-Cell Trial (2023)
• Researchers edited blood stem cells ex vivo to raise fetal hemoglobin in sickle-cell patients.
• Phase 1 results reported fewer pain crises after infusion following chemotherapy conditioning.
• Authors stress edits were somatic, not inheritable germline changes.
• Ethics boards in most countries prohibit heritable human germline editing.
• Long-term monitoring is needed to assess off-target effects over decades.`,
    goal: "present both the therapy's promise and the ethical limits researchers emphasize",
    correct:
      "The Phase 1 trial reported fewer sickle-cell crises after somatic edits boosted fetal hemoglobin, yet ethicists stress that inheritable germline changes stay banned and decades of follow-up are needed to monitor off-target effects.",
    distractors: [
      {
        text: "Because germline edits are banned in most countries, the Phase 1 trial could not reduce patient crises or edit any blood stem cells, confusing somatic success with the separate germline prohibition.",
        trap: "Truth_without_Goal",
        why: "Confuses somatic success with the germline prohibition.",
      },
      {
        text: "Chemotherapy was optional before infusion and independent ethicists endorsed immediate germline editing for all participants, contradicting required marrow clearing and germline warnings in the notes.",
        trap: "Unwarranted_Synthesis",
        why: "Contradicts required chemotherapy and germline warnings.",
      },
      {
        text: "Short-term Phase 1 results alone prove off-target genetic risks will never appear in follow-up studies, opposing the authors' explicit call for decades of continued monitoring.",
        trap: "Goal_Under_Specification",
        why: "Opposes the call for decades of follow-up.",
      },
    ],
  },
  "syn-hard-002": {
    question_text:
      "The student wants to define double consciousness as Du Bois described it. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
    stimulus_text: `W.E.B. Du Bois and Double Consciousness
• Du Bois introduced "double consciousness" in The Souls of Black Folk (1903).
• He described African Americans perceiving themselves through their own eyes and through others' contempt.
• The concept links internal self-perception to politically imposed social judgment.
• Du Bois tied the idea to struggles for recognition after Reconstruction.
• Later scholars extended the framework but did not originate the term.`,
    goal: "define double consciousness as Du Bois described it",
    correct:
      "Du Bois argued that African Americans experience a politically imposed two-ness, perceiving themselves both through their own eyes and through others' contempt—a tension he tied to the fight for recognition after Reconstruction.",
    distractors: [
      {
        text: "Du Bois claimed double consciousness means African Americans always agree with outside observers about their identity, collapsing the tension between self-perception and imposed contempt described in the notes.",
        trap: "Truth_without_Goal",
        why: "Collapses tension into agreement.",
      },
      {
        text: "The concept of double consciousness appeared only in late-twentieth-century intersectionality theory rather than in Du Bois's 1903 Souls of Black Folk, misdating the term's origin in the notes.",
        trap: "Unwarranted_Synthesis",
        why: "Misdates the term's origin.",
      },
      {
        text: "Du Bois described double consciousness as a purely medical diagnosis unrelated to democratic politics, ignoring the notes linking the idea to recognition struggles after Reconstruction.",
        trap: "Goal_Under_Specification",
        why: "Ignores the political link in the notes.",
      },
    ],
  },
};

/** Programmatic topic catalog — cycles to cover 325 items. */
const TOPIC_CATALOG = [
  {
    title: "Tikal Water Management",
    notes: (n) =>
      `Tikal's Water Supply\n• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.\n• The city of Tikal possessed a major reservoir system paved with plaster.\n• Plaster lining prevented water from seeping into the porous limestone bedrock.\n• The system at Tikal was designed to collect rainwater during the intense tropical wet season.\n• This stored water sustained the city's population of over 60,000 residents during the prolonged dry season.\n• Archaeologists dated major plaster phases to the Late Classic period.`,
    goals: [
      {
        goal: "explain how the architectural design of Tikal's reservoir system directly addressed an environmental challenge of the region",
        correct:
          "Paved with plaster to prevent seepage into porous limestone, Tikal's reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.",
        distractors: [
          { text: "To prevent water from seeping into Tikal's porous limestone bedrock, the Maya paved their massive reservoir system with plaster.", trap: "Goal_Under_Specification", why: "Addresses seepage but omits the seasonal survival function." },
          { text: "The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations.", trap: "Goal_Under_Specification", why: "Too general; omits porous limestone and seasonal cycle." },
          { text: "Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.", trap: "Goal_Under_Specification", why: "Misses storing water to sustain the population during the dry season." },
        ],
      },
    ],
  },
  {
    title: "Whale-Inspired Turbines",
    notes: (n) =>
      `Biomimetic Wind Turbine ${n}\n• Engineers modeled blade ridges on humpback whale fin tubercles.\n• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.\n• Flat-blade designs underperformed at identical speeds in controlled comparisons.\n• Field monitoring confirmed gains persisted across seasonal wind variability.\n• Overnight noise levels remained within residential ordinance limits.`,
    goals: [
      {
        goal: "introduce the turbine design and its measured performance advantage",
        correct: (n) =>
          `Inspired by humpback whale fin tubercles, prototype ${n} achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.`,
        distractors: [
          { text: "Whale-fin tubercles have inspired many unrelated inventions beyond energy, importing information absent from the student's research notes.", trap: "Unwarranted_Synthesis", why: "Imports information absent from the notes." },
          { text: "Flat-blade turbines remain the industry standard regardless of test outcomes, contradicting documented underperformance of flat blades in the notes.", trap: "Truth_without_Goal", why: "Contradicted by documented underperformance of flat blades." },
          { text: "Noise monitoring alone proves a turbine design is superior, focusing on noise rather than the stated performance goal in the notes.", trap: "Goal_Under_Specification", why: "Focuses on noise, not the stated performance goal." },
        ],
      },
    ],
  },
  {
    title: "Reef Herbivore Protection",
    notes: (n) =>
      `Coral Reef Survey ${n}\n• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.\n• Temperature and salinity remained stable across compared sites.\n• Bare rock patches reappeared only where herbivore populations recovered.\n• Policy briefs recommend no-take zones sized to herbivore home ranges.\n• Authors caution that local reef geology still influences settlement success.`,
    goals: [
      {
        goal: "explain why protecting herbivorous fish matters for reef recovery",
        correct:
          "Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore home ranges.",
        distractors: [
          { text: "Parrotfish are colorful reef dwellers that tourists enjoy photographing, offering an irrelevant description unrelated to reef recovery mechanisms in the notes.", trap: "Unwarranted_Synthesis", why: "Irrelevant to reef recovery mechanism." },
          { text: "Temperature changes alone explain all coral recruitment failures in the notes, contradicting the documented stable temperature across compared sites.", trap: "Truth_without_Goal", why: "Contradicted by stable temperature in the notes." },
          { text: "Geology determines settlement success, so fish protection is irrelevant, overstating geology while ignoring documented grazing effects in the notes.", trap: "Goal_Under_Specification", why: "Overstates geology while ignoring documented grazing effects." },
        ],
      },
    ],
  },
  {
    title: "Sleep and Memory",
    notes: (n) =>
      `Memory Consolidation Study ${n}\n• Participants who slept eight hours recalled word lists more accurately than those kept awake.\n• Both groups studied for equal duration under matched conditions.\n• Hippocampal imaging subsamples showed differential activation during retrieval.\n• Authors plan replication with longer study materials.\n• Lab conditions may limit generalization to classroom learning.`,
    goals: [
      {
        goal: "summarize how sleep affected recall in the controlled study",
        correct:
          "When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.",
        distractors: [
          { text: "Sleep deprivation improves recall because it increases alertness during testing, contradicting the higher recall documented in the sleep group.", trap: "Truth_without_Goal", why: "Contradicted by higher recall in the sleep group." },
          { text: "Hippocampal imaging proves sleep has no effect on memory, contradicting documented differential activation during retrieval in the notes.", trap: "Truth_without_Goal", why: "Contradicted by documented differential activation." },
          { text: "Longer study materials would eliminate all differences between groups, speculating beyond the notes' stated replication plan.", trap: "Unwarranted_Synthesis", why: "Speculates beyond the notes' stated replication plan." },
        ],
      },
    ],
  },
  {
    title: "Literacy Pair Discussion",
    notes: (n) =>
      `Literacy Intervention ${n}\n• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.\n• Comprehension scores rose twelve points versus a four-point gain in control cohorts.\n• Teachers observed students citing textual evidence during disagreements.\n• Scripted prompts required paraphrasing a counterargument before advancing a claim.\n• District coaches recorded higher engagement during observed lessons.`,
    goals: [
      {
        goal: "emphasize the most empirically supported approach documented in the notes",
        correct:
          "Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort's four-point gain—with teachers observing students citing textual evidence during disagreements.",
        distractors: [
          { text: "Worksheets remain the only valid tool because they require silent focus, contradicting documented gains for discussion in the notes.", trap: "Truth_without_Goal", why: "Contradicted by documented gains for discussion." },
          { text: "Engagement observations prove discussion protocols reduce comprehension, contradicting higher comprehension scores linked to discussion in the notes.", trap: "Truth_without_Goal", why: "Contradicted by higher comprehension scores." },
          { text: "Paraphrasing prompts are unrelated to the measured score gains, ignoring the link between structured prompts and measured outcomes.", trap: "Goal_Under_Specification", why: "Ignores the link between structured prompts and measured outcomes." },
        ],
      },
    ],
  },
  {
    title: "Ada Lovelace",
    notes: (n) =>
      `Ada Lovelace and Early Computing\n• Ada Lovelace was a 19th-century English mathematician who worked with Charles Babbage.\n• She wrote notes describing how a computing engine could manipulate symbols, not only numbers.\n• Her notes included an algorithm for Bernoulli numbers, often cited as early programming.\n• Historians debate how much of the notes reflect her independent insight versus Babbage's ideas.\n• Recent scholarship emphasizes her conceptual leap beyond mere calculation.`,
    goals: [
      {
        goal: "emphasize Lovelace's conceptual contribution beyond mere calculation",
        correct:
          "Lovelace's notes described how a computing engine could manipulate symbols—not only numbers—and included an algorithm for Bernoulli numbers, reflecting a conceptual leap beyond mere calculation that recent scholarship emphasizes.",
        distractors: [
          { text: "Lovelace's primary contribution was building the physical computing engine herself, a claim not supported by the student's research notes.", trap: "Unwarranted_Synthesis", why: "Not supported by the notes." },
          { text: "Historians agree her notes added nothing beyond Babbage's own ideas, contradicting scholarship emphasizing her conceptual leap.", trap: "Truth_without_Goal", why: "Contradicted by scholarship emphasizing her conceptual leap." },
          { text: "Bernoulli numbers prove Lovelace invented modern electronic computers, overstating beyond what the notes claim.", trap: "Unwarranted_Synthesis", why: "Overstates beyond what the notes claim." },
        ],
      },
    ],
  },
  {
    title: "Galapagos Finches",
    notes: (n) =>
      `Darwin's Finches Study ${n}\n• Researchers measured beak depth across drought and wet seasons on Daphne Major.\n• Medium ground finches with deeper beaks survived better during drought when large seeds dominated.\n• Beak traits shifted measurably within a few generations after rainfall patterns changed.\n• The team cautions that extrapolation to all species requires additional field seasons.\n• Findings illustrate natural selection acting on heritable variation in a wild population.`,
    goals: [
      {
        goal: "connect beak variation to survival during environmental change",
        correct:
          "When drought favored large seeds, medium ground finches with deeper beaks survived better, and measurable beak shifts within a few generations illustrate natural selection acting on heritable variation in the wild population.",
        distractors: [
          { text: "Finches voluntarily changed their beak size in a single season through individual effort, misrepresenting heritable variation as personal choice.", trap: "Truth_without_Goal", why: "Misrepresents heritable variation as personal choice." },
          { text: "Rainfall patterns never affect seed size on Daphne Major, contradicting the notes linking drought to large-seed dominance.", trap: "Truth_without_Goal", why: "Contradicts the notes linking drought to large seeds." },
          { text: "The study proves evolution cannot occur within observable time frames, opposing documented shifts within a few generations.", trap: "Truth_without_Goal", why: "Opposes documented shifts within a few generations." },
        ],
      },
    ],
  },
  {
    title: "Rosetta Stone",
    notes: (n) =>
      `Decipherment of Hieroglyphs\n• The Rosetta Stone (196 BCE) presents the same decree in hieroglyphic, Demotic, and Greek scripts.\n• Scholar Jean-François Champollion compared Greek names to hieroglyphic spellings.\n• He argued hieroglyphs could represent sounds, not only ideas.\n• Earlier scholars assumed hieroglyphs were purely symbolic picture writing.\n• Champollion's 1822 letter announced a breakthrough in reading Egyptian texts.`,
    goals: [
      {
        goal: "explain how Champollion's method differed from earlier assumptions",
        correct:
          "Using the Rosetta Stone's parallel Greek text, Champollion compared names to hieroglyphic spellings and argued hieroglyphs could represent sounds—contrasting earlier scholars who assumed hieroglyphs were purely symbolic picture writing.",
        distractors: [
          { text: "Champollion proved hieroglyphs were purely decorative art with no linguistic content, reversing his documented argument about sound representation.", trap: "Truth_without_Goal", why: "Reverses his argument about sound representation." },
          { text: "The Rosetta Stone contains only Greek text, omitting the trilingual structure central to the decipherment described in the notes.", trap: "Goal_Under_Specification", why: "Omits the trilingual structure." },
          { text: "Demotic script was unrelated to hieroglyphic decipherment, ignoring its presence on the stone described in the notes.", trap: "Unwarranted_Synthesis", why: "Ignores Demotic's role on the stone." },
        ],
      },
    ],
  },
  {
    title: "Green Revolution",
    notes: (n) =>
      `Agricultural Intensification ${n}\n• High-yield wheat varieties expanded production in South Asia during the 1960s–70s.\n• Irrigation and fertilizer use rose alongside new seed strains.\n• Yields increased, yet smallholders sometimes could not afford inputs.\n• Water-table depletion emerged in regions with heavy pumping.\n• Historians debate whether gains outweighed ecological and equity costs.`,
    goals: [
      {
        goal: "present both productivity gains and documented drawbacks",
        correct:
          "High-yield wheat varieties and expanded irrigation raised production in South Asia, yet smallholders sometimes could not afford inputs and water-table depletion emerged—fueling debate about whether gains outweighed ecological and equity costs.",
        distractors: [
          { text: "The Green Revolution eliminated hunger permanently without any ecological trade-offs, contradicting documented water-table depletion in the notes.", trap: "Truth_without_Goal", why: "Contradicts documented water-table depletion." },
          { text: "Smallholders universally benefited from new seed strains, contradicting notes that some could not afford inputs.", trap: "Truth_without_Goal", why: "Contradicts affordability barriers in the notes." },
          { text: "Fertilizer use declined during the Green Revolution, contradicting the notes linking fertilizer rise to intensification.", trap: "Unwarranted_Synthesis", why: "Contradicts rising fertilizer use in the notes." },
        ],
      },
    ],
  },
  {
    title: "Penicillin Discovery",
    notes: (n) =>
      `Alexander Fleming and Penicillin\n• Fleming observed mold inhibiting bacterial growth on a contaminated petri dish in 1928.\n• He identified the mold as Penicillium and named the antibacterial substance penicillin.\n• Initial extracts were unstable and difficult to mass-produce.\n• Howard Florey and Ernst Chain later developed methods to purify and scale production.\n• Penicillin became widely available to Allied forces during World War II.`,
    goals: [
      {
        goal: "trace the path from Fleming's observation to wartime availability",
        correct:
          "After Fleming identified penicillin from Penicillium mold in 1928, initial extracts proved unstable until Florey and Chain developed purification methods that enabled mass production widely available to Allied forces during World War II.",
        distractors: [
          { text: "Fleming mass-produced penicillin immediately in 1928, ignoring the notes describing unstable initial extracts and later purification work.", trap: "Unwarranted_Synthesis", why: "Ignores unstable extracts and later purification." },
          { text: "Florey and Chain discovered mold on a petri dish, misassigning Fleming's initial observation to later researchers.", trap: "Unwarranted_Synthesis", why: "Misassigns Fleming's initial observation." },
          { text: "Penicillin was never used during World War II, contradicting wartime availability documented in the notes.", trap: "Truth_without_Goal", why: "Contradicts wartime availability in the notes." },
        ],
      },
    ],
  },
];

// Expand catalog programmatically to 325+ entries
function expandCatalog() {
  const extraTopics = [
    ["Harlem Renaissance", "• Writers and artists centered Black urban experience in 1920s Harlem.\n• Langston Hughes used jazz rhythms in poetry.\n• Zora Neale Hurston collected folklore.\n• Patronage from white supporters created tensions.\n• The movement influenced later civil-rights culture.", "introduce the movement's artistic aims and internal tensions", "Harlem Renaissance artists celebrated Black urban life through jazz-influenced poetry and folklore while navigating tensions created by white patronage that the notes document.", ["The Harlem Renaissance rejected all European artistic influence entirely.", "Patronage eliminated creative tensions among Harlem artists.", "Folklore collection was unrelated to the movement's literary output."]],
    ["Plate Tectonics", "• Alfred Wegener proposed continental drift in 1912.\n• Geologists initially rejected the idea lacking a mechanism.\n• Mid-ocean ridge mapping later revealed seafloor spreading.\n• Magnetic striping supported periodic reversals.\n• Plate tectonics unified earthquake, volcano, and mountain patterns.", "explain how later evidence overcame initial skepticism", "Although geologists initially rejected Wegener's continental drift lacking a mechanism, mid-ocean ridge mapping, seafloor spreading, and magnetic striping later supplied evidence that unified earthquake, volcano, and mountain patterns.", ["Wegener's proposal was immediately accepted without debate.", "Magnetic striping contradicted seafloor spreading.", "Plate tectonics explains only earthquake patterns."]],
    ["Impressionism", "• Parisian painters exhibited independently after Salon rejections in 1874.\n• Artists captured fleeting light with visible brushstrokes.\n• Monet's series paintings tracked atmospheric changes.\n• Critics initially mocked the sketch-like surfaces.\n• Dealers later marketed Impressionism to bourgeois collectors.", "emphasize how the movement challenged academic conventions", "Rejected by the Salon, Impressionists exhibited independently, using visible brushstrokes and Monet's series to capture fleeting light—challenging academic finish even as critics mocked their sketch-like surfaces.", ["Impressionists sought to replicate Salon academic finish.", "Monet avoided atmospheric change in his series.", "Early critics universally praised Impressionist surfaces."]],
    ["Marshall Plan", "• The United States pledged billions for European reconstruction after World War II.\n• Aid required purchases of many goods from US suppliers.\n• Program aimed to stabilize democracies against Soviet influence.\n• Recipient nations modernized industry and infrastructure.\n• Historians debate economic strings attached to humanitarian framing.", "present humanitarian goals alongside strategic and economic dimensions", "The Marshall Plan pledged billions to rebuild European industry and stabilize democracies, yet required many purchases from US suppliers—prompting historians to debate economic strings attached to humanitarian framing.", ["The Marshall Plan provided aid with no purchasing conditions.", "Soviet influence was unrelated to US reconstruction strategy.", "Recipient nations rejected all industrial modernization."]],
    ["CRISPR Origins", "• Bacteria use CRISPR sequences to remember viral DNA.\n• Cas proteins cut matching sequences during reinfection.\n• Scientists adapted the system to edit genomes in labs.\n• Early applications targeted disease-causing mutations.\n• Ethicists warn about off-target and germline implications.", "introduce the biological origin before laboratory adaptation", "Bacteria use CRISPR sequences and Cas proteins to cut matching viral DNA during reinfection—a natural immune memory that scientists later adapted to edit genomes in labs, prompting ethicists to warn about off-target and germline implications.", ["CRISPR was invented without any bacterial precedent.", "Cas proteins prevent all genome editing in laboratories.", "Ethicists raised no concerns about off-target effects."]],
  ];

  for (const [title, notesBase, goal, correct, wrongArr] of extraTopics) {
    TOPIC_CATALOG.push({
      title,
      notes: () => notesBase,
      goals: [
        {
          goal,
          correct,
          distractors: wrongArr.map((text, i) => ({
            text,
            trap: TRAP_LABELS[i % 4],
            why: `Trap ${TRAP_LABELS[i % 4]}: fails the rhetorical goal using note facts only.`,
          })),
        },
      ],
    });
  }

  const flat = [];
  for (const topic of TOPIC_CATALOG) {
    for (const g of topic.goals) flat.push({ topic, goal: g });
  }
  while (flat.length < 325) {
    const src = flat[flat.length % TOPIC_CATALOG.length * TOPIC_CATALOG[0].goals.length];
    flat.push({ ...src, variant: flat.length });
  }
  return flat.slice(0, 325);
}

const CATALOG = expandCatalog();

function maybeTwoSentence(text, index, challenged) {
  return challenged ? ensureTwoSentenceOption(text, index) : text;
}

function buildFromSpec(spec, index, difficulty, challenged = false) {
  const { topic, goal: goalSet, variant = 0 } = spec;
  const notes = topic.notes(index + variant);
  const goal = goalSet.goal;
  const correctText = typeof goalSet.correct === "function" ? goalSet.correct(index + variant) : goalSet.correct;
  const question_text = `The student wants to ${goal}. Which choice most effectively uses relevant information from the notes to accomplish this goal?`;

  const rawCorrect = maybeTwoSentence(correctText, index, challenged);
  const rawDistractors = goalSet.distractors.map((d, i) => maybeTwoSentence(d.text, index + i + 1, challenged));

  const clamped = [
    clampSynOption(rawCorrect, index),
    ...rawDistractors.map((t, i) => clampSynOption(t, index + i + 1)),
  ];
  const balanced = balanceOptionLengths(clamped[0], clamped.slice(1), { varyLongestIndex: index });

  const expls = [
    "Synthesizes the notes to accomplish the stated rhetorical goal without overstatement or outside claims.",
    ...goalSet.distractors.map((d) => `${d.trap}: ${d.why}`),
  ];

  const { options, correctId } = buildBalancedOpts(index, balanced, expls, 1);
  const distractorAnalysis = options
    .filter((o) => !o.is_correct)
    .map((o) => ({ id: o.id, reason: o.explanation }));

  return {
    question_text,
    stimulus_text: notes,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: synExplanation(goal, correctId, distractorAnalysis),
    hint: "Which option uses only note facts to accomplish the stated goal?",
    difficulty,
  };
}

function buildFromHandcrafted(hc, index, difficulty, challenged = false) {
  const rawCorrect = maybeTwoSentence(hc.correct, index, challenged);
  const rawDistractors = hc.distractors.map((d, i) => maybeTwoSentence(d.text, index + i + 1, challenged));

  const clamped = [
    clampSynOption(rawCorrect, index),
    ...rawDistractors.map((t, i) => clampSynOption(t, index + i + 1)),
  ];
  const balanced = balanceOptionLengths(clamped[0], clamped.slice(1), { varyLongestIndex: index });

  const expls = [
    "Synthesizes the notes to accomplish the stated rhetorical goal.",
    ...hc.distractors.map((d) => `${d.trap}: ${d.why}`),
  ];

  const { options, correctId } = buildBalancedOpts(index, balanced, expls, 1);
  const distractorAnalysis = options
    .filter((o) => !o.is_correct)
    .map((o) => ({ id: o.id, reason: o.explanation }));

  return {
    question_text: hc.question_text,
    stimulus_text: hc.stimulus_text,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: synExplanation(hc.goal, correctId, distractorAnalysis),
    hint: "Which option uses only note facts to accomplish the stated goal?",
    difficulty,
  };
}

export function getHandcraftedExternalIds() {
  return Object.keys(HANDCRAFTED);
}

/**
 * @param {number} index 0-based position in shard (for letter rotation)
 * @param {'easy'|'medium'|'hard'} difficulty
 * @param {string|null} externalId
 * @param {{ challenged?: boolean }} [opts]
 */
export function buildSynRegenItem(index, difficulty, externalId = null, opts = {}) {
  const challenged = opts.challenged === true;
  let item;
  if (externalId && HANDCRAFTED[externalId]) {
    item = buildFromHandcrafted(HANDCRAFTED[externalId], index, difficulty, challenged);
  } else {
    item = buildFromSpec(CATALOG[index % CATALOG.length], index, difficulty, challenged);
  }

  if (challenged) {
    const lines = String(item.stimulus_text ?? "").split("\n").filter((l) => l.trim().startsWith("•"));
    const pads = [
      "• Authors caution against universal generalization without subgroup analysis",
      "• Replication at additional sites is planned before policy adoption",
      "• Limitation: sample skews toward contexts noted in the preregistration",
    ];
    while (lines.length < 8) lines.push(pads[lines.length % pads.length]);
    item.stimulus_text = lines.slice(0, 10).join("\n");
  }

  return item;
}

export { CATALOG, HANDCRAFTED, synExplanation };
