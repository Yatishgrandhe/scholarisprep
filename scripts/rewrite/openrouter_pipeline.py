#!/usr/bin/env python3
"""
Parallel OpenRouter generation pipeline (LangChain) for the remaining R&W questions.

- 25 concurrent workers (configurable), EACH generating exactly one question per call.
- 500 distinct seeded topics (topics500.py) to destroy template repetition.
- Skips items already tagged v2_authored_20260625 (never overwrites the good 559).
- Writes each completed chunk back through the validated Node applier.
- Robust retry/backoff for the OpenRouter free-tier rate limits.

Setup:
    pip install langchain-openai          # already installed
    # scripts/rewrite/.env holds OPENROUTER_API_KEY + OPENROUTER_MODEL (gitignored)

Run:
    python3 scripts/rewrite/openrouter_pipeline.py                  # all remaining
    python3 scripts/rewrite/openrouter_pipeline.py --max-items 6    # smoke test
    python3 scripts/rewrite/openrouter_pipeline.py --skills BOU,FSS
    python3 scripts/rewrite/openrouter_pipeline.py --workers 25
"""
import argparse
import json
import os
import re
import subprocess
import sys
import threading
import time
from concurrent.futures import ThreadPoolExecutor, as_completed

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, "scripts", "rewrite"))

from ollama_pipeline import build_prompt, adapt, SKILL_SPEC, SYSTEM  # reuse prompt+adapter
from topics500 import TOPICS_500

from langchain_openai import ChatOpenAI
from langchain_core.messages import SystemMessage, HumanMessage

CHUNK_DIR = os.path.join(ROOT, "scripts", "rewrite", "chunks")
BATCH_DIR = os.path.join(ROOT, "scripts", "rewrite", "batches")
APPLY = os.path.join(ROOT, "scripts", "rewrite", "apply-batch.mjs")
REMAINING = os.path.join(ROOT, "scripts", "rewrite", "remaining.mjs")
DONE_IDS = os.path.join(ROOT, "scripts", "rewrite", "done-ids.mjs")


def load_env():
    env = {}
    p = os.path.join(ROOT, "scripts", "rewrite", ".env")
    for line in open(p):
        line = line.strip()
        if line and "=" in line and not line.startswith("#"):
            k, v = line.split("=", 1)
            env[k] = v
    return env


ENV = load_env()
KEY = ENV["OPENROUTER_API_KEY"]
MODEL = os.environ.get("OPENROUTER_MODEL", ENV.get("OPENROUTER_MODEL", "openai/gpt-oss-20b:free"))

# One ChatOpenAI per thread (cheap; keeps the client thread-safe & isolated).
_tl = threading.local()


def llm():
    if not hasattr(_tl, "client"):
        _tl.client = ChatOpenAI(
            model=MODEL,
            api_key=KEY,
            base_url="https://openrouter.ai/api/v1",
            temperature=0.85,
            # gpt-oss is a reasoning model: it spends tokens "thinking" before the
            # JSON, so give a generous ceiling AND ask OpenRouter for low reasoning
            # effort so the budget lands on the answer, not the chain of thought.
            max_tokens=4000,
            timeout=240,
            max_retries=0,  # we do our own backoff
            model_kwargs={"response_format": {"type": "json_object"}},
            extra_body={"reasoning": {"effort": "low"}},
        )
    return _tl.client


def extract_json(text):
    """Robustly pull a JSON object out of a model reply.

    Handles: markdown ```json fences, leading reasoning prose, trailing 'Extra
    data', and raw control characters inside strings (gpt-oss emits literal
    newlines/tabs in string values) via strict=False.
    """
    text = (text or "").strip()
    if text.startswith("```"):
        text = re.sub(r"^```[a-zA-Z]*\n?", "", text)
        text = re.sub(r"\n?```$", "", text).strip()
    # balanced-brace scan from the first '{' to its matching '}'
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
    return json.loads(candidate, strict=False)  # strict=False tolerates raw \n in strings


def call_model(prompt):
    c = llm()
    msgs = [SystemMessage(content=SYSTEM), HumanMessage(content=prompt)]
    resp = c.invoke(msgs)
    return extract_json(resp.content)


def gen_item(skill, item):
    last = None
    for attempt in range(5):
        topic = TOPICS_500[(hash(item["id"]) + attempt) % len(TOPICS_500)]
        try:
            out = call_model(build_prompt(skill, item, topic))
            return adapt(skill, item, out)
        except Exception as e:
            last = e
            msg = str(e).lower()
            # backoff harder on rate limits
            wait = (3.0 if ("429" in msg or "rate" in msg) else 1.0) * (attempt + 1)
            time.sleep(wait)
    raise RuntimeError(f"{item['id']} failed: {last}")


def sh_json(script):
    res = subprocess.run(["node", script], capture_output=True, text=True,
                         env={**os.environ, "NODE_TLS_REJECT_UNAUTHORIZED": "0"}, cwd=ROOT)
    sys.stderr.write(res.stderr)
    out = res.stdout.strip().splitlines()
    return json.loads(out[-1]) if out else []


def apply_chunk(chunk_id, built):
    path = os.path.join(BATCH_DIR, f"{chunk_id}.json")
    with open(path, "w") as f:
        json.dump(built, f, indent=2)
    res = subprocess.run(["node", APPLY, path], capture_output=True, text=True,
                         env={**os.environ, "NODE_TLS_REJECT_UNAUTHORIZED": "0"}, cwd=ROOT)
    return ("Applied" in res.stdout), (res.stdout + res.stderr).strip()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--workers", type=int, default=25)
    ap.add_argument("--skills", type=str, default=None)
    ap.add_argument("--limit", type=int, default=None, help="max chunks")
    ap.add_argument("--max-items", type=int, default=None, help="cap total items (smoke test)")
    args = ap.parse_args()
    skills = set(s.strip().upper() for s in args.skills.split(",")) if args.skills else None

    print(f"[openrouter] model={MODEL} workers={args.workers}")
    done = set(sh_json(DONE_IDS))
    chunks = sh_json(REMAINING)
    if skills:
        chunks = [c for c in chunks if c.split("-")[0] in skills]
    if args.limit:
        chunks = chunks[:args.limit]

    # Build the flat work list (skip already-done items), tracking per-chunk membership.
    work, pending, results, ordered_items = [], {}, {}, {}
    for cid in chunks:
        items = json.load(open(os.path.join(CHUNK_DIR, f"{cid}.input.json")))
        todo = [it for it in items if it["id"] not in done]
        if not todo:
            continue
        pending[cid] = len(todo)
        results[cid] = []
        ordered_items[cid] = [it["id"] for it in todo]
        for it in todo:
            work.append((cid, it))
    if args.max_items:
        work = work[:args.max_items]
        # recompute pending for the trimmed set
        pending, results, ordered_items = {}, {}, {}
        for cid, it in work:
            pending[cid] = pending.get(cid, 0) + 1
            results.setdefault(cid, [])
            ordered_items.setdefault(cid, []).append(it["id"])

    total = len(work)
    print(f"[openrouter] {len(done)} done; {len(pending)} chunks, {total} items to generate")
    if not total:
        print("[openrouter] nothing to do."); return

    applied_total, failed_total, t0 = 0, 0, time.time()
    lock = threading.Lock()

    def worker(cid, it):
        skill = cid.split("-")[0]
        try:
            return cid, gen_item(skill, it), None
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
                    print(f"  [{seen}/{total}] FAIL {cid}: {err[:160]}")
                pending[cid] -= 1
                if pending[cid] == 0 and results[cid]:
                    ok, log = apply_chunk(cid, results[cid])
                    if ok:
                        applied_total += len(results[cid])
                        print(f"  [{seen}/{total}] OK {cid} applied {len(results[cid])} "
                              f"({(time.time()-t0)/60:.1f} min, {applied_total} total)")
                    else:
                        print(f"  [{seen}/{total}] APPLY FAILED {cid}: {log[:300]}")

    print(f"\n[openrouter] done in {(time.time()-t0)/60:.1f} min. "
          f"applied ~{applied_total}, failed {failed_total}.")


if __name__ == "__main__":
    main()
