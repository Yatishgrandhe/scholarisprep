# Digital SAT English R&W Regeneration Spec (Phase 2)

**Master manual (authoritative item design):** [`dsat-rw-master-manual.md`](./dsat-rw-master-manual.md)  
**Exportable generator prompt:** `scripts/lib/dsat-rw-master-prompt.mjs`  
**Research artifact:** `scripts/data/.english-rw-regen-research.json`  
**Status:** `READY_FOR_PHASE_2: true` — research only; no DB writes in Phase 1.

## Executive summary

4,225 platform Reading & Writing questions suffer systematic answer-choice bias:

| Metric | Value | Target |
|--------|-------|--------|
| Correct is longest (chars) | **74.0%** | ~25% |
| Correct is longest (words) | **81.7%** | ~25% |
| Spread >15% (chars) | **89.6%** | 0% |
| Correct letter A | **48.4%** | 25% |
| Correct letter D | **0.5%** | 25% |

Root cause: generators write a full correct answer, attach short distractors, default `correctId='A'`, and `validateDsatRwQuestion` has no length-parity gate.

## Phase 2 mandates

1. **Regenerate all options** for 4,225 questions (passages/stems may remain if valid).
2. **Length parity:** max 15% char/word spread within each question.
3. **Correct NOT systematically longest:** ≤40% per shard (ideal 25%).
4. **Letter distribution:** A/B/C/D each 25% ±3% per agent shard.
5. **Pad distractors, never the correct answer.**

## Agent partition (10 shards, zero overlap)

| Agent | Scope | Count | Priority |
|-------|-------|-------|----------|
| 1 | SYN | 325 | P0 |
| 2 | WIC | 325 | P0 |
| 3 | COE quant | 325 | P0 |
| 4 | COE textual | 325 | P1 |
| 5 | CID | 325 | P1 |
| 6 | INF general | 325 | P1 |
| 7 | INF implication + prediction | 650 | P1 |
| 8 | TSP + CTC | 650 | P2 (letter rotation) |
| 9 | TRA + BOU | 650 | P2 |
| 10 | FSS | 325 | P2 |

SQL filters are in the JSON `agent_partition_plan.agents[].sql_filter`.

## Per-subtype quick reference

See the [Master Manual](./dsat-rw-master-manual.md) for full psychometric specs, distractor formulas, and hard examples. Subtype passage word gates:

| Subtype | Passage words | Distractor formulas |
|---------|---------------|---------------------|
| WIC | 50–100 | Collocation Decoy, Flat Literal, Tone Inversion |
| TSP | 90–140 | Partial Scope, Narrative Speculation, Structural Inversion |
| CTC | 60–90 each text | Mutual Consensus Decoy, Scope Creep, Out-of-Bound Contrast |
| CID | 80–130 | Over-Extrapolation, Reciprocal Distractor, Retrospective Detail |
| COE-T | 80–120 | Unconditional Support, Irrelevant Variable, Inverse Support |
| COE-Q | 70–110 (+ table) | Data Misread, Under-Specified Support, True-But-Irrelevant |
| INF | 80–130 | Speculative Narrative, Equivocation Error, Reverse Conditional |
| TRA | 50–80 | Synonym Trap, Category Shift, Register Clash |
| SYN | 4–6 bullet notes | Goal Under-Specification, Truth without Goal, Unwarranted Synthesis |
| BOU | 60–90 | Comma Splice, Run-on Conjunction, Fragmented Semicolon/Colon |
| FSS | 60–90 | Proximity Decoy, Tense Shift, Dangling Modifier |

### Passage-based (Craft & Information)

- **WIC:** Equal word-count phrases; stem `most nearly means`.
- **TSP / CID / INF:** `The passage [verb]s that…` — 12–18 words each.
- **CTC:** `The author of Text 2 would…` — 14–20 words; rotate B-skew.
- **COE textual:** Equal-length quoted excerpts.
- **COE quant:** Two data points + comparison per choice (~18–24 words). Model: `fix-english-choice-parity.mjs` HAND_PATCHES.

### Expression & Conventions

- **SYN:** One 22–32 word sentence per choice; distractor omits one goal element.
- **TRA easy:** Matched transition tokens; **TRA hard:** `longTraOptions()` participial frames.
- **BOU / FSS:** Matched punctuation or verb forms; never empty BOU distractors.

## Validation gates

**Per question:** spread ≤15%, parallel structure, named distractor traps, Step 1/2/3 explanation.

**Per batch:** letter distribution 25%±3%, ≤40% correct-longest, 0% over 15% spread.

**Code to add before insert:**

- `validateOptionLengthParity()` in `dsat-rw-blueprint.mjs`
- `validateSubtypePassageWords()` / `SUBTYPE_PASSAGE_WORD_TARGETS` in `dsat-rw-master-prompt.mjs`
- `validateDistractorFormulaTags()` — incorrect options must include `[Formula Name]` tags
- `balanceOptionLengths()` + `rotateCorrectId()` in `english-rw-regen.mjs`

## Gold models

- `scripts/fix-english-choice-parity.mjs` — HAND_PATCHES for coe-quant, syn, poetry
- `scripts/lib/dsat-challenged-bank.mjs` — two-sentence option padding
- `scripts/lib/english-rw-templates.mjs` — `longTraOptions()` for hard TRA

## References

- **Master Manual:** [`docs/dsat-rw-master-manual.md`](./dsat-rw-master-manual.md)
- **Generator prompt module:** `scripts/lib/dsat-rw-master-prompt.mjs`
- College Board Assessment Framework, OnePrep evidence strategies, Erica Meltzer parallelism, Haladyna distractor research — full URLs in JSON `web_research_sources`.
