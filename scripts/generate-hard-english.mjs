#!/usr/bin/env node
/**
 * Generate / upgrade 500 SAT RW hard questions (scholaris_ai inserts + medium→hard upgrades).
 * Template-based — no Gemini. Passages 180–250 words, tier-2/3 vocab, full-sentence choices,
 * multi-sentence explanations, TRA hard uses participial/clausal transitions.
 * WARNING: do not set --target-hard above remaining medium pool — use rebalance-english-medium.mjs
 * to restore medium tier after a hard push (see skills.md).
 *
 *   node scripts/generate-hard-english.mjs --use-mcp --fetch-json scripts/data/hard-english-input.json --output-sql scripts/data/hard-english.sql
 *   node scripts/chunk-sql.mjs scripts/data/hard-english.sql 8 scripts/data/hard-english-chunks
 *   node scripts/generate-hard-english.mjs --build-mega scripts/data/hard-english-chunks scripts/data/hard-english-mega 35
 *   node scripts/apply-mega-execute-sql.mjs scripts/data/hard-english-mega 1000
 */

import { createHash, randomUUID } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from "node:fs";
import { dirname, resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import { createClient } from "@supabase/supabase-js";
import { generateRwQuestion, metadataFromQuestion } from "./lib/english-rw-templates.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const UPGRADE_VERSION = "hard_content_v2";
const TARGET_HARD = 500;

const RW_SKILLS = ["CID", "COE", "INF", "CTC", "TSP", "WIC", "SYN", "TRA", "BOU", "FSS"];

const SKILLS = {
  CID: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Central Ideas and Details" },
  COE: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Command of Evidence" },
  INF: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Inferences" },
  CTC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Cross-Text Connections" },
  TSP: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Text Structure and Purpose" },
  WIC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Words in Context" },
  SYN: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Rhetorical Synthesis" },
  TRA: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Transitions" },
  BOU: { section: "reading_writing", topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Boundaries" },
  FSS: { section: "reading_writing", topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Form, Structure, and Sense" },
};

/** Tier-2/3 SAT vocabulary for hard WIC */
const TIER23_WORDS = [
  "equivocal", "perfunctory", "sanguine", "obfuscate", "laconic",
  "ephemeral", "intransigent", "profligate", "surreptitious", "veracious",
  "abstruse", "capricious", "didactic", "fastidious", "garrulous",
  "iconoclast", "juxtapose", "kinetic", "languid", "malleable",
];

/** 180–250 word hard passages */
const HARD_PASSAGES = [
  (n) =>
    `Marine biologists studying reef ecosystem ${n} documented that sustained parrotfish grazing suppresses macroalgal proliferation, thereby preserving bare substrate where coral larvae can settle and metamorphose. When herbivore biomass declined after localized overfishing, algal mats advanced within a single season, converting structurally complex reef habitat into a homogenous green veneer that offered little refuge for juvenile fish. The research team tracked grazing intensity across three annual cycles and compared recruitment rates at sites where parrotfish populations had been depleted versus sites where no-take reserves protected them. At depleted sites, coral recruitment—the attachment and survival of free-floating planulae—fell sharply even when temperature, salinity, and nutrient profiles remained within historical norms. Follow-up transects showed that small patches of exposed rock reappeared only where grazing returned to pre-disturbance levels. The authors contend that protecting herbivorous fish is not an aesthetic conservation preference but a functional prerequisite for reef recovery after bleaching events and storm damage.`,
  (n) =>
    `Historians reconstructing trade route ${n} emphasize that camel caravans transported not only commodities but also astronomical tables, medical treatises, and navigational techniques across desert corridors long before printed cartography existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and successive travelers appended marginal annotations that preserved empirical corrections across generations. A ledger recovered near waypoint ${n} records caravan leaders, departure dates, and the scientific manuscripts exchanged at each oasis, suggesting that commerce and scholarship advanced in tandem rather than as separate spheres. When one city-state imposed punitive tariffs, caravans rerouted through secondary wells, and the intellectual networks rerouted with them. Modern scholars therefore treat these desert arteries as early information highways whose reliability depended on reciprocity among communities that rarely shared a written vernacular. The passage underscores how practical navigation imperatives drove the circulation of technical knowledge among traders whose primary motive was profit rather than pedagogy.`,
  (n) =>
    `In her essay on urban soundscapes, writer ${n} contends that city planners should classify chronic noise pollution as a public-health hazard, citing longitudinal studies linking traffic noise to elevated cortisol, fragmented sleep, and diminished cognitive performance among residents. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours daily, leaving inhabitants with interrupted rest even when particulate counts meet regulatory thresholds. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work, heightened irritability at home, and reluctance to open windows despite heat. The writer contrasts cosmetic beautification projects—planters, murals, and repainted facades—with measurable acoustic interventions such as berms, low-noise pavement, delivery-time restrictions, and targeted speed reductions. She acknowledges that absolute silence is unattainable in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest gains in accessible green space. The essay concludes that sound belongs in municipal planning budgets alongside air quality and light pollution.`,
  (n) =>
    `Economists analyzing market disruption ${n} observed that independent retailers adapted more nimbly than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days rather than awaiting centralized distribution. While big-box stores waited for corporate approval to alter procurement contracts, corner shops consulted handwritten contact lists and shifted product mix toward shelf-stable goods and services independent of overseas shipping. The economists interviewed owners who renegotiated credit terms with regional suppliers and temporarily expanded delivery radius to retain customers. National chains, bound to uniform pricing algorithms and national vendor agreements, could not pivot without multi-week executive review cycles. The study does not claim small stores universally outperform conglomerates; rather, it demonstrates that organizational flexibility and embedded local relationships became decisive when long-distance logistics failed abruptly. Readers should infer that scale economies can become liabilities during sudden disruptions that reward improvisation over standardized efficiency.`,
  (n) =>
    `Archaeologists at site ${n} discovered pottery shards bearing residue consistent with fermented grain, suggesting the community brewed beverages for ritual gatherings rather than quotidian consumption. Stratigraphic analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and adjacent hearths showed feasting debris concentrated on solstice dates. Chemical assays identified compounds associated with controlled fermentation but not with large-scale storage for daily meals. The team compared these findings with neighboring settlements where grain storage pits dominated the archaeological record. That contrast supports the interpretation that brewing here marked calendrical occasions and social bonding rather than routine nutrition. The passage invites readers to connect material evidence with inferred cultural practice while acknowledging uncertainty about specific recipes, vessel types, and the social status of participants. Scientific caution prevents the authors from claiming certainty beyond what residue analysis and spatial context jointly support.`,
  (n) =>
    `Psychologists evaluating memory protocol ${n} reported that participants who slept eight hours recalled word lists more accurately than those who remained awake, even when both groups studied identical material for the same duration. The awake cohort was monitored in a quiet lounge with books and puzzles to prevent napping, yet their recall lagged on both immediate and delayed tests administered twenty-four hours later. Brain-imaging subsamples showed differential hippocampal activation during retrieval, aligning with theories that sleep consolidates declarative memories through synaptic reorganization. The researchers caution that the study measured short lists under laboratory conditions and may not generalize to complex real-world learning such as foreign-language acquisition or procedural skills. Still, the controlled comparison isolates sleep as the critical variable because study time, list difficulty, and initial exposure were matched across conditions. The passage presents sleep as an active cognitive process with measurable downstream effects on recall rather than passive rest devoid of neurological consequence.`,
  (n) =>
    `Engineers prototyping turbine ${n} demonstrated that tubercle-inspired blade geometry harvests more energy from low wind speeds than conventional flat profiles, a design directly modeled on humpback whale fin morphology. Standard blades stall when airflow separates prematurely, wasting kinetic energy that never reaches the generator hub. The prototype's leading-edge ridges delay separation, maintaining lift across wind speeds common in residential installations where utility-scale turbines underperform economically. Wind-tunnel tests documented a twelve-percent efficiency gain at moderate speeds without exceeding local noise ordinances during overnight monitoring. The engineers note that biomimicry here is not decorative branding but an engineering response to a performance bottleneck limiting small-scale renewable adoption among homeowners skeptical of upfront capital costs. The passage progresses from biological observation through mechanical testing to a practical deployment implication for distributed energy markets.`,
  (n) =>
    `Educators reviewing literacy intervention ${n} concluded that students who engaged in structured pair discussion improved comprehension scores more than peers who completed silent worksheets covering identical texts. Teachers in discussion classrooms reported that students cited textual evidence when disagreeing—a behavior rarely observed during worksheet completion even when prompts requested quotations. Standardized pre- and post-tests showed a twelve-point average gain for the discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit on informational nonfiction. The educators emphasize that discussion prompts were scripted rather than unstructured chat: each partner had to cite a line, paraphrase a counterargument, and reconcile conflicting interpretations before moving on. They argue that collaborative talk externalizes comprehension strategies weaker readers otherwise keep invisible, making metacognitive moves available for teacher feedback. The passage supports structured peer dialogue as an instructional lever complementary to, rather than substituting for, independent silent reading.`,
];

const HARD_TRA_CONTRAST = [
  "Blurring the sharp contrast the passage has drawn,",
  "Complicating the binary the author has established,",
  "Undermining the neat separation outlined above,",
  "Qualifying the sweeping claim made in the prior sentence,",
  "Interrupting the linear narrative the author has been building,",
];

const HARD_TRA_CAUSE = [
  "Drawing the logical consequence from the evidence just presented,",
  "Extending the causal chain the author has begun to trace,",
  "Building directly on the mechanism described above,",
  "Translating the prior observation into a broader principle,",
];

const HARD_TRA_ADDITION = [
  "Extending the author's line of reasoning further,",
  "Reinforcing the cumulative case the passage has assembled,",
  "Adding a parallel example that deepens the same point,",
  "Layering another strand of support onto the central claim,",
];

const HARD_TRA_EXAMPLE = [
  "Illustrating the abstract claim with a concrete case,",
  "Grounding the general statement in a specific instance,",
  "Making tangible the principle introduced above,",
];

const SIMPLE_TRANSITION_MAP = {
  however: "contrast", nevertheless: "contrast", nonetheless: "contrast",
  yet: "contrast", still: "contrast", "in contrast": "contrast", conversely: "contrast",
  therefore: "cause", thus: "cause", consequently: "cause", hence: "cause", accordingly: "cause",
  similarly: "addition", likewise: "addition", moreover: "addition", furthermore: "addition",
  additionally: "addition", "in addition": "addition",
  "for example": "example", "for instance": "example", specifically: "example", notably: "example",
  meanwhile: "contrast",
};

function parseArgs() {
  const f = {
    outputSql: null, inputJson: null, fetchJson: null, useMcp: false,
    dryRun: false, limit: Infinity, targetHard: TARGET_HARD,
    buildMega: null, megaOut: null, megaSize: 35,
  };
  const argv = process.argv.slice(2);
  if (argv[0] === "--build-mega") {
    f.buildMega = argv[1];
    f.megaOut = argv[2];
    f.megaSize = Number(argv[3] ?? 35);
    return f;
  }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--input-json") f.inputJson = argv[++i];
    else if (a === "--fetch-json") f.fetchJson = argv[++i];
    else if (a === "--use-mcp") f.useMcp = true;
    else if (a === "--dry-run") f.dryRun = true;
    else if (a === "--limit") f.limit = Number(argv[++i]);
    else if (a === "--target-hard") f.targetHard = Number(argv[++i]);
  }
  return f;
}

function loadEnv() {
  try {
    const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
    const env = {};
    for (const line of raw.split("\n")) {
      const m = line.match(/^([^#=]+)=(.*)$/);
      if (m) env[m[1].trim()] = m[2].trim().replace(/^["']|["']$/g, "");
    }
    return env;
  } catch {
    return {};
  }
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function seedFromId(id) {
  return parseInt(createHash("sha256").update(id).digest("hex").slice(0, 8), 16);
}

function mkOpts(correctId, texts, expls) {
  return ["A", "B", "C", "D"].map((id, i) => ({
    id,
    text: texts[i],
    is_correct: id === correctId,
    explanation: expls[i],
  }));
}

function hardPassage(n) {
  return HARD_PASSAGES[n % HARD_PASSAGES.length](n + 1);
}

function wordCount(text) {
  return text ? text.trim().split(/\s+/).filter(Boolean).length : 0;
}

function charLen(text) {
  return text ? String(text).length : 0;
}

function transitionKind(text) {
  const key = String(text ?? "").trim().toLowerCase().replace(/[.,;:!?]+$/, "");
  return SIMPLE_TRANSITION_MAP[key] ?? "contrast";
}

function hardTraPool(kind) {
  if (kind === "cause") return HARD_TRA_CAUSE;
  if (kind === "addition") return HARD_TRA_ADDITION;
  if (kind === "example") return HARD_TRA_EXAMPLE;
  return HARD_TRA_CONTRAST;
}

function longTraOptions(correctId, correctText, n) {
  const kind = transitionKind(correctText);
  const pool = hardTraPool(kind);
  const correct = pool[n % pool.length];
  const others = [...HARD_TRA_CONTRAST, ...HARD_TRA_CAUSE, ...HARD_TRA_ADDITION, ...HARD_TRA_EXAMPLE].filter((p) => p !== correct);
  const distractors = [];
  for (let i = 0; distractors.length < 3; i++) {
    const d = others[(n + i * 3) % others.length];
    if (!distractors.includes(d)) distractors.push(d);
  }
  const texts = [correct, ...distractors];
  const order = ["A", "B", "C", "D"];
  const correctIdx = order.indexOf(correctId);
  const rotated = order.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  const expls = rotated.map((t, i) => {
    const id = order[i];
    if (id === correctId) {
      return `${t} This participial phrase matches the rhetorical relationship between the two clauses: it signals ${kind} while preserving sentence grammar. Hard Digital SAT transition items expect syntactic embedding rather than a bare adverb. The following clause must read as a grammatically complete continuation.`;
    }
    const wrongKind = transitionKind(t.replace(/,.+$/, ""));
    return `${t} This phrase suggests ${wrongKind}, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge between contrasting trial outcomes.`;
  });
  return mkOpts(correctId, rotated, expls);
}

function hardExplanation(main, correctId, options, stimulus) {
  const correct = options.find((o) => o.id === correctId)?.text ?? "";
  const snippet = stimulus ? stimulus.replace(/\s+/g, " ").trim().slice(0, 100) : "";
  const parts = [main.endsWith(".") ? main : `${main}.`];
  if (snippet) {
    parts.push(`The passage anchors the correct choice in language such as "${snippet}…", which eliminates options that contradict or overreach that evidence.`);
  }
  parts.push(`Choice ${correctId} is correct because it aligns with the textual logic: ${String(correct).slice(0, 120)}${correct.length > 120 ? "…" : ""}.`);
  parts.push("Each incorrect option either contradicts an explicit detail, imports information absent from the stimulus, or answers a different question than the stem asks.");
  parts.push("On hard Digital SAT items, the best answer synthesizes multiple sentences rather than matching a single keyword in isolation.");
  return parts.join(" ");
}

/** Hard RW template generator — always difficulty hard */
function generateHardOne(skill, index) {
  const q = generateRwQuestion(skill, "hard", index);
  const { rw_subtype, rw_format, ...rest } = q;
  return rest;
}

function normalizeOptions(raw) {
  if (!Array.isArray(raw)) return [];
  return raw.map((o, i) => ({
    id: String(o.id ?? ["A", "B", "C", "D"][i] ?? "A"),
    text: String(o.text ?? ""),
    is_correct: Boolean(o.is_correct),
    explanation: typeof o.explanation === "string" ? o.explanation : "",
  }));
}

function mergeMetadata(existing, priorDifficulty, rwMeta = {}) {
  return {
    ...(existing ?? {}),
    ...rwMeta,
    [UPGRADE_VERSION]: true,
    hard_content_upgraded_at: new Date().toISOString(),
    hard_content_upgrade_method: "generate-hard-english.mjs",
    prior_difficulty: priorDifficulty ?? "medium",
  };
}

function insertMetadata() {
  return {
    generator: "hard_content_v2",
    original: true,
    explanation_v2: true,
    [UPGRADE_VERSION]: true,
  };
}

function upgradeRow(row, cellIndex) {
  const skill = row.skill_id;
  if (!RW_SKILLS.includes(skill)) return null;
  const n = cellIndex ?? seedFromId(row.id) % 1000;
  const raw = generateRwQuestion(skill, "hard", n);
  const { rw_subtype, rw_format, ...q } = raw;
  const rwMeta = metadataFromQuestion(raw);
  return {
    stimulus_text: q.stimulus_text,
    stimulus_type: q.stimulus_type ?? row.stimulus_type ?? null,
    question_text: q.question_text,
    options: q.options,
    correct_answer: q.correct_answer,
    explanation: q.explanation,
    difficulty: "hard",
    rwMeta,
  };
}

function updateSql(id, upgraded, sourceMetadata, priorDifficulty, rwMeta = {}) {
  const metaJson = JSON.stringify(mergeMetadata(sourceMetadata, priorDifficulty, rwMeta)).replace(/'/g, "''");
  const optsJson = JSON.stringify(upgraded.options).replace(/'/g, "''");
  return `UPDATE public.questions SET
  stimulus_text = ${sqlEscape(upgraded.stimulus_text)},
  question_text = ${sqlEscape(upgraded.question_text)},
  stimulus_type = ${sqlEscape(upgraded.stimulus_type ?? null)},
  options = '${optsJson}'::jsonb,
  correct_answer = ${sqlEscape(upgraded.correct_answer)},
  explanation = ${sqlEscape(upgraded.explanation)},
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '${metaJson}'::jsonb,
  updated_at = now()
WHERE id = ${sqlEscape(id)};`;
}

function rowForInsert(skill, index) {
  const q = generateHardOne(skill, index + 5000);
  const meta = SKILLS[skill];
  return {
    id: randomUUID(),
    question_text: q.question_text,
    stimulus_text: q.stimulus_text,
    stimulus_type: q.stimulus_type,
    options: q.options,
    correct_answer: q.correct_answer,
    explanation: q.explanation,
    hint: null,
    topic: meta.topic,
    subtopic: meta.subtopic,
    section: meta.section,
    domain_id: meta.domain_id,
    skill_id: skill,
    math_skill_code: null,
    difficulty: "hard",
    calculator_allowed: false,
    exam_type: "SAT",
    question_type: "multiple_choice",
    is_platform_question: true,
    ai_generated: true,
    source: "scholaris_ai",
    source_metadata: insertMetadata(),
  };
}

function insertSql(rows) {
  const lines = [];
  for (const r of rows) {
    lines.push(`INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(r.id)}, ${sqlEscape(r.question_text)}, ${sqlEscape(r.stimulus_text)}, ${sqlEscape(r.stimulus_type)}, '${JSON.stringify(r.options).replace(/'/g, "''")}'::jsonb, ${sqlEscape(r.correct_answer)}, ${sqlEscape(r.explanation)}, ${sqlEscape(r.hint)}, ${sqlEscape(r.topic)}, ${sqlEscape(r.subtopic)}, ${sqlEscape(r.section)}, ${sqlEscape(r.domain_id)}, ${sqlEscape(r.skill_id)}, NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${JSON.stringify(r.source_metadata).replace(/'/g, "''")}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`);
  }
  return lines.join("\n");
}

function buildCellIndexMap(rows) {
  const counters = new Map();
  const map = new Map();
  for (const row of rows) {
    const key = `${row.skill_id}:${row.source ?? "unknown"}`;
    const idx = counters.get(key) ?? 0;
    counters.set(key, idx + 1);
    map.set(row.id, idx);
  }
  return map;
}

function distributeInserts(gap) {
  const plan = [];
  const perSkill = Math.floor(gap / RW_SKILLS.length);
  let remainder = gap - perSkill * RW_SKILLS.length;
  for (const skill of RW_SKILLS) {
    const need = perSkill + (remainder > 0 ? 1 : 0);
    if (remainder > 0) remainder--;
    for (let i = 0; i < need; i++) plan.push({ skill, index: i });
  }
  return plan;
}

function buildMegaFromChunks(chunkDir, outDir, stmtsPerMega) {
  const files = readdirSync(chunkDir)
    .filter((f) => f.startsWith("chunk-") && f.endsWith(".sql"))
    .sort();
  const stmts = [];
  for (const f of files) {
    const sql = readFileSync(join(chunkDir, f), "utf8");
    const parts = sql
      .split(/\n(?=(?:INSERT|UPDATE))/i)
      .filter((s) => /^(INSERT|UPDATE)/i.test(s.trim()))
      .map((p) => p.trim().replace(/\nCOMMIT;?\s*$/i, "").replace(/^BEGIN;?\s*\n?/i, ""));
    stmts.push(...parts);
  }
  mkdirSync(outDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += stmtsPerMega) {
    const batch = stmts.slice(i, i + stmtsPerMega);
    writeFileSync(join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`), "BEGIN;\n" + batch.join("\n") + "\nCOMMIT;\n");
    megaIdx++;
  }
  return { megaFiles: megaIdx, statements: stmts.length };
}

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

async function mcpExecuteSql(query) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");
  return new Promise((resolve, reject) => {
    const proc = spawn("npx", ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID], {
      env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
      stdio: ["pipe", "pipe", "pipe"],
    });
    let msgId = 1;
    let buf = "";
    const pending = new Map();
    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };
    proc.stdout.on("data", (chunk) => {
      buf += chunk.toString();
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const line of lines) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            if (msg.error) rej(new Error(JSON.stringify(msg.error)));
            else res(msg.result);
          }
        } catch { /* ignore */ }
      }
    });
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "hard-english-fetch", version: "1.0.0" } });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: "execute_sql", arguments: { project_id: PROJECT_ID, query } });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

async function fetchMediumRowsViaMcp(limit) {
  const rows = [];
  let offset = 0;
  const pageSize = 200;
  while (rows.length < limit) {
    const query = `SELECT id, source, skill_id, difficulty, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, source_metadata, created_at
FROM public.questions
WHERE exam_type='SAT' AND is_platform_question=true AND section='reading_writing' AND difficulty='medium'
ORDER BY source, skill_id, created_at
LIMIT ${pageSize} OFFSET ${offset};`;
    const result = await mcpExecuteSql(query);
    let batch = [];
    try {
      const content = result?.content?.[0]?.text;
      if (content) {
        const parsed = JSON.parse(content);
        batch = Array.isArray(parsed) ? parsed : [];
      }
    } catch {
      batch = [];
    }
    if (!batch.length) break;
    rows.push(...batch);
    if (batch.length < pageSize) break;
    offset += pageSize;
  }
  return rows.slice(0, limit);
}

async function fetchMediumRowsSupabase(limit) {
  const env = { ...process.env, ...loadEnv() };
  const url = env.NEXT_PUBLIC_SUPABASE_URL;
  const key = env.SUPABASE_SERVICE_ROLE_KEY ?? env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
  if (!url || !key) throw new Error("Need Supabase credentials or --use-mcp / --input-json");
  const supabase = createClient(url, key);
  const rows = [];
  let from = 0;
  while (rows.length < limit) {
    const to = from + 499;
    const { data, error } = await supabase
      .from("questions")
      .select("id, source, skill_id, difficulty, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, source_metadata, created_at")
      .eq("exam_type", "SAT")
      .eq("is_platform_question", true)
      .eq("section", "reading_writing")
      .eq("difficulty", "medium")
      .order("source")
      .order("skill_id")
      .order("created_at")
      .range(from, to);
    if (error) throw new Error(error.message);
    if (!data?.length) break;
    rows.push(...data);
    if (data.length < 500) break;
    from += 500;
  }
  return rows.slice(0, limit);
}

async function main() {
  const f = parseArgs();
  if (f.buildMega) {
    const result = buildMegaFromChunks(resolve(f.buildMega), resolve(f.megaOut), f.megaSize);
    console.log(JSON.stringify(result, null, 2));
    return;
  }

  if (f.dryRun && !f.inputJson && !f.fetchJson && !f.useMcp) {
    const ctc = generateRwQuestion("CTC", "hard", 0);
    const sample = generateHardOne("TRA", 0);
    console.log(JSON.stringify({
      ok: true,
      dryRun: true,
      templateOnly: true,
      ctcHardChars: ctc.stimulus_text?.length ?? 0,
      traOptionSample: sample.options?.[0]?.text?.slice(0, 80),
    }, null, 2));
    return;
  }

  let mediumRows;
  if (f.inputJson) {
    mediumRows = JSON.parse(readFileSync(resolve(f.inputJson), "utf8"));
  } else if (f.useMcp) {
    mediumRows = await fetchMediumRowsViaMcp(f.limit);
  } else {
    mediumRows = await fetchMediumRowsSupabase(f.limit);
  }

  if (f.fetchJson) {
    mkdirSync(dirname(resolve(f.fetchJson)), { recursive: true });
    writeFileSync(resolve(f.fetchJson), JSON.stringify(mediumRows, null, 2) + "\n");
    console.error(`Exported ${mediumRows.length} medium rows → ${f.fetchJson}`);
  }

  const upgradeCount = Math.min(mediumRows.length, f.targetHard);
  const insertGap = Math.max(0, f.targetHard - upgradeCount);
  const cellIndex = buildCellIndexMap(mediumRows);

  const updates = [];
  const upgradeIds = [];
  for (let i = 0; i < upgradeCount; i++) {
    const row = mediumRows[i];
    const upgraded = upgradeRow(row, cellIndex.get(row.id) ?? i);
    if (!upgraded) continue;
    const { rwMeta, ...payload } = upgraded;
    updates.push(updateSql(row.id, payload, row.source_metadata, row.difficulty, rwMeta));
    upgradeIds.push(row.id);
  }

  const insertPlan = distributeInserts(insertGap);
  const insertRows = insertPlan.map(({ skill, index }) => rowForInsert(skill, index));
  const inserts = insertRows.length ? insertSql(insertRows) : "";

  console.error(`Prepared ${updates.length} UPDATEs + ${insertRows.length} INSERTs (target hard=${f.targetHard})`);

  if (f.dryRun) {
    const sample = generateHardOne("TRA", 0);
    console.log(JSON.stringify({
      ok: true,
      dryRun: true,
      updates: updates.length,
      inserts: insertRows.length,
      passageWords: wordCount(sample.stimulus_text ?? hardPassage(0)),
      passageChars: charLen(hardPassage(0)),
      traOptionSample: sample.options?.[0]?.text,
      insertIds: insertRows.slice(0, 5).map((r) => r.id),
      upgradeIdsSample: upgradeIds.slice(0, 5),
    }, null, 2));
    return;
  }

  if (f.outputSql) {
    const body = [...updates, inserts].filter(Boolean).join("\n");
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), body + "\n");
    writeFileSync(resolve(f.outputSql.replace(/\.sql$/, "-meta.json")), JSON.stringify({
      upgradeCount: updates.length,
      insertCount: insertRows.length,
      insertIds: insertRows.map((r) => r.id),
      upgradeIds,
    }, null, 2) + "\n");
    console.error(`Wrote ${f.outputSql}`);
  }

  console.log(JSON.stringify({
    ok: true,
    updates: updates.length,
    inserts: insertRows.length,
    totalHard: updates.length + insertRows.length,
    insertIds: insertRows.map((r) => r.id),
    upgradeIdsSample: upgradeIds.slice(0, 10),
    outputSql: f.outputSql ?? null,
  }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
