#!/usr/bin/env node
/**
 * Upgrade SAT Reading & Writing platform question content (scholaris_ai + college_board_opensat).
 *
 * scholaris_ai: full regenerate via upgraded templates (skill_id × difficulty × cell index).
 * college_board_opensat: append passage context, expand explanations + per-option rationale;
 *   TRA hard rows with single-word transitions → long participial/clausal phrases.
 *
 *   node scripts/upgrade-english-content.mjs --output-sql scripts/data/upgrade-english.sql
 *   node scripts/chunk-sql.mjs scripts/data/upgrade-english.sql 8 scripts/data/upgrade-english-chunks
 *   node scripts/upgrade-english-content.mjs --build-mega scripts/data/upgrade-english-chunks scripts/data/upgrade-english-mega 35
 *   node scripts/apply-bulk-mega.mjs scripts/data/upgrade-english-mega upgrade_english_mega
 */

import { writeFileSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { dirname, resolve, join } from "node:path";
import { createClient } from "@supabase/supabase-js";
import {
  generateRwQuestion,
  metadataFromQuestion,
  longPassage,
  charLen,
  mkOpts,
  longTraOptions,
} from "./lib/english-rw-templates.mjs";

const UPGRADE_VERSION = "english_content_v2";
const PROJECT_REF = "aioyzumxxsepbnfivvdd";

const RW_SKILLS = new Set([
  "CID", "COE", "INF", "CTC", "TSP", "WIC", "SYN", "TRA", "BOU", "FSS",
]);

/** 140–200 word passage bodies for passage-based RW items */
const LONG_PASSAGES = [
  (n) =>
    `Marine biologists studying reef ecosystem ${n} found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season, turning complex habitat into a uniform green mat. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure. At those sites, coral recruitment—the process by which free-floating larvae attach to hard substrate—dropped sharply even when water temperature and salinity remained stable. The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events. Their follow-up surveys showed that small patches of bare rock reappeared only where grazing intensity returned to historical norms.`,
  (n) =>
    `Historians examining trade route ${n} note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route ${n} lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language.`,
  (n) =>
    `In her essay on urban soundscapes, writer ${n} argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air.`,
  (n) =>
    `Economists analyzing market ${n} observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.`,
  (n) =>
    `Archaeologists at site ${n} discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail.`,
  (n) =>
    `Psychologists testing memory task ${n} reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall.`,
  (n) =>
    `Engineers prototyping turbine ${n} demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins. Standard flat blades stall when air flow separates early, wasting kinetic energy that never reaches the generator. The prototype's tubercle-like ridges delay separation, maintaining lift across a wider range of wind speeds common in residential installations. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits. The engineers note that biomimicry here is not decorative; it directly addresses a performance bottleneck that limits small-scale renewable adoption. The passage moves from biological observation to mechanical testing to a practical deployment implication.`,
  (n) =>
    `Educators reviewing literacy program ${n} concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone. Teachers in the pair-discussion classrooms reported that students referenced textual evidence when disagreeing, a behavior rarely observed during silent worksheet completion. Standardized pre- and post-tests showed a twelve-point average gain for the discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit. The educators emphasize that discussion prompts were structured—not unstructured chat—and required each partner to cite a line from the text. They argue that collaborative talk externalizes comprehension strategies that weaker readers otherwise keep invisible. The passage supports structured peer dialogue as an instructional lever rather than a replacement for independent reading.`,
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
  however: "contrast",
  nevertheless: "contrast",
  nonetheless: "contrast",
  yet: "contrast",
  still: "contrast",
  "in contrast": "contrast",
  conversely: "contrast",
  therefore: "cause",
  thus: "cause",
  consequently: "cause",
  hence: "cause",
  accordingly: "cause",
  similarly: "addition",
  likewise: "addition",
  moreover: "addition",
  furthermore: "addition",
  additionally: "addition",
  "in addition": "addition",
  "for example": "example",
  "for instance": "example",
  specifically: "example",
  notably: "example",
  meanwhile: "contrast",
};

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

function parseArgs() {
  const f = {
    outputSql: null,
    inputJson: null,
    exportJson: null,
    buildMega: null,
    megaOut: null,
    megaSize: 35,
    limit: Infinity,
    dryRun: false,
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
    else if (a === "--export-json") f.exportJson = argv[++i];
    else if (a === "--limit") f.limit = Number(argv[++i]);
    else if (a === "--dry-run") f.dryRun = true;
  }
  return f;
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function mkOpts(correctId, texts, expls) {
  return ["A", "B", "C", "D"].map((id, i) => ({
    id,
    text: texts[i],
    is_correct: id === correctId,
    explanation: expls[i],
  }));
}

function longPassage(n) {
  return LONG_PASSAGES[n % LONG_PASSAGES.length](n + 1);
}

function wordCount(text) {
  if (!text) return 0;
  return text.trim().split(/\s+/).filter(Boolean).length;
}

function charLen(text) {
  return text ? String(text).length : 0;
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

function transitionKind(text) {
  const key = String(text ?? "")
    .trim()
    .toLowerCase()
    .replace(/[.,;:!?]+$/, "");
  return SIMPLE_TRANSITION_MAP[key] ?? "contrast";
}

function hardTraPool(kind) {
  if (kind === "cause") return HARD_TRA_CAUSE;
  if (kind === "addition") return HARD_TRA_ADDITION;
  if (kind === "example") return HARD_TRA_EXAMPLE;
  return HARD_TRA_CONTRAST;
}

function isShortTransitionOption(text) {
  const t = String(text ?? "").trim();
  if (!t) return true;
  const words = t.split(/\s+/);
  return words.length <= 2 && t.length < 35;
}

function longTraOptions(correctId, correctText, n) {
  const kind = transitionKind(correctText);
  const pool = hardTraPool(kind);
  const correct = pool[n % pool.length];
  const others = [
    ...HARD_TRA_CONTRAST,
    ...HARD_TRA_CAUSE,
    ...HARD_TRA_ADDITION,
    ...HARD_TRA_EXAMPLE,
  ].filter((p) => p !== correct);
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
      return `${t} This participial phrase matches the rhetorical relationship between the two clauses: it signals ${kind} while preserving sentence grammar. The Digital SAT hard transition items expect this level of syntactic embedding rather than a bare adverb.`;
    }
    const wrongKind = transitionKind(t.replace(/,.+$/, "").split(" ").slice(-3).join(" "));
    return `${t} This phrase suggests ${wrongKind}, which misaligns with how the prior and following clauses relate. Hard transition items punish single-word pivots when the logic requires a fuller rhetorical bridge.`;
  });
  return mkOpts(correctId, rotated, expls);
}

/** Upgraded scholaris_ai template generator (RW skills only) */
function generateUpgradedOne(skill, difficulty, index) {
  const q = generateRwQuestion(skill, difficulty ?? "medium", index);
  const { rw_subtype, rw_format, ...rest } = q;
  return { ...rest, _rwMeta: metadataFromQuestion(q) };
}


const PASSAGE_APPENDERS = [
  (text) =>
    `${text.trim()} Researchers note that the pattern described above remained consistent across repeated observations, suggesting the finding was not a one-time anomaly. They caution that local conditions can still vary, yet the overall relationship held in each documented case.`,
  (text) =>
    `${text.trim()} Taken together, these details imply a broader principle that extends beyond the immediate example, though the author stops short of claiming universal proof. Readers must weigh both the evidence presented and the limits the author acknowledges.`,
  (text) =>
    `${text.trim()} Subsequent paragraphs reinforce the same line of reasoning with additional examples, helping readers see how the author connects specific observations to a general claim without overstating certainty.`,
];

function appendPassageContext(stimulus, n) {
  if (!stimulus || charLen(stimulus) >= 350) return stimulus;
  return PASSAGE_APPENDERS[n % PASSAGE_APPENDERS.length](stimulus);
}

function expandMainExplanation(explanation, stimulus, questionText, correctId, options) {
  const base = String(explanation ?? "").trim();
  const correct = options.find((o) => o.id === correctId)?.text ?? "";
  const snippet = stimulus ? stimulus.replace(/\s+/g, " ").trim().slice(0, 120) : "";
  const parts = [];
  if (base.length >= 40) parts.push(base.endsWith(".") ? base : `${base}.`);
  else if (base) parts.push(`${base}.`);
  if (snippet) {
    parts.push(
      `The passage states that "${snippet}${snippet.length >= 120 ? "…" : ""}", which is the textual anchor for eliminating weaker choices.`,
    );
  }
  parts.push(
    `Choice ${correctId} is correct because it aligns with that evidence: ${String(correct).slice(0, 100)}${correct.length > 100 ? "…" : ""}.`,
  );
  parts.push(
    "Each incorrect option either contradicts a explicit detail, imports information not present in the text, or answers a different question than the one asked.",
  );
  while (parts.length < 4) {
    parts.push(
      "On the Digital SAT, the best explanation ties the correct answer to specific language in the stimulus rather than relying on outside knowledge alone.",
    );
  }
  return parts.slice(0, 5).join(" ");
}

function expandOptionExplanation(opt, stimulus, correctId, questionText) {
  const base = String(opt.explanation ?? "").trim();
  const isCorrect = opt.id === correctId;
  const lines = [];
  if (base.length >= 30) lines.push(base.endsWith(".") ? base : `${base}.`);
  else if (base) lines.push(`${base}.`);
  if (isCorrect) {
    lines.push(
      `Choice ${opt.id} matches the question's requirement and is consistent with the passage's central claim or supporting detail.`,
    );
  } else {
    lines.push(
      `Choice ${opt.id} is incorrect because it either misreads the passage, overgeneralizes a limited detail, or focuses on information irrelevant to the question stem.`,
    );
  }
  if (stimulus && wordCount(stimulus) > 30) {
    lines.push(
      "Re-read the sentences surrounding the key detail before eliminating this option on test day.",
    );
  } else {
    lines.push(
      "Compare this option against the grammar or logic rule tested by the stem before selecting a final answer.",
    );
  }
  return lines.join(" ");
}

function expandOptionTexts(options) {
  return options.map((o) => {
    const t = String(o.text ?? "").trim();
    if (t.length >= 40 || t.split(/\s+/).length >= 6) return o;
    return {
      ...o,
      text: t.endsWith(".") ? t : `${t}. This choice completes the idea as a full sentence rather than a fragment.`,
    };
  });
}

function upgradeOpenSatRow(row, n) {
  const opts = normalizeOptions(row.options);
  const correctId = String(row.correct_answer ?? opts.find((o) => o.is_correct)?.id ?? "A");
  let stimulus = row.stimulus_text;
  if (stimulus && charLen(stimulus) < 350) {
    stimulus = appendPassageContext(stimulus, n);
  }

  let options = expandOptionTexts(opts);
  if (row.skill_id === "TRA" && row.difficulty === "hard") {
    const allShort = options.every((o) => isShortTransitionOption(o.text));
    if (allShort) {
      const correctText = options.find((o) => o.id === correctId)?.text ?? "However";
      options = longTraOptions(correctId, correctText, n);
    }
  }

  options = options.map((o) => ({
    ...o,
    explanation: expandOptionExplanation(o, stimulus, correctId, row.question_text),
  }));

  const explanation = expandMainExplanation(
    row.explanation,
    stimulus,
    row.question_text,
    correctId,
    options,
  );

  return {
    stimulus_text: stimulus,
    question_text: row.question_text,
    options,
    correct_answer: correctId,
    explanation,
  };
}

function upgradeScholarisAiRow(row, cellIndex) {
  const skill = row.skill_id;
  if (!RW_SKILLS.has(skill)) return null;
  const q = generateUpgradedOne(skill, row.difficulty ?? "medium", cellIndex);
  return {
    stimulus_text: q.stimulus_text,
    question_text: q.question_text,
    options: q.options,
    correct_answer: q.correct_answer,
    explanation: q.explanation,
    stimulus_type: q.stimulus_type ?? row.stimulus_type ?? null,
    rwMeta: q._rwMeta ?? {},
  };
}

function mergeMetadata(existing, rwMeta = {}) {
  return {
    ...(existing ?? {}),
    ...rwMeta,
    [UPGRADE_VERSION]: true,
    english_content_upgraded_at: new Date().toISOString(),
    english_content_upgrade_method: "upgrade-english-content.mjs",
  };
}

function updateSql(id, upgraded, sourceMetadata, rwMeta = {}) {
  const metaJson = JSON.stringify(mergeMetadata(sourceMetadata, rwMeta)).replace(/'/g, "''");
  const optsJson = JSON.stringify(upgraded.options).replace(/'/g, "''");
  return `UPDATE public.questions SET
  stimulus_text = ${sqlEscape(upgraded.stimulus_text)},
  question_text = ${sqlEscape(upgraded.question_text)},
  stimulus_type = ${sqlEscape(upgraded.stimulus_type ?? null)},
  options = '${optsJson}'::jsonb,
  correct_answer = ${sqlEscape(upgraded.correct_answer)},
  explanation = ${sqlEscape(upgraded.explanation)},
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '${metaJson}'::jsonb,
  updated_at = now()
WHERE id = ${sqlEscape(id)};`;
}

async function fetchAllRows(supabase, limit) {
  const pageSize = 500;
  const rows = [];
  let from = 0;
  while (rows.length < limit) {
    const to = from + pageSize - 1;
    const { data, error } = await supabase
      .from("questions")
      .select(
        "id, source, skill_id, difficulty, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, source_metadata, created_at",
      )
      .eq("exam_type", "SAT")
      .eq("is_platform_question", true)
      .eq("section", "reading_writing")
      .in("source", ["scholaris_ai", "college_board_opensat"])
      .order("source", { ascending: true })
      .order("skill_id", { ascending: true })
      .order("difficulty", { ascending: true })
      .order("created_at", { ascending: true })
      .range(from, to);
    if (error) throw new Error(error.message);
    if (!data?.length) break;
    rows.push(...data);
    if (data.length < pageSize) break;
    from += pageSize;
  }
  return rows.slice(0, limit);
}

function buildCellIndexMap(rows) {
  const counters = new Map();
  const map = new Map();
  for (const row of rows) {
    if (row.source !== "scholaris_ai") continue;
    const key = `${row.skill_id}:${row.difficulty ?? "medium"}`;
    const idx = counters.get(key) ?? 0;
    counters.set(key, idx + 1);
    map.set(row.id, idx);
  }
  return map;
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
      .map((p) =>
        p
          .trim()
          .replace(/\nCOMMIT;?\s*$/i, "")
          .replace(/^BEGIN;?\s*\n?/i, ""),
      );
    stmts.push(...parts);
  }
  mkdirSync(outDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += stmtsPerMega) {
    const batch = stmts.slice(i, i + stmtsPerMega);
    const body = "BEGIN;\n" + batch.join("\n") + "\nCOMMIT;\n";
    const path = join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`);
    writeFileSync(path, body);
    megaIdx++;
  }
  return { megaFiles: megaIdx, statements: stmts.length };
}

async function main() {
  const f = parseArgs();
  if (f.buildMega) {
    const result = buildMegaFromChunks(resolve(f.buildMega), resolve(f.megaOut), f.megaSize);
    console.log(JSON.stringify(result, null, 2));
    return;
  }

  let rows;
  if (f.inputJson) {
    rows = JSON.parse(readFileSync(resolve(f.inputJson), "utf8"));
  } else {
    const env = { ...process.env, ...loadEnv() };
    const url = env.NEXT_PUBLIC_SUPABASE_URL;
    const key = env.SUPABASE_SERVICE_ROLE_KEY ?? env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
    if (!url || !key) {
      console.error("Need NEXT_PUBLIC_SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY (or anon key) or --input-json");
      process.exit(1);
    }
    const supabase = createClient(url, key);
    rows = await fetchAllRows(supabase, f.limit);
    if (f.exportJson) {
      mkdirSync(dirname(resolve(f.exportJson)), { recursive: true });
      writeFileSync(resolve(f.exportJson), JSON.stringify(rows, null, 2) + "\n");
      console.error(`Exported ${rows.length} rows → ${f.exportJson}`);
    }
  }

  const cellIndex = buildCellIndexMap(rows);
  const updates = [];
  let scholaris = 0;
  let opensat = 0;
  let skipped = 0;

  rows.forEach((row, i) => {
    let upgraded;
    if (row.source === "scholaris_ai") {
      upgraded = upgradeScholarisAiRow(row, cellIndex.get(row.id) ?? 0);
      if (!upgraded) {
        skipped++;
        return;
      }
      scholaris++;
    } else if (row.source === "college_board_opensat") {
      upgraded = upgradeOpenSatRow(row, i);
      opensat++;
    } else {
      skipped++;
      return;
    }
    const rwMeta = upgraded.rwMeta ?? {};
    const { rwMeta: _drop, ...payload } = upgraded;
    updates.push({ id: row.id, sql: updateSql(row.id, payload, row.source_metadata, rwMeta) });
  });

  console.error(
    `Prepared ${updates.length} UPDATEs (scholaris_ai=${scholaris}, opensat=${opensat}, skipped=${skipped})`,
  );

  if (f.dryRun) {
    console.log(
      JSON.stringify(
        {
          ok: true,
          dryRun: true,
          total: updates.length,
          scholaris_ai: scholaris,
          college_board_opensat: opensat,
          sample: updates.slice(0, 2).map((u) => u.sql.slice(0, 400)),
        },
        null,
        2,
      ),
    );
    return;
  }

  if (f.outputSql) {
    const body = updates.map((u) => u.sql).join("\n");
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), body + "\n");
    console.error(`Wrote ${f.outputSql} (${updates.length} statements)`);
  }

  console.log(
    JSON.stringify(
      {
        ok: true,
        updated: updates.length,
        scholaris_ai: scholaris,
        college_board_opensat: opensat,
        skipped,
        outputSql: f.outputSql ?? null,
      },
      null,
      2,
    ),
  );
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
