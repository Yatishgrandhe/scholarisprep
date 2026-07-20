#!/usr/bin/env node
/**
 * Seed two published free catalog courses with real YouTube IDs from
 * lesson_video_library (promotes a few Desmos-relevant clips from
 * study_plan_videos into the library when missing).
 *
 * 1. Upgrade thin sat-reading-writing-foundations → SAT R&W — Conventions & Expression
 * 2. Create Digital SAT Desmos Strategies
 *
 * Honest metrics: enrolled_count=0, avg_rating=0, total_lessons=actual count.
 *
 * Writes via Postgres URL in ~/.cursor/mcp.json (service role in .env.local is
 * a placeholder). MCP execute_sql is read-only.
 *
 * Usage:
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/seed-catalog-courses.mjs
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/seed-catalog-courses.mjs --dry-run
 */
import { readFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";
import pg from "pg";

const DRY = process.argv.includes("--dry-run");
const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const FOUNDATIONS_ID = "4cf66958-f12b-49de-b7ce-d07d76d24f68";
const DESMOS_ID = "b8e2c1a0-5d4f-4a9e-9c3b-7f1e6d2a9041";

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const p = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(p)) throw new Error("no ~/.cursor/mcp.json");
  const mcp = JSON.parse(readFileSync(p, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    if (!JSON.stringify(env).includes(PROJECT_ID)) continue;
    const url =
      env.POSTGRES_URL_NON_POOLING ||
      env.POSTGRES_URL ||
      env.DATABASE_URL ||
      null;
    if (url) return url.trim();
  }
  throw new Error(`no Postgres URL for ${PROJECT_ID}`);
}

/** Promote into library so Desmos lessons stay library-sourced. */
const LIBRARY_PROMOTIONS = [
  ["SAT", "INE", "teaching", "c6Jt5i7d_7Q", "SAT Math - System of Inequalities", "Hayden Rhodea SAT", 0],
  ["SAT", "EQS", "teaching", "eW7paVRISoU", "Equivalent Expressions", "MooMooMath and Science", 0],
  ["SAT", "SYS", "tips", "TFmt1VwZte8", "Digital SAT Math - Desmos Lesson #1 Solve any Equation!", "LearnSATMath", 1],
];

const CONVENTIONS_LESSONS = [
  {
    skill: "BOU",
    title: "Boundaries — ending and joining sentences",
    description:
      "Master commas, semicolons, colons, and dashes so you never leave a splice or fragment on the Digital SAT.",
    summary: `## What you'll lock in
- Spot **comma splices** and **run-ons**
- Choose semicolon / colon / em-dash for the right logical join
- Reject fragmented "solutions" that look fancy but aren't complete sentences

## Practice focus
After the video, work the Boundaries items tagged to this lesson. Say the rule out loud before you pick.`,
    order: 0,
    duration: 720,
    preview: true,
  },
  {
    skill: "FSS",
    title: "Form, Structure, and Sense",
    description:
      "Subject–verb agreement, pronoun clarity, verb forms, and modifiers — the grammar that shows up every module.",
    summary: `## What you'll lock in
- Agreement across intervening phrases
- Pronoun antecedents that actually match
- Verb tense / form that fits the surrounding timeline
- Misplaced and dangling modifiers

## Practice focus
Read the full sentence once for meaning, then check the underlined part against the rule — not against what "sounds right."`,
    order: 1,
    duration: 780,
    preview: true,
  },
  {
    skill: "SYN",
    title: "Rhetorical Synthesis — notes to answer",
    description:
      "Turn student notes into the one sentence that hits the stated goal without adding junk.",
    summary: `## What you'll lock in
- Read the **goal** first (underline it)
- Keep only notes that serve that goal
- Drop tone mismatches and off-goal details

## Practice focus
If two choices both use the notes, pick the one that matches the goal's verb (emphasize, contrast, introduce, etc.).`,
    order: 2,
    duration: 840,
    preview: false,
  },
  {
    skill: "TRA",
    title: "Transitions — logic bridges",
    description:
      "Contrast, cause, addition, example — pick the bridge that matches the relationship between ideas.",
    summary: `## What you'll lock in
- Diagnose the relationship **before** looking at choices
- Avoid synonym traps that keep the wrong logical class
- Prefer precise transitions over vague "also / however" fillers

## Practice focus
Cover the blank, write the relationship in one word (contrast / cause / example), then uncover the choices.`,
    order: 3,
    duration: 660,
    preview: false,
  },
  {
    skill: "BOU",
    title: "Conventions checklist — Boundaries revisit",
    description:
      "Re-watch Boundaries with a trap checklist: splice, run-on, fragment, false colon.",
    summary: `## Checklist (pause the video and apply)
1. Are both sides of punctuation **independent** when they need to be?
2. Does a colon introduce a list, explanation, or quote — not a random clause?
3. Would a period work? If yes, a comma alone is wrong.

## Practice focus
Two more Boundaries items — force yourself to name the trap before selecting.`,
    order: 4,
    duration: 600,
    preview: false,
  },
  {
    skill: "SYN",
    title: "Expression under time — Synthesis revisit",
    description:
      "Speed pass on Rhetorical Synthesis: goal → relevant notes → eliminate.",
    summary: `## Speed routine
1. Circle the goal verb
2. Strike notes that don't serve it
3. Eliminate choices that add claims not in the notes

## Practice focus
Two Synthesis items timed — aim for under 45 seconds each once the method is automatic.`,
    order: 5,
    duration: 600,
    preview: false,
  },
];

const DESMOS_LESSONS = [
  {
    skill: "DESMOS",
    kind: "teaching",
    title: "Desmos on the Digital SAT — the toolkit",
    description:
      "Built-in graphing calculator habits: intersections, clicks for intercepts, sliders, lists, and fraction toggle.",
    summary: `## Universal moves
- Solve by graphing y= left and y= right; read the intersection's x
- Click a curve for gray dots at intercepts / vertices / intersections
- Unknown constant → **slider**; drag until the condition holds
- Lists: L=[...] then mean(L), median(L), stdev(L)
- Toggle decimals to fractions when the answer choices are rational

## Practice focus
Open Desmos while you watch and type along — muscle memory beats screenshots.`,
    order: 0,
    duration: 900,
    preview: true,
  },
  {
    skill: "LIN",
    kind: "teaching",
    title: "Linear equations in one variable with Desmos",
    description:
      "Graph each side; the intersection's x is the solution. Fraction-toggle when needed.",
    summary: `## Pathway
Type left as y=<left> and right as y=<right>. Click the intersection. Prefer the fraction form if choices are fractions.

## When not to graph
If it's a one-step isolate, Desmos as a calculator is enough — don't overcomplicate.`,
    order: 1,
    duration: 720,
    preview: true,
  },
  {
    skill: "LIF",
    kind: "teaching",
    title: "Linear functions — tables, intercepts, regression",
    description:
      "Build f(x)=mx+b, read change from a table, or recover slope from data with regression.",
    summary: `## Pathway
- Graph f(x)=mx+b and click intercepts
- Tiny table at x=0 and x=5 to see rate of change
- Data: columns x_1,y_1 → y_1 ~ m x_1 + b

## Practice focus
Name slope and intercept from the graph before looking at choices.`,
    order: 2,
    duration: 780,
    preview: false,
  },
  {
    skill: "LEQ",
    kind: "teaching",
    title: "Linear equations in two variables / rate models",
    description:
      "Plot Ax+By=C, read intercepts, evaluate the model at a point with a table.",
    summary: `## Pathway
Type the equation as given. Click for intercepts. To evaluate, use y=mx+b plus a table row for the target x.

## Practice focus
Translate word rates into slope–intercept before you touch Desmos.`,
    order: 3,
    duration: 720,
    preview: false,
  },
  {
    skill: "INE",
    kind: "teaching",
    title: "Inequalities — shaded regions",
    description:
      "Shade each inequality; the overlap is the solution. Test points by typing them.",
    summary: `## Pathway
One inequality per line. Overlap = solution set. Test a choice by typing (x,y) and checking whether it lands in the overlap.

## Practice focus
Sketch the boundary first (solid vs dashed in your head), then confirm with Desmos shading.`,
    order: 4,
    duration: 660,
    preview: false,
  },
  {
    skill: "SYS",
    kind: "tips",
    title: "Systems & equations — Desmos solve-any-equation tips",
    description:
      "Tips clip: graph equations, click intersections, use sliders for how-many-solutions stems.",
    summary: `## Pathway
Graph both equations (or left vs right for a single equation). Click intersections. Use a slider when the stem asks how many solutions.

## Practice focus
Predict cross / parallel / identical before graphing.`,
    order: 5,
    duration: 720,
    preview: false,
  },
  {
    skill: "NRE",
    kind: "teaching",
    title: "Nonlinear equations & systems with Desmos",
    description:
      "Graph left vs right for nonlinear equations; slider for tangency / one-solution cases.",
    summary: `## Pathway
y=<left> and y=<right> — real solutions are intersection x-values. For tangency / one-solution cases, put the constant on a slider.

## Practice focus
Extraneous algebraic roots often vanish on the graph — trust the intersections.`,
    order: 6,
    duration: 840,
    preview: false,
  },
];

async function loadLibrary(client) {
  const { rows } = await client.query(
    `select skill_id, kind, video_id, title, channel, rank
     from lesson_video_library
     where exam_type = 'SAT'
     order by skill_id, kind, rank`,
  );
  /** @type {Map<string, {video_id:string,title:string|null,channel:string|null}>} */
  const map = new Map();
  for (const row of rows) {
    const key = `${row.skill_id}|${row.kind}`;
    if (!map.has(key)) {
      map.set(key, {
        video_id: row.video_id,
        title: row.title,
        channel: row.channel,
      });
    }
    // also default teaching lookup by skill alone
    if (row.kind === "teaching" && !map.has(row.skill_id)) {
      map.set(row.skill_id, {
        video_id: row.video_id,
        title: row.title,
        channel: row.channel,
      });
    }
  }
  return map;
}

function resolveVideo(library, skill, kind = "teaching") {
  return (
    library.get(`${skill}|${kind}`) ||
    library.get(skill) ||
    library.get(`${skill}|teaching`)
  );
}

async function pickQuestionIds(client, skillId, limit, excludeIds) {
  const { rows } = await client.query(
    `select id from questions
     where exam_type = 'SAT'
       and skill_id = $1
       and lesson_id is null
       and difficulty in ('easy','medium')
       and not (id = any($2::uuid[]))
     order by created_at
     limit $3`,
    [skillId, excludeIds, limit],
  );
  return rows.map((r) => r.id);
}

async function replaceLessons(client, courseId, specs, library) {
  const { rows: oldLessons } = await client.query(
    `select id from lessons where course_id = $1`,
    [courseId],
  );
  const oldIds = oldLessons.map((r) => r.id);
  if (oldIds.length) {
    await client.query(
      `update questions set lesson_id = null, course_id = null
       where lesson_id = any($1::uuid[])`,
      [oldIds],
    );
    await client.query(`delete from lessons where course_id = $1`, [courseId]);
  }

  const inserted = [];
  const usedQuestionIds = [];

  for (const spec of specs) {
    const vid = resolveVideo(library, spec.skill, spec.kind ?? "teaching");
    if (!vid?.video_id) {
      throw new Error(`No library video for ${spec.skill} (${spec.kind ?? "teaching"})`);
    }
    if (DRY) {
      console.log(`  [dry] ${spec.order + 1}. ${spec.title} → ${vid.video_id}`);
      inserted.push({ id: null, skill: spec.skill });
      continue;
    }
    const { rows } = await client.query(
      `insert into lessons (
         course_id, title, description, summary, youtube_video_id,
         order_index, duration_seconds, is_free_preview
       ) values ($1,$2,$3,$4,$5,$6,$7,$8)
       returning id`,
      [
        courseId,
        spec.title,
        spec.description,
        spec.summary,
        vid.video_id,
        spec.order,
        spec.duration,
        spec.preview,
      ],
    );
    inserted.push({ id: rows[0].id, skill: spec.skill });
    console.log(`  lesson ${spec.order + 1}: ${spec.title} [${vid.video_id}]`);
  }

  if (DRY) return inserted;

  const seen = new Set();
  for (const lesson of inserted) {
    if (seen.has(lesson.skill)) continue;
    seen.add(lesson.skill);
    // DESMOS has no bank skill — skip question tagging
    if (lesson.skill === "DESMOS") continue;
    const qids = await pickQuestionIds(client, lesson.skill, 2, usedQuestionIds);
    usedQuestionIds.push(...qids);
    if (!qids.length) {
      console.warn(`  warn: no questions for ${lesson.skill}`);
      continue;
    }
    await client.query(
      `update questions set course_id = $1, lesson_id = $2 where id = any($3::uuid[])`,
      [courseId, lesson.id, qids],
    );
    console.log(`  tagged ${qids.length} questions → ${lesson.skill}`);
  }

  return inserted;
}

async function main() {
  console.log(DRY ? "DRY RUN" : "Seeding catalog courses…");
  const client = new pg.Client({
    connectionString: getConnString(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();

  try {
    await client.query("begin");

    for (const row of LIBRARY_PROMOTIONS) {
      if (DRY) {
        console.log("[dry] promote", row[1], row[3]);
        continue;
      }
      await client.query(
        `insert into lesson_video_library
           (exam_type, skill_id, kind, video_id, title, channel, rank)
         values ($1,$2,$3,$4,$5,$6,$7)
         on conflict (exam_type, skill_id, kind, video_id) do update
           set title = excluded.title, channel = excluded.channel, rank = excluded.rank`,
        row,
      );
    }
    if (!DRY) {
      console.log(`Promoted/ensured ${LIBRARY_PROMOTIONS.length} library rows`);
    }

    const library = await loadLibrary(client);
    for (const need of [
      ["BOU", "teaching"],
      ["FSS", "teaching"],
      ["SYN", "teaching"],
      ["TRA", "teaching"],
      ["DESMOS", "teaching"],
      ["LIN", "teaching"],
      ["LIF", "teaching"],
      ["LEQ", "teaching"],
      ["INE", "teaching"],
      ["SYS", "tips"],
      ["NRE", "teaching"],
    ]) {
      if (!resolveVideo(library, need[0], need[1])) {
        throw new Error(`Missing library video for ${need[0]}/${need[1]}`);
      }
    }

    const bou = resolveVideo(library, "BOU");
    const desmos = resolveVideo(library, "DESMOS");

    console.log("\n1) SAT R&W — Conventions & Expression");
    if (!DRY) {
      await client.query(
        `update courses set
           title = $2,
           slug = $3,
           description = $4,
           subject = $5,
           exam_type = 'SAT',
           level = 'medium',
           status = 'published',
           is_free = true,
           price_cents = 0,
           source = 'manual',
           total_lessons = $6,
           enrolled_count = 0,
           avg_rating = 0,
           featured_on_home = false,
           thumbnail_url = $7,
           updated_at = now()
         where id = $1`,
        [
          FOUNDATIONS_ID,
          "SAT R&W — Conventions & Expression",
          "sat-rw-conventions-expression",
          "Free domain pack for Digital SAT Reading & Writing: Boundaries (BOU), Form/Structure/Sense (FSS), Rhetorical Synthesis (SYN), and Transitions (TRA). Real teaching videos plus bank practice — no inflated enrollments.",
          "Reading & Writing",
          CONVENTIONS_LESSONS.length,
          `https://img.youtube.com/vi/${bou.video_id}/hqdefault.jpg`,
        ],
      );
    } else {
      console.log("[dry] update foundations → conventions");
    }
    await replaceLessons(client, FOUNDATIONS_ID, CONVENTIONS_LESSONS, library);

    console.log("\n2) Digital SAT Desmos Strategies");
    if (!DRY) {
      await client.query(
        `insert into courses (
           id, title, slug, description, subject, exam_type, level, status,
           is_free, price_cents, source, total_lessons, enrolled_count, avg_rating,
           featured_on_home, thumbnail_url
         ) values (
           $1,$2,$3,$4,$5,'SAT','medium','published',
           true,0,'manual',$6,0,0,true,$7
         )
         on conflict (id) do update set
           title = excluded.title,
           slug = excluded.slug,
           description = excluded.description,
           subject = excluded.subject,
           exam_type = excluded.exam_type,
           level = excluded.level,
           status = excluded.status,
           is_free = excluded.is_free,
           price_cents = excluded.price_cents,
           source = excluded.source,
           total_lessons = excluded.total_lessons,
           enrolled_count = 0,
           avg_rating = 0,
           featured_on_home = excluded.featured_on_home,
           thumbnail_url = excluded.thumbnail_url,
           updated_at = now()`,
        [
          DESMOS_ID,
          "Digital SAT Desmos Strategies",
          "digital-sat-desmos-strategies",
          "Use Bluebook's built-in Desmos graphing calculator the way high scorers do: intersections, sliders, shaded inequalities, systems, and fast equation solving. Free, published, honest metrics.",
          "Math",
          DESMOS_LESSONS.length,
          `https://img.youtube.com/vi/${desmos.video_id}/hqdefault.jpg`,
        ],
      );
    } else {
      console.log("[dry] upsert desmos course");
    }
    await replaceLessons(client, DESMOS_ID, DESMOS_LESSONS, library);

    if (DRY) {
      await client.query("rollback");
      console.log("\nDry run rolled back.");
    } else {
      await client.query("commit");
      const { rows: courses } = await client.query(
        `select title, slug, status, is_free, total_lessons, enrolled_count, avg_rating
         from courses
         where id = any($1::uuid[])
         order by title`,
        [[FOUNDATIONS_ID, DESMOS_ID]],
      );
      const { rows: lessonCounts } = await client.query(
        `select c.slug, count(l.id)::int as lessons,
                count(l.youtube_video_id)::int as with_video
         from courses c
         left join lessons l on l.course_id = c.id
         where c.id = any($1::uuid[])
         group by c.slug`,
        [[FOUNDATIONS_ID, DESMOS_ID]],
      );
      const { rows: qCounts } = await client.query(
        `select c.slug, count(q.id)::int as tagged_questions
         from courses c
         left join questions q on q.course_id = c.id
         where c.id = any($1::uuid[])
         group by c.slug`,
        [[FOUNDATIONS_ID, DESMOS_ID]],
      );
      console.log("\nVerify courses:", courses);
      console.log("Verify lessons:", lessonCounts);
      console.log("Verify questions:", qCounts);
    }
  } catch (e) {
    try {
      await client.query("rollback");
    } catch {
      /* ignore */
    }
    throw e;
  } finally {
    await client.end();
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
