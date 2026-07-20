/**
 * Lengthen the SYN "hard" tier options so the difficulty gradient matches
 * OnePrep (easy ~85 / medium ~110 / hard ~250 chars per option). Only the
 * option TEXT changes; goals, trap tags, and explanations are preserved, and
 * the distractor order already aligns with each topic's trap tags.
 */
import { readFileSync, writeFileSync } from "node:fs";

const FILE = "scripts/data/syn-tiered-content.json";
const content = JSON.parse(readFileSync(FILE, "utf8"));

// key -> { correct, texts: [d0, d1, d2] } in the EXISTING distractor order.
const NEW_HARD = {
  "Tikal's Water Supply": {
    correct:
      "Tikal's plaster-paved reservoir system, which Maya engineers dated to the Late Classic period, sustained the city's population of more than 60,000 residents through the prolonged dry season precisely because the plaster lining kept collected rainwater from seeping into the porous limestone bedrock.",
    texts: [
      "Tikal's reservoir system sustained the city's population of more than 60,000 residents through the prolonged dry season, an engineering achievement made possible by an elaborate network of canals that diverted water from nearby rivers directly into the heart of the city.",
      "Tikal's reservoir system sustained the city's population of more than 60,000 residents through the prolonged dry season once Maya engineers had finally overcome the porous limestone bedrock's persistent tendency to absorb and steadily drain away the stored rainwater.",
      "Tikal's plaster-paved reservoir system sustained the city's population of more than 60,000 residents through the dry season because the porous limestone bedrock beneath the city naturally trapped and held the collected rainwater securely in place.",
    ],
  },
  "Biomimetic Wind Turbine": {
    correct:
      "In controlled wind-tunnel tests, the tubercle-ridged blades modeled on humpback whale fins delivered twelve-percent efficiency gains over flat designs at moderate speeds, and subsequent field monitoring confirmed that those gains persisted across seasonal wind variability while overnight noise stayed within residential limits.",
    texts: [
      "In controlled wind-tunnel tests, the tubercle-ridged blades delivered twelve-percent efficiency gains over the flat designs at moderate speeds, gains that the engineers now expect will grow substantially larger as the turbines are eventually scaled up to full commercial size.",
      "Field monitoring of the installed turbines confirmed that the tubercle-ridged blades' efficiency advantage persisted across seasonal wind variability, and the overnight noise produced by the spinning blades stayed comfortably within the local residential ordinance limits.",
      "In controlled wind-tunnel tests the tubercle-ridged blades delivered twelve-percent efficiency gains over the flat designs, though later field monitoring found that this advantage faded once the turbines were exposed to the ordinary seasonal variability of real-world wind.",
    ],
  },
  "Coral Reef Survey": {
    correct:
      "Because both coral recruitment and the bare settlement surfaces it depends on returned only at sites where herbivore populations had recovered, the study's authors recommend establishing no-take zones sized to herbivore home ranges, though they caution that local reef geology still influences settlement success.",
    texts: [
      "Because coral recruitment returned only at the sites where herbivore populations had recovered, the study's authors recommend no-take zones sized to herbivore home ranges, a protective measure they say will reliably restore any degraded reef regardless of its underlying geology.",
      "On the strength of the survey's findings, the study's authors recommend establishing no-take zones carefully sized to match the home ranges of each reef's herbivore populations in order to protect the specific reef sites that the survey examined.",
      "Because stable temperature and salinity were what actually drove the observed coral recruitment, the study's authors recommend no-take zones while cautioning that the reef's herbivore populations ultimately play only a minor, supporting role in recovery.",
    ],
  },
  "Memory Consolidation Study": {
    correct:
      "Although both groups had studied the word lists for an equal duration under matched conditions, the participants who slept eight hours afterward recalled the lists more accurately than those kept awake, a result the authors caution may not generalize well from controlled lab conditions to real classroom learning.",
    texts: [
      "Although both groups studied for an equal duration under matched conditions, the participants who slept eight hours recalled the word lists more accurately than those kept awake, a finding the authors say applies directly and immediately to everyday classroom learning.",
      "Although both groups studied for an equal duration under matched conditions, the participants who slept eight hours recalled the lists more accurately than those kept awake, and hippocampal imaging of subsamples showed clearly differential activation during retrieval.",
      "The participants who slept eight hours recalled the word lists more accurately than those kept awake despite the equal study time, a finding the authors say they have already confirmed in completed classroom replications using longer study materials.",
    ],
  },
  "Literacy Intervention": {
    correct:
      "The structured protocol, whose scripted prompts required students to paraphrase a counterargument before advancing a claim of their own, coincided with a twelve-point comprehension gain and with teachers' observations of students citing textual evidence during their classroom disagreements.",
    texts: [
      "After the structured pair-discussion protocols replaced the silent worksheets, the treatment classrooms posted a twelve-point comprehension gain, and teachers observed their students citing textual evidence during disagreements far more frequently than they had before.",
      "The structured protocol let students advance their own claims freely before they were ever required to consider or paraphrase a single counterargument, a design that nonetheless coincided with a twelve-point comprehension gain in the treatment classrooms.",
      "The structured protocol's scripted paraphrasing prompts coincided with a twelve-point comprehension gain that the researchers now confidently expect will hold across every subject area and grade level taught throughout the district.",
    ],
  },
  "Ada Lovelace and Early Computing": {
    correct:
      "Recent scholarship emphasizes Ada Lovelace's conceptual leap beyond mere calculation, such as her description of how a computing engine could manipulate symbols rather than only numbers, even as historians continue to debate how much of her notes reflect her own independent insight versus Babbage's ideas.",
    texts: [
      "Recent scholarship emphasizes Ada Lovelace's conceptual leap beyond mere calculation and has, in the process, finally settled the long-standing question of exactly how much of her insight she owed to Charles Babbage's earlier ideas about the engine.",
      "Although historians once debated the origins of her notes, recent scholarship has now concluded that every idea contained within them, including the celebrated algorithm for Bernoulli numbers, was in fact entirely the work of Charles Babbage alone.",
      "Recent scholarship emphasizes Ada Lovelace's conceptual leap beyond mere calculation, particularly her striking insight that a computing engine could be made to manipulate abstract symbols and not only numbers, which is a central reason her work is still studied today.",
    ],
  },
  "Darwin's Finches Study": {
    correct:
      "By documenting how medium ground finches with deeper beaks survived drought better when large seeds dominated and how those beak traits shifted measurably within a few generations, the findings vividly illustrate natural selection acting on heritable variation in a wild population, though the team cautions that extrapolating the result to all species will require additional field seasons.",
    texts: [
      "Because medium ground finches with deeper beaks survived drought better and their beak traits shifted within just a few generations, the team concludes that the result extends confidently to all bird species without any need for further field study.",
      "Because the finches' beak traits shifted measurably within only a few generations of the drought, the team proved that drought has now permanently fixed deeper beaks in every finch population across the world, regardless of local rainfall or food supply.",
      "By tracking beak depth across both drought and wet seasons on Daphne Major, the findings illustrate natural selection acting on heritable variation in a real, free-living wild population rather than in any controlled laboratory setting.",
    ],
  },
  "Decipherment of Hieroglyphs": {
    correct:
      "By systematically comparing the Greek versions of royal names on the Rosetta Stone to their corresponding hieroglyphic spellings, Champollion argued that hieroglyphs could represent sounds and not only ideas, and his 1822 letter announced this hard-won breakthrough in the reading of ancient Egyptian texts.",
    texts: [
      "Champollion's celebrated 1822 letter announced to the scholarly world that Egyptian hieroglyphs were in fact a purely symbolic picture writing, thereby confirming the very assumption that earlier generations of scholars had long held about the ancient script.",
      "By comparing the Demotic names inscribed on the stone to their Greek spellings, Champollion proved in his 1822 letter that the Rosetta Stone's three different scripts had each been used to record an entirely separate royal decree rather than one shared text.",
      "Champollion's celebrated 1822 letter announced to the scholarly world that he had at last achieved a long-sought breakthrough in the reading of ancient Egyptian texts written in the hieroglyphic script, a feat that had eluded earlier scholars for centuries.",
    ],
  },
  "Agricultural Intensification": {
    correct:
      "Although the new seed strains, expanded irrigation, and heavier fertilizer use raised wheat yields across South Asia, smallholders sometimes could not afford the required inputs and water-table depletion emerged in heavily pumped regions, leaving historians to debate whether the gains outweighed the ecological and equity costs.",
    texts: [
      "The new high-yield seed strains raised wheat production across South Asia so dramatically that historians have now firmly concluded the agricultural gains decisively outweighed any of the program's accompanying ecological and equity costs.",
      "Although wheat yields rose sharply at first, the steady spread of water-table depletion ultimately proved that the new high-yield varieties had failed, and agricultural production eventually collapsed across the whole of South Asia.",
      "The introduction of new seed strains, along with greatly expanded irrigation and heavier fertilizer use, raised wheat yields substantially throughout South Asia during the agriculturally transformative decades of the 1960s and 1970s.",
    ],
  },
  "Alexander Fleming and Penicillin": {
    correct:
      "After Alexander Fleming named penicillin in 1928, the substance's unstable initial extracts proved difficult to mass-produce until Howard Florey and Ernst Chain developed methods to purify and scale it, ultimately making the antibiotic widely available to Allied forces during World War II.",
    texts: [
      "Penicillin became widely available to Allied forces during World War II only after Alexander Fleming, working entirely on his own, had perfected a stable and easily mass-produced extract of the new antibiotic back in 1928, well before any other researchers became involved.",
      "Howard Florey and Ernst Chain discovered penicillin themselves and, facing no real production obstacles of any kind, were able to distribute the finished antibiotic to Allied forces throughout the later years of World War II.",
      "In 1928, Alexander Fleming identified the Penicillium mold growing on a contaminated petri dish and gave the name penicillin to the antibacterial substance that the mold was visibly producing against the surrounding bacteria.",
    ],
  },
  "• Writers and artists centered Black urban experience in 1920s Harlem.": {
    correct:
      "Although patronage from white supporters created real tensions within the movement, the Harlem writers and artists who centered Black urban experience in their work, figures such as Langston Hughes and Zora Neale Hurston, went on to shape and influence the later culture of the civil-rights era.",
    texts: [
      "By centering Black urban experience in their poetry and folklore, the writers and artists of the movement went on to influence the later culture of the civil-rights era while facing no internal tensions of any kind along the way.",
      "The movement's jazz-influenced poetry and carefully collected folklore went on to shape not only the later American civil-rights era but also cultural and artistic movements all across the wider world for generations afterward.",
      "Patronage extended by sympathetic white supporters created notable tensions among the various writers and artists of the movement as they navigated the competing expectations that such financial support inevitably brought with it.",
    ],
  },
  "• Alfred Wegener proposed continental drift in 1912.": {
    correct:
      "Geologists initially rejected Alfred Wegener's 1912 proposal of continental drift because it lacked a convincing mechanism, but the idea later won acceptance once mid-ocean ridge mapping revealed seafloor spreading and magnetic striping along the ridges supported the existence of periodic magnetic reversals.",
    texts: [
      "Geologists enthusiastically embraced Alfred Wegener's theory of continental drift in 1912, just as soon as the detailed mapping of the mid-ocean ridges first revealed the previously unknown process of seafloor spreading to them.",
      "Continental drift was at first rejected for lacking a mechanism but was eventually confirmed at the very moment that plate tectonics finally unified the global patterns of earthquakes, volcanoes, and mountain ranges into one theory.",
      "Geologists initially rejected Alfred Wegener's bold 1912 proposal of continental drift largely because the idea, as he first presented it, lacked any clear physical mechanism to explain how the massive continents could possibly move across the globe.",
    ],
  },
  "• Parisian painters exhibited independently after Salon rejections in 1874.": {
    correct:
      "Although critics had initially mocked the sketch-like surfaces created by the painters' visible brushstrokes, dealers later marketed Impressionism to bourgeois collectors, helping a style that the official Salon had once rejected gradually gain wide acceptance among the public.",
    texts: [
      "Although critics had at first mocked the movement's sketch-like surfaces, Monet's celebrated series paintings tracking subtle atmospheric changes eventually silenced every last one of the style's once numerous and deeply hostile critics.",
      "Dealers began marketing Impressionism to bourgeois collectors only after the critics of the day had already warmly welcomed and openly praised the sketch-like surfaces produced by the painters' loose and highly visible brushstrokes.",
      "Some years after the Parisian painters first exhibited their work independently of the Salon, dealers began actively marketing the new Impressionist style to the bourgeois collectors who could afford to purchase such fashionable paintings.",
    ],
  },
  "• The United States pledged billions for European reconstruction after World War II.": {
    correct:
      "While the recipient nations used the program to modernize their industry and rebuild their infrastructure after the war, historians continue to debate the economic strings attached to the aid, including its requirement that recipients purchase many goods from United States suppliers, beneath its humanitarian framing.",
    texts: [
      "The recipient nations modernized their industry and infrastructure under the program, and historians now broadly agree that the generous postwar aid was offered with no meaningful economic strings attached to it whatsoever.",
      "The program modernized the recipient nations even as it required them to purchase many goods from United States suppliers, a transparently exploitative arrangement that historians have long since agreed to reject as purely cynical.",
      "Under the terms of the postwar program, the various recipient nations of Western Europe were able to modernize their industry and substantially rebuild the infrastructure that years of war had badly damaged across the continent.",
    ],
  },
  "• Bacteria use CRISPR sequences to remember viral DNA.": {
    correct:
      "Scientists adapted the bacterial CRISPR system to edit genomes in the laboratory, with early applications aimed at correcting disease-causing mutations, even as ethicists continue to warn about the technology's off-target effects and its troubling implications for the human germline.",
    texts: [
      "Scientists adapted the bacterial system to edit genomes and to target disease-causing mutations directly, a powerful gene-editing process that ethicists have now confirmed to be entirely free of any off-target or germline risks.",
      "Scientists adapted the bacterial CRISPR system to edit genomes in the laboratory and have, in only a few short years, already used it to cure the great majority of inherited germline diseases in human patients around the world.",
      "Scientists adapted the naturally occurring bacterial CRISPR system to edit genomes in the laboratory, where the earliest applications of the powerful new tool were aimed specifically at correcting dangerous disease-causing genetic mutations.",
    ],
  },
};

let patched = 0;
let missing = 0;
for (const topic of content) {
  const nh = NEW_HARD[topic.key];
  if (!nh) {
    missing += 1;
    console.warn("No new hard content for key:", JSON.stringify(topic.key));
    continue;
  }
  const hard = topic.tiers.hard;
  hard.correct = nh.correct;
  nh.texts.forEach((t, i) => {
    if (hard.distractors[i]) hard.distractors[i].text = t;
  });
  patched += 1;
}

writeFileSync(FILE, JSON.stringify(content, null, 2) + "\n");

// Report new lengths.
const lens = [];
for (const t of content) {
  const h = t.tiers.hard;
  const opts = [h.correct, ...h.distractors.map((d) => d.text)];
  lens.push(opts.reduce((s, o) => s + o.length, 0) / opts.length);
}
const avg = Math.round(lens.reduce((s, x) => s + x, 0) / lens.length);
console.log(
  `Patched ${patched} topics (missing ${missing}). New hard avg/opt: ${avg} (min ${Math.round(Math.min(...lens))}, max ${Math.round(Math.max(...lens))}).`,
);
