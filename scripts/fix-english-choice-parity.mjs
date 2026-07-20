#!/usr/bin/env node
/**
 * Rewrite English RW answer choices for length parity (±20% word spread target).
 * Uses scripts/data/.english-choice-research.json for targets and priority order.
 *
 *   node scripts/fix-english-choice-parity.mjs --dry-run
 *   node scripts/fix-english-choice-parity.mjs --apply
 */
import { readFileSync, writeFileSync, appendFileSync, mkdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { optionWordCount, charLen } from "./lib/english-rw-templates.mjs";
import { validateDsatRwQuestion, PROJECT_ID } from "./lib/dsat-rw-blueprint.mjs";
import { getPoetrySynthesisBank } from "./lib/poetry-synthesis-bank.mjs";
import { getCoeQuantBank } from "./lib/dsat-coe-quant-bank.mjs";

const RESEARCH = resolve("scripts/data/.english-choice-research.json");
const OUT = resolve("scripts/data/.english-choice-parity-apply.json");
const LOG = resolve("scripts/data/.english-choice-parity-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run") || !apply;

const PRIORITY_EXTERNAL_IDS = [
  ...getPoetrySynthesisBank().poetry.map((i) => i.external_id),
  ...getPoetrySynthesisBank().synthesis.map((i) => i.external_id),
  ...getCoeQuantBank().map((i) => i.external_id),
];

/** Hand-tuned balanced options (override programmatic pad when present). */
const HAND_PATCHES = buildHandPatches();

function buildHandPatches() {
  const map = new Map();

  map.set("poetry-wic-medium-001", [
    { id: "A", text: "carried within oneself", is_correct: true, explanation: "Correct: 'self-borne' joy is internally sustained, not borrowed from outside." },
    { id: "B", text: "forbidden by others", is_correct: false, explanation: "Incorrect: the poem celebrates the joy as defiant, not banned." },
    { id: "C", text: "displayed for sale", is_correct: false, explanation: "Incorrect: the joy resists being auctioned, not offered for sale." },
    { id: "D", text: "entirely forgotten now", is_correct: false, explanation: "Incorrect: the joy remains bright and owned, not lost." },
  ]);

  map.set("poetry-tsp-easy-001", [
    { id: "A", text: "It contrasts an oppressive urban scene with a restorative natural landscape.", is_correct: true, explanation: "Correct: stanzas shift from city smoke to meadow coolness." },
    { id: "B", text: "It narrates one day's journey without ever changing the poem's primary setting.", is_correct: false, explanation: "Incorrect: the setting changes from city to meadow." },
    { id: "C", text: "It argues that urban factories should permanently replace productive farmland.", is_correct: false, explanation: "Incorrect: the meadow is presented positively, not as something to replace." },
    { id: "D", text: "It lists specific historical dates in strict chronological order.", is_correct: false, explanation: "Incorrect: no dates appear." },
  ]);

  map.set("poetry-tsp-medium-001", [
    { id: "A", text: "They reveal that the preceding images were building toward a single metaphor about ripening as artistic design.", is_correct: true, explanation: "Correct: the pears ripening parallels the poem disclosing its 'hidden design.'" },
    { id: "B", text: "They introduce a new unrelated topic about maritime commerce rather than the ripening metaphor.", is_correct: false, explanation: "Incorrect: ports appear earlier; the ending returns to the pears metaphor." },
    { id: "C", text: "They reject the surreal domestic images as meaningless dreams lacking intentional artistic design.", is_correct: false, explanation: "Incorrect: the ending affirms purposeful design, not meaninglessness." },
    { id: "D", text: "They summarize a scientific study of fruit cultivation rather than employing metaphorical ripening.", is_correct: false, explanation: "Incorrect: the ripening image is metaphorical, not agricultural reporting." },
  ]);

  map.set("poetry-cid-easy-001", [
    { id: "A", text: "Preserving a memento of loss can reshape grief into quiet strength.", is_correct: true, explanation: "Correct: keeping the letter transforms loss into warmth and gentleness." },
    { id: "B", text: "The speaker urges readers to destroy painful reminders immediately without preserving memories.", is_correct: false, explanation: "Incorrect: the speaker keeps and values the letter." },
    { id: "C", text: "The poem primarily catalogs nineteenth-century postal regulations rather than exploring grief.", is_correct: false, explanation: "Incorrect: the focus is emotional, not bureaucratic." },
    { id: "D", text: "The speaker has completely forgotten the addressee and no longer values the keepsake.", is_correct: false, explanation: "Incorrect: the letter is deliberately preserved." },
  ]);

  map.set("poetry-cid-medium-001", [
    { id: "A", text: "Beauty and resilience can flourish even within cramped, harsh living conditions.", is_correct: true, explanation: "Correct: plants on the fire escape embody grace amid hardship." },
    { id: "B", text: "Urban gardening remains too expensive for working families despite the poem's celebration of thrift.", is_correct: false, explanation: "Incorrect: the poem celebrates thrift and improvised growth." },
    { id: "C", text: "Official praise of tenements proves housing reform had already fully succeeded citywide.", is_correct: false, explanation: "Incorrect: thrift is others' praise; the speaker highlights quiet resistance." },
    { id: "D", text: "The speaker deeply regrets leaving the countryside for an unfamiliar rural farm.", is_correct: false, explanation: "Incorrect: no relocation or regret is mentioned." },
  ]);

  // COE quant — parallel two-metric sentences (~17–20 words)
  map.set("coe-quant-easy-001", [
    { id: "A", text: "Cedar Plot logged $22$ volunteer hours and harvested $840$ pounds, whereas Birch Yard logged $9$ hours and harvested only $410$ pounds.", is_correct: true, explanation: "Correct: compares a garden above the $15$-hour threshold with one below it, showing the higher-hour site produced a larger harvest." },
    { id: "B", text: "Maple Lot harvested $790$ pounds after $18$ volunteer hours, yet Cedar Plot logged $22$ hours without comparing either garden to Birch Yard's $9$ hours.", is_correct: false, explanation: "Both gardens exceed $15$ hours; the comparison does not test the threshold claim against a low-hour garden." },
    { id: "C", text: "Every garden harvested more than $400$ pounds of vegetables, a floor figure that does not link volunteer hours to productivity across sites.", is_correct: false, explanation: "Accurate but irrelevant: total harvest floors do not link volunteer hours to productivity." },
    { id: "D", text: "Birch Yard recorded the fewest volunteer hours of any garden, but the statement omits harvest totals needed to test the labor hypothesis.", is_correct: false, explanation: "States a ranking without connecting hours to harvest size relative to the $15$-hour cutoff." },
  ]);

  map.set("coe-quant-easy-002", [
    { id: "A", text: "Seedlings under $14$-hour days averaged $19.1$ cm, only $0.7$ cm taller than seedlings under $10$-hour days, comparing two groups that both meet the $10$-hour minimum.", is_correct: false, explanation: "Compares two groups that both meet the $10$-hour minimum; it does not contrast long and short days." },
    { id: "B", text: "Seedlings under $6$-hour days averaged $11.2$ cm, while seedlings under $10$-hour days averaged $18.4$ cm, contrasting below-threshold and at-threshold light exposure.", is_correct: true, explanation: "Correct: contrasts below-threshold ($6$ hours) with at-threshold ($10$ hours) light, showing greater height with longer exposure." },
    { id: "C", text: "Mean stem height increased from the $6$-hour condition to the $14$-hour condition overall, describing a trend without isolating the $10$-hour cutoff named in Lee's claim.", is_correct: false, explanation: "Describes an overall upward trend but does not isolate the $10$-hour cutoff named in the claim." },
    { id: "D", text: "The greatest mean stem height recorded in the trial was $19.1$ cm under $14$-hour days, citing a maximum without comparing sub-$10$-hour and $10$-plus-hour groups.", is_correct: false, explanation: "Reports the maximum value without comparing sub-$10$-hour and $10$-plus-hour groups." },
  ]);

  map.set("coe-quant-medium-002", [
    { id: "A", text: "In 2022, Fertilizer A increased yield by $10\\%$ while Fertilizer B increased yield by $14\\%$, supporting only one season rather than all three seasons collectively.", is_correct: false, explanation: "Supports only one season; the claim covers all three seasons collectively." },
    { id: "B", text: "In each season, Fertilizer B's percent yield increase exceeded Fertilizer A's increase, with $12>8$, $14>10$, and $13>9$ across successive growing seasons.", is_correct: true, explanation: "Correct: $12>8$, $14>10$, and $13>9$ in successive seasons, showing B's advantage throughout the trial." },
    { id: "C", text: "Fertilizer B produced at least a $12\\%$ yield increase in every season tested, a true floor for B alone that does not compare B against A as required.", is_correct: false, explanation: "True of B alone but does not compare B against A as the claim requires." },
    { id: "D", text: "Fertilizer A's yield increase rose from $8\\%$ in 2021 to $10\\%$ in 2022 before falling to $9\\%$ in 2023, tracking A's trend without establishing B's superior performance.", is_correct: false, explanation: "Describes A's internal trend without establishing B's superior performance." },
  ]);

  map.set("coe-quant-medium-003", [
    { id: "A", text: "Workers remote $5$ days per week reported a $+13\\%$ productivity change, the highest value in the chart, without contrasting that group against the $1$–$2$ day category.", is_correct: false, explanation: "Highlights one group without contrasting it against the $1$–$2$ day category." },
    { id: "B", text: "Workers remote $1$–$2$ days averaged a $+4\\%$ change, lower than any group working at least three remote days per week in Chen's survey.", is_correct: true, explanation: "Correct: $+11\\%$ and $+13\\%$ for the $\\geq 3$-day groups both exceed the $+4\\%$ gain among $1$–$2$ day workers." },
    { id: "C", text: "Productivity change increased as remote days rose from $1$–$2$ to $5$ per week, describing a monotonic trend without explicitly contrasting sub-three-day and three-plus-day groups.", is_correct: false, explanation: "Describes a monotonic trend but does not explicitly contrast sub-three-day and three-plus-day groups." },
    { id: "D", text: "Workers remote $3$–$4$ days reported an $+11\\%$ productivity change, reporting one above-threshold group without comparing it to the $1$–$2$ day baseline.", is_correct: false, explanation: "Reports one above-threshold group without comparing it to the $1$–$2$ day baseline." },
  ]);

  map.set("coe-quant-easy-003", [
    { id: "A", text: "Westport's unemployment rate was $4.2$ percent after adopting a $15$ minimum wage, compared with $6.8$ percent in Oakridge after its $11$ minimum wage.", is_correct: true, explanation: "Correct: directly pairs each city's wage level with its unemployment rate, showing the higher-wage city had lower unemployment." },
    { id: "B", text: "Oakridge's unemployment rate was $6.8$ percent one year after the wage change, but the figure is not paired with Westport's $4.2$ percent rate after its higher minimum wage.", is_correct: false, explanation: "Reports one city's rate without comparing it to Westport." },
    { id: "C", text: "Both cities set minimum wages above $10$ dollars per hour, a wage floor that is accurate yet does not address relative unemployment outcomes between Westport and Oakridge.", is_correct: false, explanation: "True wage fact that does not address relative unemployment outcomes." },
    { id: "D", text: "Westport adopted a higher minimum wage than Oakridge did, yet the policy difference alone is not linked to the two cities' unemployment percentages.", is_correct: false, explanation: "Restates policy difference without linking wages to unemployment rates." },
  ]);

  map.set("coe-quant-medium-001", [
    { id: "A", text: "In 2019, mean nitrate was $4.8$ mg/L while the native fish count was $120$, describing only the first year without a multi-year trend.", is_correct: false, explanation: "Describes only the first year and does not show co-occurring decline and recovery." },
    { id: "B", text: "From 2019 to 2022, mean nitrate fell from $4.8$ to $1.5$ mg/L while native fish counts rose from $120$ to $310$.", is_correct: true, explanation: "Correct: tracks both variables across the full restoration window, showing nitrate decline alongside fish recovery." },
    { id: "C", text: "Native fish counts exceeded $200$ in both 2021 and 2022, but those totals alone do not show nitrate levels declining over time.", is_correct: false, explanation: "Fish counts alone do not demonstrate that nitrate levels simultaneously declined." },
    { id: "D", text: "The lowest nitrate reading ($1.5$ mg/L) occurred in 2022, yet that minimum is not paired with rising fish populations across years.", is_correct: false, explanation: "Identifies the nitrate minimum without linking it to rising fish populations over time." },
  ]);

  map.set("coe-quant-hard-001", [
    { id: "A", text: "At pH $4.5$, Antibiotic M reduced colonies by $85\\%$ compared with $54\\%$ for Antibiotic N, whereas at pH $7.0$ Antibiotic N achieved $78\\%$ reduction versus $62\\%$ for Antibiotic M.", is_correct: true, explanation: "Correct: M leads under acidity while N leads at neutral pH, matching the conditional claim." },
    { id: "B", text: "Antibiotic M achieved $85\\%$ colony reduction under acidic conditions, the highest single value recorded, without showing N's $78\\%$ lead at neutral pH.", is_correct: false, explanation: "Cites M's best outcome without showing N's superiority at neutral pH." },
    { id: "C", text: "At pH $7.0$, both antibiotics reduced more than $60\\%$ of colonies, a shared threshold that does not identify which antibiotic performed better.", is_correct: false, explanation: "True at neutral pH but ignores which antibiotic performed better in each condition." },
    { id: "D", text: "Antibiotic N reduced colonies by $54\\%$ under acidic conditions, reporting N's result without establishing M's advantage there or N's lead at pH $7.0$.", is_correct: false, explanation: "Reports N's acidic result without establishing M's advantage there or N's lead at pH $7.0$." },
  ]);

  map.set("coe-quant-hard-002", [
    { id: "A", text: "At $10^\\circ\\text{C}$ and $72\\%$ humidity, the filter absorbed $6.8$ g/hr—the table's highest rate—while at $10^\\circ\\text{C}$ and $45\\%$ humidity absorption fell to $2.1$ g/hr; at $28^\\circ\\text{C}$ both humidity levels yielded lower peaks ($5.4$ and $5.9$ g/hr).", is_correct: true, explanation: "Correct: low temperature peaks only under high humidity and does not dominate when humidity is low or temperature is high." },
    { id: "B", text: "Absorption increased from $2.1$ to $6.8$ g/hr when humidity rose at $10^\\circ\\text{C}$, showing humidity's effect at one temperature without comparing the two $28^\\circ\\text{C}$ rows that also appear in the table.", is_correct: false, explanation: "Shows humidity's effect at low temperature but omits comparison with $28^\\circ\\text{C}$ rows." },
    { id: "C", text: "At $28^\\circ\\text{C}$, absorption was $5.9$ g/hr under $72$ percent humidity, reporting one warm humid cell without establishing that low temperature wins only above $60$ percent humidity.", is_correct: false, explanation: "Reports one warm, humid cell without establishing that low temperature wins only above $60\\%$ humidity." },
    { id: "D", text: "The filter absorbed more than $5$ g/hr in three of the four test conditions, counting high-output runs without linking the table maximum to the temperature–humidity interaction the engineers described.", is_correct: false, explanation: "Counts high-output runs without linking the maximum to the temperature–humidity interaction." },
  ]);

  map.set("coe-quant-hard-003", [
    { id: "A", text: "Manufacturing exports grew $+8.2\\%$ while manufacturing imports grew only $+3.1\\%$, but in services imports grew $+6.7\\%$ while exports grew $+4.5\\%$.", is_correct: true, explanation: "Correct: exports beat imports in manufacturing while the opposite holds in services." },
    { id: "B", text: "Manufacturing export growth ($+8.2\\%$) was the highest percentage in the table, yet the figure is not compared with manufacturing imports or services rows.", is_correct: false, explanation: "Identifies the largest export figure without comparing imports within each sector." },
    { id: "C", text: "Service-sector imports grew $+6.7\\%$, exceeding service exports at $+4.5\\%$, supporting only the services half of the analysts' two-sector claim.", is_correct: false, explanation: "Supports only the services half of the claim and omits manufacturing." },
    { id: "D", text: "Both sectors recorded positive export growth after the tariff adjustment, a directional fact that does not compare export and import growth within sectors.", is_correct: false, explanation: "True directional fact that does not compare export and import growth within either sector." },
  ]);

  // SYN — expand distractors to ~28–32 words
  map.set("syn-easy-001", [
    { id: "A", text: "After studying under Franz Boas, Hurston collected folk tales in Eatonville and later shaped Their Eyes Were Watching God with dialogue echoing the oral rhythms she had recorded.", is_correct: true, explanation: "Synthesizes fieldwork and novel to show folklore informing literary storytelling." },
    { id: "B", text: "Hurston's contemporaries agreed unanimously that she should write only political protest fiction rather than folklore-based storytelling, misreading the notes as claiming universal agreement among all critics.", is_correct: false, explanation: "Misstates the notes: some criticized her, but agreement is not claimed." },
    { id: "C", text: "Their Eyes Were Watching God was published years before Hurston entered Barnard College to study under Franz Boas, reversing the implied sequence of study, fieldwork, and publication in the notes.", is_correct: false, explanation: "Imports an unsupported chronology reversal." },
    { id: "D", text: "Franz Boas wrote the dialogue in Their Eyes Were Watching God using Eatonville folk tales he collected himself, assigning authorship to Boas without support from the student's notes.", is_correct: false, explanation: "Boas was her teacher; the notes credit Hurston's novel." },
  ]);

  map.set("syn-easy-002", [
    { id: "A", text: "Marine biologist Rachel Carson's 1962 book Silent Spring warned that pesticides such as DDT accumulate in food chains, threatening wildlife and human health.", is_correct: true, explanation: "Introduces author, title, date, and central warning using note facts." },
    { id: "B", text: "Silent Spring proved that pesticides never affect human health when applied correctly, directly contradicting Carson's documented warnings about DDT accumulation and ecological harm in the notes.", is_correct: false, explanation: "Contradicts the book's warning about health harms." },
    { id: "C", text: "Carson focused exclusively on oceanography and never discussed land animals or terrestrial food chains, ignoring the notes' emphasis on wildlife and pesticide accumulation broadly.", is_correct: false, explanation: "Notes mention wildlife broadly and food chains, not oceans only." },
    { id: "D", text: "Policymakers banned every agricultural chemical before Carson began writing Silent Spring, inventing a regulatory timeline that the student's notes do not describe or support.", is_correct: false, explanation: "Carson urged weighing risks; no preemptive ban is stated." },
  ]);

  map.set("syn-medium-001", [
    { id: "A", text: "As characters offer contradictory accounts of the samurai's death, Kurosawa's leaf-filtered sunlight casts shifting light and shadow, visualizing how hard it is to fix a single truthful narrative.", is_correct: true, explanation: "Links contradictory testimony to lighting that mirrors moral uncertainty." },
    { id: "B", text: "Kurosawa used constant studio lighting throughout Rashomon to emphasize that one witness tells the complete truth, contradicting the notes' description of shifting natural sunlight.", is_correct: false, explanation: "Contradicts shifting natural light described in the notes." },
    { id: "C", text: "The film's Academy Award in 1952 proves which account of the samurai's death is historically accurate, importing award logic irrelevant to narrative truth within the story.", is_correct: false, explanation: "An award does not establish narrative truth within the story." },
    { id: "D", text: "Akutagawa directed Rashomon and personally chose the weather patterns on set, misidentifying Kurosawa as director despite the notes crediting Akutagawa only as source author.", is_correct: false, explanation: "Akutagawa wrote source stories; Kurosawa directed." },
  ]);

  map.set("syn-medium-002", [
    { id: "A", text: "The ship burial—with sledges, tools, animals, and a vessel meant for journey—suggests Vikings supplied the dead with provisions for an afterlife voyage.", is_correct: true, explanation: "Synthesizes goods and ship imagery to state the afterlife belief." },
    { id: "B", text: "Because archaeologists dismantled the Oseberg ship before burial, Vikings rejected seafaring metaphors for death, contradicting the notes describing an intact vessel beneath a turf mound.", is_correct: false, explanation: "The notes say the ship was intact, supporting the voyage metaphor." },
    { id: "C", text: "Serpent carvings on the ship prove the buried women were merchants trading exclusively with southern Europe, overreading decorative motifs into unsupported commercial history.", is_correct: false, explanation: "Imports an unsupported commercial claim from decorative motifs." },
    { id: "D", text: "Farm tools were included solely to record agricultural tax rates in ninth-century Norway, reframing ritual grave goods as bureaucratic records rather than afterlife provisions.", is_correct: false, explanation: "Tools are interpreted as afterlife provisions, not tax records." },
  ]);

  map.set("syn-hard-001", [
    { id: "A", text: "The Phase 1 trial reported fewer sickle-cell crises after somatic edits boosted fetal hemoglobin, yet ethicists stress that inheritable germline changes stay banned and decades of follow-up are needed to monitor off-target effects.", is_correct: true, explanation: "Balances therapeutic promise with germline ethics and follow-up caveat." },
    { id: "B", text: "Because germline edits are banned in most countries, the Phase 1 trial could not reduce patient crises or edit any blood stem cells, confusing somatic success with the separate germline prohibition.", is_correct: false, explanation: "Confuses the somatic success with the separate germline prohibition." },
    { id: "C", text: "Chemotherapy was optional before infusion and independent ethicists endorsed immediate germline editing for all participants, contradicting required marrow clearing and germline warnings in the notes.", is_correct: false, explanation: "Contradicts required chemotherapy and germline warnings." },
    { id: "D", text: "Short-term Phase 1 results alone prove off-target genetic risks will never appear in follow-up studies, opposing the authors' explicit call for decades of continued monitoring.", is_correct: false, explanation: "Opposes the authors' call for decades of follow-up." },
  ]);

  map.set("syn-hard-002", [
    { id: "A", text: "Du Bois argued that African Americans experience a politically imposed two-ness, perceiving themselves both through their own eyes and through others' contempt—a tension he tied to the fight for recognition after Reconstruction.", is_correct: true, explanation: "Defines double consciousness as internal and external perception in political tension." },
    { id: "B", text: "Du Bois claimed double consciousness means African Americans always agree with outside observers about their identity, collapsing the tension between self-perception and imposed contempt described in the notes.", is_correct: false, explanation: "The notes stress tension between views, not agreement." },
    { id: "C", text: "The concept of double consciousness appeared only in late-twentieth-century intersectionality theory rather than in Du Bois's 1903 Souls of Black Folk, misdating the term's origin in the notes.", is_correct: false, explanation: "Du Bois introduced it in 1903; later scholars built on it." },
    { id: "D", text: "Du Bois described double consciousness as a purely medical diagnosis unrelated to democratic politics, ignoring the notes linking the idea to recognition struggles after Reconstruction.", is_correct: false, explanation: "Notes link the idea to democratic recognition, not clinical pathology alone." },
  ]);

  return map;
}

function wordSpreadPct(lens) {
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
  return avg > 0 ? Math.round(1000 * (max - min) / avg) / 10 : 0;
}

function charSpreadPct(options) {
  const lens = options.map((o) => charLen(o.text));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function measureOptions(options) {
  const wordLens = options.map((o) => optionWordCount(o.text));
  return {
    word_lens: wordLens,
    word_spread_pct: wordSpreadPct(wordLens),
    char_spread_pct: charSpreadPct(options),
  };
}

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return null;
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
    if (url.includes(PROJECT_ID)) {
      return cfg?.env?.POSTGRES_URL_NON_POOLING?.trim() || cfg?.env?.POSTGRES_URL?.trim() || null;
    }
  }
  return null;
}

async function pgQuery(query, params = []) {
  const { default: pg } = await import("pg");
  const client = new pg.Client({
    connectionString: getDatabaseUrl(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return params.length ? await client.query(query, params) : await client.query(query);
  } finally {
    await client.end();
  }
}

function rowToQuestion(row) {
  return {
    question_text: row.question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type,
    options: row.options,
    correct_answer: row.correct_answer,
    explanation: row.explanation,
    difficulty: row.difficulty,
    skill_id: row.skill_id,
    rw_subtype: row.source_metadata?.rw_subtype ?? row.rw_subtype,
    rw_format: row.source_metadata?.rw_format,
    source_metadata: row.source_metadata,
    dsat_blueprint_v1: row.source_metadata?.dsat_blueprint_v1 === true,
  };
}

function mergeOptions(existing, patched) {
  return patched.map((p) => {
    const old = existing.find((o) => o.id === p.id) ?? {};
    return {
      id: p.id,
      text: p.text,
      is_correct: p.is_correct,
      explanation: p.explanation ?? old.explanation ?? "",
    };
  });
}

async function main() {
  if (!existsSync(RESEARCH)) {
    console.error("Missing research file:", RESEARCH);
    process.exit(1);
  }

  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — configure Supabase MCP in ~/.cursor/mcp.json");
    process.exit(1);
  }

  mkdirSync(resolve("scripts/data"), { recursive: true });

  const placeholders = PRIORITY_EXTERNAL_IDS.map((_, i) => `$${i + 1}`).join(",");
  const { rows } = await pgQuery(
    `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
            explanation, difficulty, skill_id, source_metadata
     FROM questions
     WHERE external_id IN (${placeholders})`,
    PRIORITY_EXTERNAL_IDS,
  );

  const byExt = new Map(rows.map((r) => [r.external_id, r]));
  const results = [];
  const updates = [];

  for (const externalId of PRIORITY_EXTERNAL_IDS) {
    const row = byExt.get(externalId);
    if (!row) {
      results.push({ external_id: externalId, status: "missing" });
      continue;
    }

    const patch = HAND_PATCHES.get(externalId);
    if (!patch) {
      results.push({ external_id: externalId, status: "no_patch", id: row.id });
      continue;
    }

    const before = measureOptions(row.options);
    const newOptions = mergeOptions(row.options, patch);
    const after = measureOptions(newOptions);

    const updatedRow = { ...row, options: newOptions };
    const v = validateDsatRwQuestion(rowToQuestion(updatedRow));
    const vBefore = validateDsatRwQuestion(rowToQuestion(row));
    const blockingReasons = v.reasons.filter((r) => !r.startsWith("passage_word_count"));
    const preExistingPassage =
      v.reasons.some((r) => r.startsWith("passage_word_count")) &&
      vBefore.reasons.some((r) => r.startsWith("passage_word_count"));

    const entry = {
      id: row.id,
      external_id: externalId,
      rw_subtype: row.source_metadata?.rw_subtype,
      before,
      after,
      validation: v,
      pre_existing_passage_issue: preExistingPassage,
    };

    if (blockingReasons.length > 0) {
      entry.status = "validation_fail";
      results.push(entry);
      console.error(`FAIL ${externalId}: ${blockingReasons.join(", ")}`);
      continue;
    }

    if (after.word_spread_pct > 25 && after.char_spread_pct > 30) {
      entry.status = "still_high_spread";
    } else {
      entry.status = "ok";
    }

    results.push(entry);
    updates.push({ id: row.id, external_id: externalId, options: newOptions });
  }

  const okCount = results.filter((r) => r.status === "ok").length;
  console.log(`Prepared ${updates.length} updates; ${okCount} within parity targets`);

  if (apply && updates.length) {
    appendFileSync(LOG, `\n# apply ${new Date().toISOString()}\n`);
    for (const u of updates) {
      const optsJson = JSON.stringify(u.options);
      await pgQuery(
        `UPDATE questions SET options = $1::jsonb, updated_at = now() WHERE id = $2`,
        [optsJson, u.id],
      );
      appendFileSync(LOG, `OK ${u.external_id} ${u.id}\n`);
      console.log(`Applied ${u.external_id}`);
    }
  } else if (dryRun) {
    console.log("Dry run — pass --apply to write to prod");
  }

  writeFileSync(
    OUT,
    JSON.stringify(
      {
        generated_at: new Date().toISOString(),
        mode: apply ? "apply" : "dry-run",
        priority_count: PRIORITY_EXTERNAL_IDS.length,
        updated_count: apply ? updates.length : 0,
        results,
      },
      null,
      2,
    ),
  );
  console.log(`Wrote ${OUT}`);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
