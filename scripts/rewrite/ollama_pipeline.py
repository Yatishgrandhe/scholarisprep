#!/usr/bin/env python3
"""
Local, $0, rate-limit-free generation pipeline for the remaining R&W questions.

Runs overnight against a local Ollama model. Each worker generates ONE item per
call, seeded with a unique topic (500-topic pool) to kill template repetition.
Skips items already tagged v2_authored_20260625 (never overwrites good items),
writes each completed chunk back through the validated Node applier, and is fully
resumable — just rerun and it continues where it stopped.

Setup (one time):
    ollama pull llama3.1:8b

Run:
    NODE_TLS_REJECT_UNAUTHORIZED=0 python3 scripts/rewrite/ollama_pipeline.py            # all remaining
    python3 scripts/rewrite/ollama_pipeline.py --workers 4                               # parallelism
    python3 scripts/rewrite/ollama_pipeline.py --limit 1                                 # smoke test
    python3 scripts/rewrite/ollama_pipeline.py --skills BOU,FSS,TRA,WIC                   # subset
    MODEL=qwen2.5:7b-instruct python3 scripts/rewrite/ollama_pipeline.py                 # different model

Tip: for real local parallelism set Ollama's pool, e.g. `OLLAMA_NUM_PARALLEL=4 ollama serve`.
"""
import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
import threading
import time
from concurrent.futures import ThreadPoolExecutor, as_completed

import requests

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, "scripts", "rewrite"))
from topics500 import TOPICS_500

OLLAMA_URL = os.environ.get("OLLAMA_URL", "http://localhost:11434/api/generate")
MODEL = os.environ.get("MODEL", "llama3.1:8b")
CHUNK_DIR = os.path.join(ROOT, "scripts", "rewrite", "chunks")
BATCH_DIR = os.path.join(ROOT, "scripts", "rewrite", "batches")
APPLY = os.path.join(ROOT, "scripts", "rewrite", "apply-batch.mjs")
REMAINING = os.path.join(ROOT, "scripts", "rewrite", "remaining.mjs")
DONE_IDS = os.path.join(ROOT, "scripts", "rewrite", "done-ids.mjs")

SYSTEM = (
    "You are a DSAT psychometrician writing premium Digital SAT Reading & Writing items. "
    "Output ONLY a single valid JSON object matching the requested schema, with no "
    "introductory or concluding text. Write an original, high-level academic passage "
    "(unique each time; never reuse sentence templates). The passage must NEVER discuss "
    "grammar, punctuation, clauses, or writing rules - test the skill implicitly through "
    "real academic content. Make all three wrong options genuinely plausible traps, and "
    "write specific, mechanical explanations that name each option's exact flaw."
)

DIFF_NOTE = {
    "easy": "Difficulty EASY: concrete topic, common vocabulary, shorter sentences, an obvious-once-seen answer.",
    "medium": "Difficulty MEDIUM: moderate abstraction and sentence complexity, subtler distractors.",
    "hard": "Difficulty HARD: dense syntax, an abstract or technical subject, and closely competing distractors.",
}

PRESERVE_SKILLS = {"BOU", "FSS"}

SKILL_SPEC = {
    "BOU": ("Standard English punctuation boundaries. Write a 75-100 word passage whose LAST sentence "
            "contains exactly one '______' blank where a boundary mark belongs, constructed so that the "
            "given correct option is the UNIQUELY correct mark and each wrong option is a real error "
            "(comma splice, fused/run-on sentence, fragment, or a misused colon/semicolon)."),
    "FSS": ("Form, structure, and sense (verb agreement/tense, pronoun-antecedent agreement, parallelism, "
            "modifiers, possessives). Write a 75-100 word passage whose sentence has one '______' blank where "
            "the given word goes, with context that makes the given correct form uniquely right."),
    "WIC": ("Words in context. Write a 75-100 word passage that fixes the meaning of one sophisticated TARGET "
            "word through context; the target word must appear verbatim. Provide the target word and four "
            "complete real-word/short-phrase choices: one correct contextual meaning and three plausible traps "
            "(a different real sense, a non-fitting near-synonym, an opposite)."),
    "TRA": ("Transitions. Write a 75-100 word passage of 2-3 sentences building a clear logical relationship; "
            "the final sentence opens with a '______' transition. The four choices are distinct transition "
            "words/phrases (each ending with a comma), only one of which fits the actual relationship."),
    "INF": ("Inference / logical completion. Write a 75-100 word evidence-rich passage that sets up premises and "
            "needs a logical completion. The four choices are full clauses; exactly one is strictly entailed, the "
            "others are overgeneralization, reversed conditional, unsupported causation, or contradiction."),
    "CID": ("Central ideas and details. Write a 75-100 word passage; ask the main idea OR a specific detail. The "
            "four choices: one correct, the others too broad, too narrow (a mere detail), or contradicted."),
    "COE": ("Command of evidence (TEXT only, no figure). Write a 75-100 word passage presenting a researcher's "
            "claim or hypothesis; ask which finding would most directly support it. Four findings; one supports, "
            "others are irrelevant, opposite, or too weak."),
    "CTC": ("Cross-text connections. stimulus has TWO short passages labeled exactly 'Text 1: ...' then a blank "
            "line then 'Text 2: ...' (~45-60 words each) with related but DIFFERENT positions; ask how one author "
            "would respond to the other. Four choices; one captures the relationship accurately."),
    "TSP": ("Text structure and purpose. Write a 75-100 word passage with a clear rhetorical purpose; ask the main "
            "purpose or the function of a part. Four purpose/function statements; one correct, others mislabel the "
            "rhetorical move."),
    "SYN": ("Rhetorical synthesis. The stimulus is a short title line then 4-6 study-note lines each beginning "
            "'- '. Ask: the student wants to <specific goal>; which choice best uses the notes to meet it. Four "
            "full-sentence choices; one meets the goal using only the notes, others are true-but-off-goal, distort "
            "a note, or add outside info."),
}

BOU_Q = "Which choice completes the text so that it conforms to the conventions of Standard English?"
TRA_Q = "Which choice completes the text with the most logical transition?"


def extract_json(text):
    text = (text or "").strip()
    if text.startswith("```"):
        text = re.sub(r"^```[a-zA-Z]*\n?", "", text)
        text = re.sub(r"\n?```$", "", text).strip()
    start = text.find("{")
    if start == -1:
        raise ValueError("no JSON object in model output")
    depth, in_str, esc, end = 0, False, False, -1
    for i in range(start, len(text)):
        c = text[i]
        if in_str:
            if esc:
                esc = False
            elif c == "\\":
                esc = True
            elif c == '"':
                in_str = False
        else:
            if c == '"':
                in_str = True
            elif c == "{":
                depth += 1
            elif c == "}":
                depth -= 1
                if depth == 0:
                    end = i + 1
                    break
    candidate = text[start:end] if end != -1 else text[start:]
    return json.loads(candidate, strict=False)


def topic_for(item_id, salt=0):
    h = int(hashlib.sha256(f"{item_id}:{salt}".encode()).hexdigest(), 16)
    return TOPICS_500[h % len(TOPICS_500)]


def ollama(prompt, temperature=0.8):
    payload = {
        "model": MODEL,
        "prompt": prompt,
        "system": SYSTEM,
        "format": "json",
        "stream": False,
        "options": {"temperature": temperature, "num_predict": 2000},
    }
    r = requests.post(OLLAMA_URL, json=payload, timeout=300)
    r.raise_for_status()
    return extract_json(r.json()["response"])


def build_prompt(skill, item, topic):
    spec = SKILL_SPEC[skill]
    diff = DIFF_NOTE.get(item["difficulty"], "")
    if skill in PRESERVE_SKILLS:
        opts = item["options"]
        correct = item["correct_answer"]
        opt_lines = "\n".join(
            f'  {o["id"]}: "{o["text"]}"' + ("  <- CORRECT" if o["id"] == correct else "")
            for o in opts
        )
        return f"""{spec}
{diff}
Seed topic (write about this; do not mention it is a seed): {topic}

The four answer options are FIXED and must NOT change. They are:
{opt_lines}

Return JSON exactly:
{{
  "passage": "75-100 word academic passage ending in a sentence with one '______' blank",
  "explanations": {{ "A": "...", "B": "...", "C": "...", "D": "..." }},
  "overall": "1-2 sentence summary naming why the correct mark is right and the others fail"
}}"""
    extra = '\n  "target_word": "the word being tested (must appear in the passage)",' if skill == "WIC" else ""
    return f"""{spec}
{diff}
Seed topic (write about this; do not mention it is a seed): {topic}

Return JSON exactly:
{{
  "question_text": "the question stem",{extra}
  "passage": "the passage / stimulus text",
  "choices": {{"A": "...", "B": "...", "C": "...", "D": "..."}},
  "correct_answer": "A, B, C, or D",
  "explanations": {{"A": "...", "B": "...", "C": "...", "D": "..."}}
}}"""


def adapt(skill, item, out):
    if skill in PRESERVE_SKILLS:
        passage = (out.get("passage") or "").strip()
        expl = out.get("explanations") or {}
        if "______" not in passage:
            raise ValueError("no blank in passage")
        options = []
        for o in item["options"]:
            e = (expl.get(o["id"]) or "").strip()
            if not e:
                raise ValueError(f"missing explanation for {o['id']}")
            options.append({"id": o["id"], "text": o["text"],
                            "is_correct": bool(o["is_correct"]), "explanation": e})
        return {
            "id": item["id"],
            "question_text": item.get("question_text") or BOU_Q,
            "stimulus_text": passage,
            "options": options,
            "correct_answer": item["correct_answer"],
            "explanation": (out.get("overall") or "").strip() or "See per-option explanations.",
        }
    # Be tolerant of the alternate keys smaller models use (esp. TRA).
    passage = (out.get("passage") or out.get("stimulus_text") or out.get("stimulus")
               or out.get("text") or out.get("paragraph") or out.get("passage_text") or "").strip()
    choices = out.get("choices") or out.get("options") or out.get("answer_choices") or {}
    if isinstance(choices, list):  # normalize [{id,text}] or ["a","b"] -> {A:..}
        d = {}
        for i, c in enumerate(choices):
            if isinstance(c, dict):
                k = (str(c.get("id") or c.get("label") or "") or chr(65 + i)).strip().upper()[:1]
                d[k] = c.get("text") or c.get("value") or c.get("choice") or ""
            else:
                d[chr(65 + i)] = c
        choices = d
    correct = (out.get("correct_answer") or out.get("answer") or out.get("correct")
               or out.get("correct_choice") or "").strip().upper()[:1]
    expl = out.get("explanations") or out.get("explanation") or {}
    if not isinstance(expl, dict):
        expl = {}
    if not passage:
        raise ValueError("empty passage")
    if correct not in ("A", "B", "C", "D"):
        raise ValueError(f"bad correct_answer {correct!r}")
    options = []
    for letter in ("A", "B", "C", "D"):
        text = (choices.get(letter) or "").strip()
        if not text:
            raise ValueError(f"missing choice {letter}")
        e = (expl.get(letter) or "").strip() or ("Correct." if letter == correct else "Incorrect for this item.")
        options.append({"id": letter, "text": text, "is_correct": letter == correct, "explanation": e})
    if skill == "WIC":
        w = (out.get("target_word") or "").strip()
        qt = f'As used in the text, "{w}" most nearly means' if w else item.get("question_text")
    elif skill == "TRA":
        qt = TRA_Q
    else:
        qt = (out.get("question_text") or "").strip() or item.get("question_text")
    return {
        "id": item["id"],
        "question_text": qt,
        "stimulus_text": passage,
        "options": options,
        "correct_answer": correct,
        "explanation": (expl.get(correct) or "").strip() or "See per-option explanations.",
    }


def gen_item(skill, item):
    last = None
    for salt in range(4):
        try:
            out = ollama(build_prompt(skill, item, topic_for(item["id"], salt)), temperature=0.7 + 0.07 * salt)
            return adapt(skill, item, out)
        except Exception as e:
            last = e
            time.sleep(0.5)
    raise RuntimeError(f"{item['id']} failed: {last}")


def sh_json(script):
    # Retry transient DB connection failures instead of silently returning [],
    # which would make the pipeline think there's nothing to do and exit.
    last = ""
    for attempt in range(4):
        res = subprocess.run(["node", script], capture_output=True, text=True,
                             env={**os.environ, "NODE_TLS_REJECT_UNAUTHORIZED": "0"}, cwd=ROOT)
        out = res.stdout.strip().splitlines()
        if res.returncode == 0 and out:
            try:
                return json.loads(out[-1])
            except Exception as e:
                last = f"parse: {e}"
        else:
            last = (res.stderr or "").strip().splitlines()[-1] if res.stderr.strip() else f"exit {res.returncode}"
        time.sleep(3 * (attempt + 1))
    raise RuntimeError(f"{script} failed after retries: {last}")


def ensure_pg():
    """Self-heal: the 'pg' module keeps getting pruned from node_modules; reinstall
    it if Node can't resolve it, so applies never silently fail again."""
    r = subprocess.run(["node", "-e", "require.resolve('pg')"], capture_output=True, text=True, cwd=ROOT)
    if r.returncode != 0:
        print("[pipeline] 'pg' missing — reinstalling...", flush=True)
        subprocess.run(["npm", "install", "pg", "--no-save", "--no-audit", "--no-fund"],
                       capture_output=True, text=True, cwd=ROOT)


def _run_apply(path):
    res = subprocess.run(["node", APPLY, path], capture_output=True, text=True,
                         env={**os.environ, "NODE_TLS_REJECT_UNAUTHORIZED": "0"}, cwd=ROOT)
    return ("Applied" in res.stdout), (res.stdout + res.stderr).strip()


def apply_chunk(chunk_id, built):
    path = os.path.join(BATCH_DIR, f"{chunk_id}.json")
    with open(path, "w") as f:
        json.dump(built, f, indent=2)
    ok, log = _run_apply(path)
    for _ in range(3):  # retry; self-heal pg in between
        if ok:
            return True, log
        ensure_pg()
        time.sleep(1.5)
        ok, log = _run_apply(path)
    return ok, log


def sweep_disk_batches(label):
    """Re-apply every on-disk batch file whose chunk isn't fully in the DB yet.
    Recovers any work generated but not applied (e.g. during a pg outage)."""
    leftover = sh_json(REMAINING)
    recovered = 0
    for cid in leftover:
        f = os.path.join(BATCH_DIR, f"{cid}.json")
        if os.path.exists(f):
            ok, _ = _run_apply(f)
            if ok:
                recovered += 1
    if recovered:
        print(f"[pipeline] {label} sweep: re-applied {recovered} stranded chunks from disk", flush=True)
    return recovered


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--workers", type=int, default=4)
    ap.add_argument("--skills", type=str, default=None)
    ap.add_argument("--limit", type=int, default=None, help="max chunks")
    ap.add_argument("--max-items", type=int, default=None, help="cap total items (smoke test)")
    args = ap.parse_args()
    skills = set(s.strip().upper() for s in args.skills.split(",")) if args.skills else None

    print(f"[ollama] model={MODEL} workers={args.workers}")
    ensure_pg()                       # make sure DB writes will work at all
    sweep_disk_batches("startup")     # recover anything generated-but-not-applied
    done = set(sh_json(DONE_IDS))
    chunks = sh_json(REMAINING)
    if skills:
        chunks = [c for c in chunks if c.split("-")[0] in skills]
    if args.limit:
        chunks = chunks[:args.limit]

    work, pending, results = [], {}, {}
    for cid in chunks:
        items = json.load(open(os.path.join(CHUNK_DIR, f"{cid}.input.json")))
        todo = [it for it in items if it["id"] not in done]
        if not todo:
            continue
        pending[cid] = len(todo)
        results[cid] = []
        for it in todo:
            work.append((cid, it))
    if args.max_items:
        work = work[:args.max_items]
        pending, results = {}, {}
        for cid, it in work:
            pending[cid] = pending.get(cid, 0) + 1
            results.setdefault(cid, [])

    total = len(work)
    print(f"[ollama] {len(done)} done; {len(pending)} chunks, {total} items to generate")
    if not total:
        print("[ollama] nothing to do."); return

    applied_total, failed_total, t0 = 0, 0, time.time()
    lock = threading.Lock()

    def worker(cid, it):
        try:
            return cid, gen_item(cid.split("-")[0], it), None
        except Exception as e:
            return cid, None, str(e)

    with ThreadPoolExecutor(max_workers=args.workers) as ex:
        futs = [ex.submit(worker, cid, it) for cid, it in work]
        seen = 0
        for fut in as_completed(futs):
            seen += 1
            cid, obj, err = fut.result()
            with lock:
                if obj is not None:
                    results[cid].append(obj)
                else:
                    failed_total += 1
                    print(f"  [{seen}/{total}] FAIL {cid}: {err[:140]}", flush=True)
                # per-item heartbeat so progress is visible even mid-chunk
                rate = seen / max((time.time() - t0) / 60, 0.01)
                eta = (total - seen) / max(rate, 0.01)
                print(f"  ..{seen}/{total} generated  ({applied_total} applied, "
                      f"{rate:.1f}/min, ~{eta/60:.1f}h left)", flush=True)
                pending[cid] -= 1
                if pending[cid] == 0 and results[cid]:
                    ok, log = apply_chunk(cid, results[cid])
                    if ok:
                        applied_total += len(results[cid])
                        print(f"  [{seen}/{total}] OK {cid} applied {len(results[cid])} "
                              f"({(time.time()-t0)/60:.1f} min, {applied_total} total)", flush=True)
                    else:
                        print(f"  [{seen}/{total}] APPLY FAILED {cid}: {log[:300]}", flush=True)

    sweep_disk_batches("final")  # catch any chunk whose apply failed mid-run
    print(f"\n[ollama] done in {(time.time()-t0)/60:.1f} min. applied ~{applied_total}, failed {failed_total}.")


if __name__ == "__main__":
    main()
