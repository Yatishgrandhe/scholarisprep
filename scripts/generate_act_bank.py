#!/usr/bin/env python3
"""
Generate the ACT question bank (exam_type='ACT') for Scholaris.

Covers every subject and the question types found within each:
  - English : punctuation, sentence structure, usage (grammar), word choice,
              transitions/organization, topic development
  - Math    : number & quantity, algebra, functions, geometry (plane +
              coordinate), trigonometry, statistics & probability
  - Reading : prose fiction, social science, humanities, natural science
              (main idea, detail, inference, vocab-in-context, purpose, function)
  - Science : data representation, research summaries, conflicting viewpoints
              (read value, trend, interpolate/extrapolate, compare, design,
              evaluate models)

Every row carries a full markdown explanation plus per-option rationale, in the
same shape as the existing SAT rows. Deterministic (seeded) and idempotent:
re-running deletes prior rows tagged source='scholaris_act_gen' first.

Connection string is read from ~/.cursor/mcp.json (project aioyzumxxsepbnfivvdd),
falling back to $DATABASE_URL — no secrets are hardcoded.

Usage:
    python3 scripts/generate_act_bank.py            # generate + insert
    python3 scripts/generate_act_bank.py --dry-run  # build only, print counts
"""

import itertools
import json
import os
import random
import sys
from math import gcd

import psycopg2
import psycopg2.extras

PROJECT_ID = "aioyzumxxsepbnfivvdd"
SOURCE_TAG = "scholaris_act_gen"
LETTERS = ["A", "B", "C", "D", "E"]

rng = random.Random(20260627)


# --------------------------------------------------------------------------- #
# Connection
# --------------------------------------------------------------------------- #
def get_conn_string():
    if os.environ.get("DATABASE_URL"):
        return os.environ["DATABASE_URL"].strip()
    p = os.path.expanduser("~/.cursor/mcp.json")
    if not os.path.exists(p):
        raise SystemExit("no DATABASE_URL and no ~/.cursor/mcp.json")
    mcp = json.load(open(p))
    for cfg in (mcp.get("mcpServers") or {}).values():
        env = cfg.get("env") or {}
        if PROJECT_ID not in json.dumps(env):
            continue
        url = (
            env.get("POSTGRES_URL_NON_POOLING")
            or env.get("POSTGRES_URL")
            or env.get("DATABASE_URL")
        )
        if url:
            return url.strip()
    raise SystemExit(f"no Postgres URL for {PROJECT_ID} in ~/.cursor/mcp.json")


# --------------------------------------------------------------------------- #
# Row helpers
# --------------------------------------------------------------------------- #
def make_row(
    *,
    section,
    subject,
    topic,
    subtopic,
    domain_id,
    skill_id,
    difficulty,
    question_text,
    choices,            # list of (text, per-option-explanation)
    correct_index,
    explanation,
    stimulus_text=None,
    stimulus_type=None,
    calculator_allowed=False,
    seed_label="",
):
    options = []
    for i, (text, why) in enumerate(choices):
        options.append(
            {
                "id": LETTERS[i],
                "text": text,
                "is_correct": i == correct_index,
                "explanation": why,
            }
        )
    return {
        "exam_type": "ACT",
        "question_text": question_text,
        "stimulus_text": stimulus_text,
        "stimulus_type": stimulus_type,
        "question_type": "multiple_choice",
        "options": psycopg2.extras.Json(options),
        "correct_answer": LETTERS[correct_index],
        "explanation": explanation,
        "topic": topic,
        "subtopic": subtopic,
        "section": section,
        # DB check constraint allows only null / 'reading_writing' / 'math'.
        # The ACT subject is carried by `section`; keep `subject` valid here.
        "subject": subject if subject in ("reading_writing", "math") else None,
        "difficulty": difficulty,
        "domain_id": domain_id,
        "skill_id": skill_id,
        "calculator_allowed": calculator_allowed,
        "has_figure": False,
        "is_platform_question": True,
        "ai_generated": True,
        "desmos_recommended": False,
        "diagnostic_eligible": True,
        "challenge_only": False,
        "source": SOURCE_TAG,
        "tags": ["act", section, domain_id],
        "generation_seed": seed_label,
        # validation-only (ignored by the named-param INSERT template):
        "_opt_texts": [t for t, _ in choices],
    }


def wrong_block(choices, correct_index):
    """Standard '**Why the other choices are wrong:**' markdown tail."""
    lines = ["\n\n**Why the other choices are wrong:**"]
    for i, (text, why) in enumerate(choices):
        if i == correct_index:
            continue
        lines.append(f"- **{LETTERS[i]})** {text} — {why}")
    return "\n".join(lines)


def shuffle_with_correct(items, correct_item):
    """items: list of (text, why); returns (shuffled, index_of_correct)."""
    arr = items[:]
    rng.shuffle(arr)
    return arr, arr.index(correct_item)


# --------------------------------------------------------------------------- #
# MATH
# --------------------------------------------------------------------------- #
def money(n):
    return f"${n:,.2f}" if n % 1 else f"${n:,.0f}"


def near(value, deltas):
    out = []
    for d in deltas:
        v = value + d
        if v != value and v not in out:
            out.append(v)
    return out


def fmt(n):
    if isinstance(n, float) and n.is_integer():
        n = int(n)
    return str(n)


def gen_math():
    rows = []

    # 1. Linear equation: a*x + b = c  (Algebra)
    for _ in range(150):
        a = rng.randint(2, 9)
        x = rng.randint(2, 20)
        b = rng.randint(-15, 25)
        c = a * x + b
        sign = "+" if b >= 0 else "-"
        q = f"If ${a}x {sign} {abs(b)} = {c}$, what is the value of $x$?"
        correct = ("$x = " + fmt(x) + "$", "Correct. Subtract the constant, then divide by the coefficient.")
        distractors = [
            ("$x = " + fmt(x + 1) + "$", "This is off by one — recheck the subtraction step."),
            ("$x = " + fmt(c - b) + "$", "You divided incorrectly; remember to divide by the coefficient of $x$."),
            ("$x = " + fmt(x - 2) + "$", "Arithmetic slip when isolating $x$."),
            ("$x = " + fmt(c + b) + "$", "You added the constant instead of subtracting it."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Solve ${a}x {sign} {abs(b)} = {c}$ for $x$.\n\n"
            f"**Step 1.** Move the constant: ${a}x = {c} {('-' if b>=0 else '+')} {abs(b)} = {c-b}$.\n"
            f"**Step 2.** Divide by ${a}$: $x = {fmt(x)}$.\n\n"
            f"**Answer: {LETTERS[ci]})** $x = {fmt(x)}$."
            + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Algebra",
            subtopic="Linear equations in one variable", domain_id="algebra",
            skill_id="LIN", difficulty="easy", question_text=q, choices=ch,
            correct_index=ci, explanation=expl, calculator_allowed=True,
            seed_label="act_math_linear",
        ))

    # 2. Percent of a number  (Number & Quantity)
    for _ in range(110):
        base = rng.choice([40, 50, 60, 80, 120, 150, 200, 240, 300, 450])
        pct = rng.choice([5, 10, 15, 20, 25, 30, 40, 60, 75])
        val = base * pct / 100
        q = f"What is ${pct}\\%$ of ${base}$?"
        correct = (fmt(val), "Correct. Multiply the base by the percent written as a decimal.")
        distractors = [
            (fmt(base * pct), "You forgot to divide by 100 when converting the percent."),
            (fmt(round(base / pct, 2)), "You divided instead of multiplying."),
            (fmt(val * 2), "This is double the correct amount."),
            (fmt(base - val), "This is the amount remaining, not the percent asked for."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Find ${pct}\\%$ of ${base}$.\n\n"
            f"**Step 1.** Write the percent as a decimal: ${pct}\\% = {pct/100}$.\n"
            f"**Step 2.** Multiply: ${pct/100} \\times {base} = {fmt(val)}$.\n\n"
            f"**Answer: {LETTERS[ci]})** {fmt(val)}." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Number & Quantity",
            subtopic="Percent", domain_id="number_quantity", skill_id="PCT",
            difficulty="easy", question_text=q, choices=ch, correct_index=ci,
            explanation=expl, calculator_allowed=True, seed_label="act_math_percent",
        ))

    # 3. Slope between two points  (Coordinate Geometry)
    for _ in range(90):
        x1, y1 = rng.randint(-6, 6), rng.randint(-6, 6)
        x2 = x1 + rng.choice([1, 2, 3, 4])
        y2 = y1 + rng.choice([-6, -4, -3, -2, 2, 3, 4, 6])
        num, den = y2 - y1, x2 - x1
        g = gcd(num, den) or 1
        slope = f"{num//g}/{den//g}" if den // g != 1 else f"{num//g}"
        q = (f"What is the slope of the line passing through the points "
             f"$({x1}, {y1})$ and $({x2}, {y2})$?")
        correct = (f"${slope}$", "Correct. Slope is the change in $y$ divided by the change in $x$.")
        distractors = [
            (f"${den//g}/{num//g if num//g!=0 else 1}$", "You inverted the ratio (run over rise instead of rise over run)."),
            (f"${-num//g}/{den//g}$" if den//g!=1 else f"${-num//g}$", "Watch the sign of the change in $y$."),
            (f"${num+den}$", "You added the coordinates instead of taking a difference."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Find the slope through $({x1},{y1})$ and $({x2},{y2})$.\n\n"
            f"**Step 1.** Slope $= \\dfrac{{y_2-y_1}}{{x_2-x_1}} = \\dfrac{{{y2}-{y1}}}{{{x2}-{x1}}} = \\dfrac{{{num}}}{{{den}}}$.\n"
            f"**Step 2.** Simplify to ${slope}$.\n\n"
            f"**Answer: {LETTERS[ci]})** ${slope}$." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Coordinate Geometry",
            subtopic="Slope", domain_id="geometry", skill_id="SLP",
            difficulty="medium", question_text=q, choices=ch, correct_index=ci,
            explanation=expl, calculator_allowed=True, seed_label="act_math_slope",
        ))

    # 4. Pythagorean theorem  (Plane Geometry)
    triples = [(3, 4, 5), (6, 8, 10), (5, 12, 13), (8, 15, 17), (9, 12, 15),
               (7, 24, 25), (20, 21, 29), (9, 40, 41), (12, 16, 20), (10, 24, 26),
               (15, 20, 25), (16, 30, 34)]
    for (ta, tb, tc), k in itertools.product(triples, [1, 2, 3]):
        a, b, c = ta * k, tb * k, tc * k
        if rng.random() < 0.5:
            # find the hypotenuse
            q = (f"A right triangle has legs of length ${a}$ and ${b}$. "
                 f"What is the length of the hypotenuse?")
            correct = (fmt(c), "Correct. The hypotenuse is $\\sqrt{a^2+b^2}$.")
            distractors = [
                (fmt(a + b), "You added the legs instead of using the Pythagorean theorem."),
                (fmt(c - 1), "Close, but recompute $\\sqrt{a^2+b^2}$ exactly."),
                (fmt(abs(b - a)), "This is the difference of the legs, not the hypotenuse."),
            ]
            expl = (
                f"**Goal.** Find the hypotenuse of a right triangle with legs ${a}$ and ${b}$.\n\n"
                f"**Step 1.** $c = \\sqrt{{{a}^2 + {b}^2}} = \\sqrt{{{a*a} + {b*b}}} = \\sqrt{{{a*a+b*b}}}$.\n"
                f"**Step 2.** $c = {fmt(c)}$.\n\n"
            )
        else:
            # find a missing leg
            q = (f"A right triangle has one leg of length ${a}$ and a hypotenuse of "
                 f"length ${c}$. What is the length of the other leg?")
            correct = (fmt(b), "Correct. A missing leg is $\\sqrt{c^2-a^2}$.")
            distractors = [
                (fmt(c - a), "You subtracted the lengths instead of using the theorem."),
                (fmt(b + 1), "Close, but recompute $\\sqrt{c^2-a^2}$ exactly."),
                (fmt(a + c), "You added the known sides; that is not how the theorem works."),
            ]
            expl = (
                f"**Goal.** Find the missing leg given a leg ${a}$ and hypotenuse ${c}$.\n\n"
                f"**Step 1.** $b = \\sqrt{{{c}^2 - {a}^2}} = \\sqrt{{{c*c} - {a*a}}} = \\sqrt{{{c*c-a*a}}}$.\n"
                f"**Step 2.** $b = {fmt(b)}$.\n\n"
            )
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = expl + f"**Answer: {LETTERS[ci]})** {correct[0]}." + wrong_block(ch, ci)
        rows.append(make_row(
            section="math", subject="math", topic="Plane Geometry",
            subtopic="Right triangles (Pythagorean theorem)", domain_id="geometry",
            skill_id="PYT", difficulty="medium", question_text=q, choices=ch,
            correct_index=ci, explanation=expl, calculator_allowed=True,
            seed_label="act_math_pyth",
        ))

    # 5. Mean of a data set  (Statistics & Probability)
    for _ in range(80):
        n = rng.choice([4, 5, 6])
        mean = rng.randint(6, 30)
        data = [mean + rng.randint(-5, 5) for _ in range(n - 1)]
        last = mean * n - sum(data)
        data.append(last)
        rng.shuffle(data)
        if last < 0:
            continue
        q = f"What is the mean (average) of the numbers ${', '.join(map(str, data))}$?"
        correct = (fmt(mean), "Correct. Add the values and divide by how many there are.")
        distractors = [
            (fmt(mean + 1), "Recheck your sum or your count."),
            (fmt(sum(data)), "This is the total, not the average."),
            (fmt(round(sum(data) / (n + 1), 2)), "You divided by the wrong count."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Find the mean of ${', '.join(map(str, data))}$.\n\n"
            f"**Step 1.** Add them: sum $= {sum(data)}$.\n"
            f"**Step 2.** Divide by the count ${n}$: ${sum(data)} \\div {n} = {fmt(mean)}$.\n\n"
            f"**Answer: {LETTERS[ci]})** {fmt(mean)}." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Statistics & Probability",
            subtopic="Mean", domain_id="statistics", skill_id="MEAN",
            difficulty="easy", question_text=q, choices=ch, correct_index=ci,
            explanation=expl, calculator_allowed=True, seed_label="act_math_mean",
        ))

    # 6. Simple probability  (Statistics & Probability)
    for _ in range(70):
        red = rng.randint(2, 9)
        blue = rng.randint(2, 9)
        green = rng.randint(1, 6)
        total = red + blue + green
        color, count = rng.choice([("red", red), ("blue", blue), ("green", green)])
        g = gcd(count, total)
        frac = f"{count//g}/{total//g}"
        q = (f"A bag contains ${red}$ red, ${blue}$ blue, and ${green}$ green marbles. "
             f"If one marble is drawn at random, what is the probability it is {color}?")
        correct = (f"${frac}$", "Correct. Probability is favorable outcomes over total outcomes.")
        distractors = [
            (f"${count}/{total - count}$", "You used non-favorable outcomes in the denominator."),
            (f"${count}/{total + count}$", "The denominator should be the total number of marbles."),
            (f"${total}/{count}$", "You inverted the ratio."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Find P({color}).\n\n"
            f"**Step 1.** Total marbles $= {red}+{blue}+{green} = {total}$.\n"
            f"**Step 2.** P({color}) $= \\dfrac{{{count}}}{{{total}}} = {frac}$.\n\n"
            f"**Answer: {LETTERS[ci]})** ${frac}$." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Statistics & Probability",
            subtopic="Probability", domain_id="statistics", skill_id="PROB",
            difficulty="medium", question_text=q, choices=ch, correct_index=ci,
            explanation=expl, calculator_allowed=True, seed_label="act_math_prob",
        ))

    # 7. Function evaluation  (Functions)
    for _ in range(90):
        a = rng.randint(2, 6)
        b = rng.randint(-8, 8)
        c = rng.randint(-6, 6)
        x = rng.randint(-4, 6)
        val = a * x * x + b * x + c
        sb = "+" if b >= 0 else "-"
        sc = "+" if c >= 0 else "-"
        q = (f"If $f(x) = {a}x^2 {sb} {abs(b)}x {sc} {abs(c)}$, "
             f"what is $f({x})$?")
        correct = (fmt(val), "Correct. Substitute the input and evaluate carefully.")
        distractors = [
            (fmt(a * x + b * x + c), "You used $x$ instead of $x^2$ in the first term."),
            (fmt(val + 2 * abs(b)), "Sign error on the middle term."),
            (fmt(val - 2 * abs(c)), "Sign error on the constant term."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Evaluate $f({x})$ for $f(x) = {a}x^2 {sb} {abs(b)}x {sc} {abs(c)}$.\n\n"
            f"**Step 1.** Substitute $x={x}$: ${a}({x})^2 {sb} {abs(b)}({x}) {sc} {abs(c)}$.\n"
            f"**Step 2.** Compute: ${a*x*x} {('+' if b*x>=0 else '-')} {abs(b*x)} {sc} {abs(c)} = {fmt(val)}$.\n\n"
            f"**Answer: {LETTERS[ci]})** {fmt(val)}." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Functions",
            subtopic="Evaluating functions", domain_id="functions", skill_id="FEV",
            difficulty="medium", question_text=q, choices=ch, correct_index=ci,
            explanation=expl, calculator_allowed=True, seed_label="act_math_func",
        ))

    # 8. Right-triangle trigonometry  (Trigonometry)
    def red(n, d):
        g = gcd(n, d) or 1
        return f"{n//g}/{d//g}"

    trig_triples = [(3, 4, 5), (6, 8, 10), (5, 12, 13), (8, 15, 17),
                    (20, 21, 29), (7, 24, 25), (9, 40, 41), (12, 35, 37)]
    ratio_defs = [
        ("sine", lambda a, b, c: (a, c), "opposite over hypotenuse"),
        ("cosine", lambda a, b, c: (b, c), "adjacent over hypotenuse"),
        ("tangent", lambda a, b, c: (a, b), "opposite over adjacent"),
    ]
    for (ta, tb, tc), k in itertools.product(trig_triples, [1, 2]):
        a, b, c = ta * k, tb * k, tc * k
        for (ratio, pick, name) in ratio_defs:
            num, den = pick(a, b, c)
            frac = red(num, den)
            inv = red(den, num)
            # the other two ratio values, used as pedagogically meaningful distractors
            others = [red(*p(a, b, c)) for (rn, p, _) in ratio_defs if rn != ratio]
            q = (f"In a right triangle, the side opposite angle $A$ is ${a}$, the side "
                 f"adjacent to angle $A$ is ${b}$, and the hypotenuse is ${c}$. "
                 f"What is the {ratio} of angle $A$?")
            correct = (f"${frac}$", f"Correct. The {ratio} is {name}.")
            distractors = [
                (f"${inv}$", "You inverted the ratio (numerator and denominator are flipped)."),
                (f"${others[0]}$", f"That is a different trig ratio, not the {ratio} of angle $A$."),
                (f"${others[1]}$", f"That is a different trig ratio, not the {ratio} of angle $A$."),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                f"**Goal.** Find the {ratio} of angle $A$.\n\n"
                f"**Step 1.** {ratio.capitalize()} $=$ {name} $= \\dfrac{{{num}}}{{{den}}}$.\n"
                f"**Step 2.** Simplify to ${frac}$.\n\n"
                f"**Answer: {LETTERS[ci]})** ${frac}$." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="math", subject="math", topic="Trigonometry",
                subtopic="Right-triangle trig (SOH-CAH-TOA)", domain_id="trigonometry",
                skill_id="TRIG", difficulty="hard", question_text=q, choices=ch,
                correct_index=ci, explanation=expl, calculator_allowed=True,
                seed_label="act_math_trig",
            ))

    # 9. Proportions / unit rate  (Number & Quantity)
    for _ in range(80):
        rate_num = rng.randint(2, 9)
        rate_den = rng.choice([2, 3, 4, 5])
        mult = rng.randint(3, 12)
        want = rate_den * mult
        ans = rate_num * mult
        item = rng.choice(["pages", "miles", "liters", "widgets", "problems"])
        per = rng.choice(["minutes", "hours", "days"])
        q = (f"A machine produces ${rate_num}$ {item} every ${rate_den}$ {per}. "
             f"At this rate, how many {item} does it produce in ${want}$ {per}?")
        correct = (fmt(ans), "Correct. Scale the rate up by the same factor.")
        distractors = [
            (fmt(ans + rate_num), "You scaled by one extra step."),
            (fmt(want), "That is the amount of time, not the number of " + item + "."),
            (fmt(round(want / rate_num, 2)), "You divided by the wrong quantity."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            f"**Goal.** Find {item} produced in ${want}$ {per}.\n\n"
            f"**Step 1.** ${want} \\div {rate_den} = {mult}$ groups of the base rate.\n"
            f"**Step 2.** ${rate_num} \\times {mult} = {fmt(ans)}$.\n\n"
            f"**Answer: {LETTERS[ci]})** {fmt(ans)}." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="math", subject="math", topic="Number & Quantity",
            subtopic="Rates and proportions", domain_id="number_quantity",
            skill_id="RATE", difficulty="medium", question_text=q, choices=ch,
            correct_index=ci, explanation=expl, calculator_allowed=True,
            seed_label="act_math_rate",
        ))

    return rows


# --------------------------------------------------------------------------- #
# ENGLISH
# --------------------------------------------------------------------------- #
def gen_english():
    rows = []

    subjects_sing = [
        ("The list of approved vendors", "list"),
        ("Each of the students", "each"),
        ("The box of old photographs", "box"),
        ("Neither of the candidates", "neither"),
        ("The collection of rare coins", "collection"),
        ("One of the engines", "one"),
        ("The bouquet of flowers", "bouquet"),
        ("Every one of the recipes", "every one"),
    ]
    verbs = [("is", "are"), ("was", "were"), ("seems", "seem"),
             ("contains", "contain"), ("has", "have"), ("looks", "look")]
    tails = [
        "ready for review.", "stored in the back office.", "on the table.",
        "carefully labeled.", "in excellent condition.", "due tomorrow.",
    ]
    # 1. Subject-verb agreement (Usage)
    for subj, _head in subjects_sing:
        for sv, pv in verbs:
            for tail in rng.sample(tails, 3):
                q = (f"{subj} ____ {tail}\n\nWhich choice makes the sentence "
                     f"grammatically correct?")
                correct = (sv, "Correct. The grammatical subject is singular, so the verb must be singular.")
                distractors = [
                    (pv, "The verb is plural, but the true subject (the head noun) is singular."),
                    ("be", "The base form “be” cannot serve as the conjugated main verb here."),
                    ("being", "An -ing form alone cannot be the main verb of the sentence."),
                ]
                ch, ci = shuffle_with_correct([correct] + distractors, correct)
                expl = (
                    f"**Skill: subject–verb agreement.** Ignore the words between the "
                    f"subject and the verb. The head of the subject phrase is singular, "
                    f"so the verb must be singular: **{sv}**.\n\n"
                    f"**Answer: {LETTERS[ci]})** {sv}." + wrong_block(ch, ci)
                )
                rows.append(make_row(
                    section="english", subject="english",
                    topic="Conventions of Standard English", subtopic="Subject-verb agreement",
                    domain_id="usage", skill_id="SVA", difficulty="medium",
                    question_text=q, choices=ch, correct_index=ci, explanation=expl,
                    seed_label="act_eng_sva",
                ))

    # 2. Comma after introductory element (Punctuation)
    intros = [
        "After the long meeting ended", "Because the road was closed",
        "Running toward the finish line", "By the end of the semester",
        "Although the forecast called for rain", "In the middle of the night",
        "To finish the project on time", "Once the experiment was complete",
    ]
    mains = [
        "the team decided to celebrate", "we took a different route home",
        "she felt a surge of excitement", "the students had improved noticeably",
        "the festival continued as planned", "the dog began to bark",
        "the crew worked through the weekend", "the data were finally ready",
    ]
    for intro in intros:
        for main in rng.sample(mains, 5):
            q = (f"{intro} ____ {main}.\n\nWhich choice correctly punctuates "
                 f"the sentence?")
            correct = (", ", "Correct. A comma sets off the introductory element from the main clause.")
            distractors = [
                ("; ", "A semicolon joins two independent clauses; the opening element is not independent."),
                (" ", "An introductory element needs a comma before the main clause."),
                (": ", "A colon introduces a list or explanation, which is not the case here."),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                "**Skill: punctuation (introductory comma).** When a dependent "
                "phrase or clause opens a sentence, separate it from the main clause "
                "with a comma.\n\n"
                f"**Answer: {LETTERS[ci]})** a comma." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="english", subject="english",
                topic="Conventions of Standard English", subtopic="Commas",
                domain_id="punctuation", skill_id="COMMA", difficulty="easy",
                question_text=q, choices=ch, correct_index=ci, explanation=expl,
                seed_label="act_eng_comma",
            ))

    # 3. Run-on / semicolon vs comma (Sentence Structure)
    clause_a = [
        "The hikers reached the summit at dawn", "The library closes early on Fridays",
        "The recipe calls for fresh basil", "The committee reviewed the proposal",
        "The storm knocked out power downtown", "The musicians rehearsed for hours",
    ]
    clause_b = [
        "the view stretched for miles", "students plan their visits accordingly",
        "the dried version works in a pinch", "they approved it unanimously",
        "crews restored it by morning", "the concert sold out quickly",
    ]
    for a, b in itertools.product(clause_a, clause_b):
        if True:
            q = (f"{a} ____ {b}.\n\nWhich choice best joins these two complete "
                 f"thoughts?")
            correct = ("; ", "Correct. A semicolon correctly joins two independent clauses.")
            distractors = [
                (", ", "A comma alone between two independent clauses creates a comma splice."),
                (" ", "Two independent clauses cannot simply run together."),
                (", so but ", "This piles up conjunctions and is ungrammatical."),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                "**Skill: sentence structure (run-ons).** Both halves are independent "
                "clauses. Join them with a semicolon (or a comma + coordinating "
                "conjunction). A comma alone is a splice.\n\n"
                f"**Answer: {LETTERS[ci]})** a semicolon." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="english", subject="english",
                topic="Conventions of Standard English", subtopic="Run-ons and comma splices",
                domain_id="sentence_structure", skill_id="RUNON", difficulty="medium",
                question_text=q, choices=ch, correct_index=ci, explanation=expl,
                seed_label="act_eng_runon",
            ))

    # 4. Apostrophes — possessive vs plural (Punctuation)
    owners = [("dog", "dogs"), ("student", "students"), ("company", "companies"),
              ("child", "children"), ("teacher", "teachers"), ("city", "cities")]
    things = ["leashes", "grades", "profits", "toys", "lesson plans", "parks"]
    apos_frames = [
        "The two ____ {thing} were ready.",
        "Both ____ {thing} impressed the judges.",
        "All of the ____ {thing} were on display.",
        "Several ____ {thing} needed attention.",
        "The ____ {thing} lined the hallway.",
    ]
    for ((sing, plur), thing), frame in itertools.product(zip(owners, things), apos_frames):
        if True:
            q = (frame.format(thing=thing) + f"\n\nWhich choice correctly "
                 f"shows that the {thing} belong to more than one {sing}?")
            # Plural possessive: add only an apostrophe if the plural ends in -s,
            # otherwise add 's (e.g. children's).
            if plur.endswith("s"):
                poss_plural = plur + "'"
                bad_plural_poss = plur + "'s"
                bad_note = "Adding ’s after a plural already ending in -s is incorrect."
            else:
                poss_plural = plur + "'s"
                bad_plural_poss = plur + "s'"
                bad_note = "This misplaces the apostrophe for an irregular plural."
            correct = (poss_plural, "Correct. A plural possessive places the apostrophe to show the noun owns something.")
            distractors = [
                (plur, "This is just the plural; it shows no possession."),
                (sing + "'s", "This is singular possessive, but the sentence says there are two."),
                (bad_plural_poss, bad_note),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                "**Skill: punctuation (apostrophes).** To show possession by a plural "
                "noun that already ends in -s, add only an apostrophe after the s "
                "(for irregular plurals like “children,” add ’s).\n\n"
                f"**Answer: {LETTERS[ci]})** {poss_plural}." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="english", subject="english",
                topic="Conventions of Standard English", subtopic="Apostrophes",
                domain_id="punctuation", skill_id="APOS", difficulty="medium",
                question_text=q, choices=ch, correct_index=ci, explanation=expl,
                seed_label="act_eng_apos",
            ))

    # 5. Transitions (Production of Writing / Organization)
    rel = [
        ("contrast", "however", ["therefore", "for example", "in addition"]),
        ("cause-effect", "therefore", ["nevertheless", "similarly", "meanwhile"]),
        ("addition", "furthermore", ["however", "in contrast", "instead"]),
        ("example", "for instance", ["consequently", "on the other hand", "in conclusion"]),
        ("sequence", "next", ["in contrast", "as a result", "for example"]),
    ]
    context = [
        ("The first trial failed to produce useful data", "the team redesigned the procedure"),
        ("Sales rose sharply in the spring", "the company expanded its staff"),
        ("The author praises the city's parks", "she criticizes its crowded streets"),
        ("The recipe is simple", "even beginners can follow it"),
        ("The museum added new exhibits", "attendance increased"),
    ]
    for (relname, good, bad3) in rel:
        for (s1, s2) in context:
            q = (f"{s1}. ____, {s2}.\n\nWhich transition best fits the "
                 f"{relname} relationship between the two sentences?")
            correct = (good.capitalize(), f"Correct. “{good.capitalize()}” signals a {relname} relationship.")
            distractors = [(b.capitalize(), f"“{b.capitalize()}” signals the wrong relationship here.") for b in bad3]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                f"**Skill: transitions (organization).** The sentences have a "
                f"{relname} relationship, so the transition must signal {relname}: "
                f"**{good}**.\n\n"
                f"**Answer: {LETTERS[ci]})** {good.capitalize()}." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="english", subject="english", topic="Production of Writing",
                subtopic="Transitions", domain_id="organization", skill_id="TRANS",
                difficulty="medium", question_text=q, choices=ch, correct_index=ci,
                explanation=expl, seed_label="act_eng_trans",
            ))

    # 6. Word choice / concision (Knowledge of Language)
    wordy = [
        ("due to the fact that", "because"),
        ("at this point in time", "now"),
        ("in the event that", "if"),
        ("for the purpose of", "to"),
        ("a large number of", "many"),
        ("in spite of the fact that", "although"),
        ("has the ability to", "can"),
        ("in order to", "to"),
    ]
    frames = [
        "The researchers continued the study ____ the results were promising.",
        "____ reduce waste, the office switched to digital forms.",
        "The volunteers stayed late ____ finish the project.",
        "The city built more bike lanes ____ residents requested them.",
        "The museum stayed open late ____ visitors had asked for evening hours.",
        "____ cut costs, the team renegotiated its contracts.",
    ]
    for (long, short) in wordy:
        for frame in frames:
            sentence = frame.replace("____", long)
            q = (f"{sentence}\n\nWhich choice for the underlined portion is most "
                 f"concise while keeping the meaning clear?")
            correct = (short, "Correct. It conveys the same meaning in the fewest words.")
            distractors = [
                (long, "NO CHANGE keeps the wordy original; a single word does the job."),
                ("in a manner such that " + short, "A wordy paraphrase that adds no meaning."),
                (short + " of the fact that", "Redundant padding makes this less concise."),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                "**Skill: knowledge of language (concision).** The ACT rewards the "
                "shortest grammatical option that preserves meaning. Wordy phrases "
                "like “" + long + "” should be trimmed to “" + short + ".”\n\n"
                f"**Answer: {LETTERS[ci]})** {short}." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="english", subject="english", topic="Knowledge of Language",
                subtopic="Concision and word choice", domain_id="word_choice",
                skill_id="CONC", difficulty="medium", question_text=q, choices=ch,
                correct_index=ci, explanation=expl, seed_label="act_eng_conc",
            ))

    # 7. Add / delete relevant detail (Topic Development)
    topics = [
        ("a paragraph about how solar panels save homeowners money",
         "Over time, the panels can lower monthly electricity bills substantially.",
         "Solar panels are typically dark blue or black in color."),
        ("a paragraph explaining why the team practiced footwork drills",
         "The drills sharpened the players' balance and speed on defense.",
         "The gym had recently been repainted a bright shade of green."),
        ("a paragraph about the benefits of community gardens",
         "Shared plots give neighbors fresh produce and a reason to gather.",
         "The nearest hardware store closes at nine o'clock on weekdays."),
        ("a paragraph describing how the bridge improved local traffic",
         "Commute times across the river fell by nearly half after it opened.",
         "The mayor enjoys sailing on weekends during the summer."),
        ("a paragraph about why the school added a recycling program",
         "Within a year, the program cut the school's landfill waste by a third.",
         "The cafeteria recently introduced a new pizza on Fridays."),
        ("a paragraph explaining how sleep affects memory",
         "Studies show that the brain consolidates new memories during deep sleep.",
         "Many students prefer to study in the library rather than at home."),
        ("a paragraph on the advantages of electric buses for a city",
         "The electric fleet runs more quietly and emits no exhaust downtown.",
         "Bus drivers must complete a written test before they are hired."),
        ("a paragraph about how the coral reef supports local fishing",
         "The reef shelters the young fish that local crews later depend on.",
         "Scuba gear can be expensive for first-time divers to buy."),
        ("a paragraph describing the benefits of the new public library hours",
         "Extended evening hours let working residents visit after their shifts.",
         "The library building was designed by a well-known architect."),
        ("a paragraph on why the team switched to a plant-based menu",
         "The new menu lowered food costs while reducing the team's emissions.",
         "The stadium's parking lot was repaved over the summer."),
        ("a paragraph about how mentorship helped new employees",
         "Paired with mentors, new hires reached full productivity weeks sooner.",
         "The office is located on the fourth floor of the building."),
    ]
    for (about, relevant, irrelevant) in topics:
        if True:
            q = (f"The writer is composing {about}. Which sentence, if added, "
                 f"would best support the paragraph's focus?")
            correct = (relevant, "Correct. It directly develops the paragraph's main point.")
            distractors = [
                (irrelevant, "Off topic — it does not support the paragraph's focus."),
                ("This is a topic many people have opinions about.", "Vague filler that adds no relevant information."),
                ("The paragraph could be longer.", "A comment about length, not a relevant supporting detail."),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                "**Skill: topic development.** Added detail must advance the "
                "paragraph's stated focus. Only the option that develops that focus "
                "belongs.\n\n"
                f"**Answer: {LETTERS[ci]})** the on-topic supporting sentence." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="english", subject="english", topic="Production of Writing",
                subtopic="Relevant detail", domain_id="topic_development",
                skill_id="DETAIL", difficulty="medium", question_text=q, choices=ch,
                correct_index=ci, explanation=expl, seed_label="act_eng_detail",
            ))

    return rows


# --------------------------------------------------------------------------- #
# READING  (authored passages, all four genres + every question type)
# --------------------------------------------------------------------------- #
def reading_passages():
    return [
        {
            "genre": "Prose Fiction / Literary Narrative",
            "stype": "literary_narrative",
            "text": (
                "Mara had always measured the farm by its sounds: the screen door's "
                "complaint, the well pump's slow heartbeat, her grandfather humming "
                "off-key as he oiled the tractor. Standing in the empty kitchen now, "
                "she realized how much of her map of home had been built from noise "
                "rather than sight. The silence pressed against her like a stranger. "
                "She opened the window, and the wind carried the faint creak of the "
                "barn door swinging on its hinge — the one sound her grandfather had "
                "never gotten around to fixing. For the first time since the funeral, "
                "she smiled."
            ),
            "questions": [
                ("main", "The passage is mainly concerned with",
                 "how Mara experiences her home through sound and memory",
                 ["a detailed account of how to repair a farmhouse",
                  "an argument that farms are better than cities",
                  "Mara's plan to sell the family farm"]),
                ("detail", "According to the passage, the barn door is significant because it",
                 "produces a sound her grandfather never repaired",
                 ["was the loudest sound on the farm",
                  "had recently been replaced",
                  "reminded Mara of the funeral"]),
                ("inference", "It can reasonably be inferred that Mara's grandfather has",
                 "recently died",
                 ["moved to the city",
                  "sold the tractor",
                  "repaired the barn door"]),
                ("vocab", "As used in the passage, the word “complaint” most nearly means",
                 "creaking noise",
                 ["formal accusation", "illness", "written protest"]),
                ("function", "The final sentence primarily serves to",
                 "mark a shift toward comfort amid Mara's grief",
                 ["introduce a new character",
                  "describe the farm's layout",
                  "explain how the well pump works"]),
            ],
        },
        {
            "genre": "Social Science",
            "stype": "social_science",
            "text": (
                "When cities introduce bike-share programs, planners often expect a "
                "simple result: more cycling. The data, however, reveal a subtler "
                "story. In several mid-sized cities, bike-share use rose sharply in "
                "dense downtown cores but barely changed in outlying neighborhoods, "
                "where stations were sparse and trips longer. Researchers argue that "
                "convenience, not enthusiasm, drives adoption. A resident is far more "
                "likely to ride when a station sits within a short walk of both home "
                "and destination. The lesson for planners is that the network's "
                "density matters more than its total size."
            ),
            "questions": [
                ("main", "The main idea of the passage is that bike-share adoption",
                 "depends more on station convenience than on overall program size",
                 ["is identical across all neighborhoods",
                  "has failed in every city studied",
                  "is driven mainly by residents' enthusiasm"]),
                ("detail", "According to the passage, bike-share use rose sharply in",
                 "dense downtown cores",
                 ["outlying neighborhoods", "rural areas", "every neighborhood equally"]),
                ("inference", "The passage suggests that adding stations in outlying areas would be most effective if the stations were",
                 "placed densely enough to keep trips short",
                 ["painted bright colors",
                  "limited to weekends",
                  "more expensive to use"]),
                ("vocab", "As used in the passage, “subtler” most nearly means",
                 "more nuanced",
                 ["quieter", "weaker", "more secretive"]),
                ("purpose", "The author's primary purpose is to",
                 "correct a common assumption with evidence",
                 ["promote a specific bike brand",
                  "discourage cities from building bike lanes",
                  "narrate the history of cycling"]),
            ],
        },
        {
            "genre": "Humanities",
            "stype": "humanities",
            "text": (
                "The painter Aldo Rinaldi spent decades refusing to title his works, "
                "insisting that a name closes a door the viewer should be free to "
                "open. Critics found this maddening; collectors found it inconvenient. "
                "Yet Rinaldi's stance was not mere stubbornness. He believed that "
                "language, however precise, narrows perception — that the moment we "
                "call a canvas “Storm at Dusk,” we stop seeing the gray and begin "
                "seeing the storm. His untitled numbers, he argued, returned the act "
                "of meaning-making to the person standing before the work."
            ),
            "questions": [
                ("main", "The passage is primarily about Rinaldi's",
                 "reasons for leaving his paintings untitled",
                 ["techniques for mixing paint",
                  "financial disputes with collectors",
                  "training as a young artist"]),
                ("detail", "Critics reportedly found Rinaldi's practice",
                 "maddening",
                 ["inspiring", "profitable", "traditional"]),
                ("inference", "Rinaldi would most likely agree that a title can",
                 "limit how a viewer perceives a work",
                 ["increase a painting's monetary value",
                  "improve a painting's colors",
                  "guarantee a work's fame"]),
                ("vocab", "As used in the passage, “narrows” most nearly means",
                 "restricts",
                 ["sharpens", "widens", "darkens"]),
                ("function", "The example “Storm at Dusk” is used to",
                 "illustrate how a title can steer perception",
                 ["name Rinaldi's most famous work",
                  "show that Rinaldi changed his mind",
                  "describe an actual storm"]),
            ],
        },
        {
            "genre": "Natural Science",
            "stype": "natural_science",
            "text": (
                "Tardigrades, often called water bears, can survive conditions that "
                "kill nearly every other animal: boiling heat, the vacuum of space, "
                "and doses of radiation hundreds of times what a human can endure. "
                "Their secret lies partly in a process called anhydrobiosis. When "
                "their environment dries out, tardigrades expel most of their water "
                "and replace it with a sugar that turns their cells' interiors into a "
                "glass-like solid, locking fragile molecules in place. Revived with a "
                "drop of water, they resume life as though no time has passed. "
                "Researchers now study these proteins hoping to stabilize vaccines "
                "without refrigeration."
            ),
            "questions": [
                ("main", "The passage mainly explains",
                 "how tardigrades survive extreme conditions",
                 ["why tardigrades are dangerous to humans",
                  "how vaccines are manufactured",
                  "where tardigrades were first discovered"]),
                ("detail", "During anhydrobiosis, tardigrades replace lost water with",
                 "a sugar that solidifies their cell interiors",
                 ["salt", "oxygen", "additional water"]),
                ("inference", "The passage suggests that studying tardigrade proteins could lead to",
                 "vaccines that do not require refrigeration",
                 ["faster space travel",
                  "new sources of radiation",
                  "larger tardigrades"]),
                ("vocab", "As used in the passage, “endure” most nearly means",
                 "withstand",
                 ["enjoy", "measure", "produce"]),
                ("purpose", "The author includes the detail about radiation primarily to",
                 "emphasize how extreme the conditions tardigrades survive are",
                 ["warn readers about radiation exposure",
                  "compare tardigrades to humans' intelligence",
                  "explain how radiation is measured"]),
            ],
        },
        {
            "genre": "Prose Fiction / Literary Narrative",
            "stype": "literary_narrative",
            "text": (
                "On his first day driving the delivery route, Theo treated the map "
                "like scripture, checking it at every corner. By the second week he "
                "had stopped looking at it altogether; the streets had rearranged "
                "themselves into a private geography of landmarks — the bakery that "
                "opened at five, the dog that lunged at the same fence, the widow who "
                "waved from her porch whether or not she had a package. He used to "
                "think knowing a place meant memorizing its names. Now he suspected it "
                "meant being recognized by it."
            ),
            "questions": [
                ("main", "The passage mainly traces Theo's shift from",
                 "relying on a map to knowing the route through familiarity",
                 ["disliking his job to enjoying it",
                  "driving carefully to driving recklessly",
                  "living downtown to moving away"]),
                ("detail", "In the second week, Theo",
                 "stopped looking at the map",
                 ["got lost repeatedly",
                  "memorized every street name",
                  "asked the widow for directions"]),
                ("inference", "The passage suggests that, for Theo, truly knowing a place comes from",
                 "repeated, lived experience of it",
                 ["studying its official map",
                  "learning its history",
                  "meeting its officials"]),
                ("vocab", "As used in the passage, “scripture” most nearly emphasizes that Theo treated the map as",
                 "something to be followed exactly",
                 ["a religious text", "a boring chore", "a work of fiction"]),
                ("function", "The last sentence chiefly serves to",
                 "state the realization the anecdote has been building toward",
                 ["introduce a conflict with the widow",
                  "describe the delivery van",
                  "list the stops on the route"]),
            ],
        },
        {
            "genre": "Social Science",
            "stype": "social_science",
            "text": (
                "Economists once assumed that giving people more choices always made "
                "them better off. A series of studies on retirement savings "
                "complicates that view. When employees were offered dozens of "
                "investment funds, enrollment actually fell compared with plans that "
                "offered only a handful. Faced with too many options, many workers "
                "postponed the decision indefinitely. The finding does not mean choice "
                "is bad; rather, it suggests that beyond a certain point, additional "
                "options impose a cognitive cost that can outweigh their benefit."
            ),
            "questions": [
                ("main", "The passage is primarily concerned with",
                 "how too many choices can discourage decision-making",
                 ["why retirement savings are unnecessary",
                  "how to design investment funds",
                  "why economists never change their views"]),
                ("detail", "In the studies, offering dozens of funds was associated with",
                 "lower enrollment",
                 ["higher enrollment",
                  "no change in enrollment",
                  "faster decisions"]),
                ("inference", "The passage implies that a retirement plan would likely see higher enrollment if it offered",
                 "a smaller, more manageable set of options",
                 ["no options at all",
                  "as many options as possible",
                  "only high-risk funds"]),
                ("vocab", "As used in the passage, “complicates” most nearly means",
                 "challenges",
                 ["confuses", "simplifies", "repeats"]),
                ("purpose", "The author's main purpose is to",
                 "qualify a long-held assumption using research findings",
                 ["advise readers on which funds to buy",
                  "argue that choice is always harmful",
                  "describe the history of economics"]),
            ],
        },
        {
            "genre": "Humanities",
            "stype": "humanities",
            "text": (
                "For most of its history, jazz resisted being written down. Its "
                "early masters prized improvisation, treating a printed score as a "
                "starting point rather than a destination. When scholars later tried "
                "to preserve the music through transcription, they faced a paradox: "
                "the very act of fixing a solo on paper stripped away the spontaneity "
                "that made it jazz. Some argued that recordings, not notation, were "
                "the truer archive, because they captured the breath and hesitation a "
                "score could never hold."
            ),
            "questions": [
                ("main", "The passage is mainly about",
                 "the difficulty of preserving improvised jazz in written form",
                 ["the biographies of early jazz musicians",
                  "how to read musical notation",
                  "why jazz became commercially popular"]),
                ("detail", "Early jazz masters treated a printed score as",
                 "a starting point rather than a destination",
                 ["the only acceptable version",
                  "an unnecessary burden to discard",
                  "a precise record of each solo"]),
                ("inference", "The passage suggests that recordings capture something notation cannot, namely",
                 "the spontaneity of a live performance",
                 ["the names of the performers",
                  "the price of admission",
                  "the size of the audience"]),
                ("vocab", "As used in the passage, “fixing” most nearly means",
                 "setting permanently",
                 ["repairing", "deciding", "preparing"]),
                ("function", "The “paradox” mentioned in the passage refers to the fact that",
                 "preserving a solo on paper removes what made it jazz",
                 ["jazz musicians could not read music",
                  "recordings were illegal at first",
                  "scholars disliked jazz"]),
            ],
        },
        {
            "genre": "Natural Science",
            "stype": "natural_science",
            "text": (
                "Honeybees navigate using a surprising tool: the pattern of polarized "
                "light across the sky, invisible to human eyes. Even when the sun is "
                "hidden behind clouds, enough polarized light filters through for a bee "
                "to fix its heading. Returning foragers then translate that heading "
                "into the famous waggle dance, whose angle encodes the direction of a "
                "food source relative to the sun. Researchers testing the system "
                "covered portions of the sky with filters; bees misdirected their "
                "hivemates by precisely the angle the filters predicted, confirming "
                "that the dance is read, not merely performed."
            ),
            "questions": [
                ("main", "The passage is primarily about",
                 "how honeybees use polarized light to navigate and communicate direction",
                 ["how bees produce honey",
                  "why clouds form in the sky",
                  "how humans see polarized light"]),
                ("detail", "According to the passage, the angle of the waggle dance encodes",
                 "the direction of food relative to the sun",
                 ["the distance bees have flown",
                  "the temperature of the hive",
                  "the number of foragers"]),
                ("inference", "The filter experiment is best understood as evidence that the waggle dance is",
                 "actually interpreted by other bees",
                 ["performed only for show",
                  "unrelated to navigation",
                  "learned from humans"]),
                ("vocab", "As used in the passage, “fix” most nearly means",
                 "determine",
                 ["repair", "attach", "stare at"]),
                ("purpose", "The author describes the filter experiment mainly to",
                 "support the claim that bees read the dance's directional information",
                 ["explain how filters are manufactured",
                  "argue that bees cannot see clouds",
                  "describe the taste of honey"]),
            ],
        },
    ]


QTYPE_META = {
    "main": ("Main idea / central theme", "main_idea"),
    "detail": ("Key detail", "detail"),
    "inference": ("Inference", "inference"),
    "vocab": ("Vocabulary in context", "vocab_in_context"),
    "purpose": ("Author's purpose / point of view", "purpose"),
    "function": ("Function of a passage element", "function"),
}


def gen_reading():
    rows = []
    passages = reading_passages()
    # One row per (passage, question) — no duplicate stems.
    for rep in range(1):
        for p in passages:
            for (qtype, stem, correct_text, wrong_texts) in p["questions"]:
                topic, skill = QTYPE_META[qtype]
                why_correct = {
                    "main": "Correct. It captures the passage's overall focus.",
                    "detail": "Correct. The passage states this directly.",
                    "inference": "Correct. This follows logically from the passage's details.",
                    "vocab": "Correct. This meaning fits the word's use in context.",
                    "purpose": "Correct. This matches the author's evident aim.",
                    "function": "Correct. This is the role the element plays in the passage.",
                }[qtype]
                correct = (correct_text, why_correct)
                distractors = [(w, "Not supported by the passage as written.") for w in wrong_texts]
                ch, ci = shuffle_with_correct([correct] + distractors, correct)
                expl = (
                    f"**Genre: {p['genre']} · Skill: {topic.lower()}.** "
                    f"Reading the passage closely, the best-supported choice is "
                    f"“{correct_text}.” The other options distort, overstate, or "
                    f"contradict what the text actually says.\n\n"
                    f"**Answer: {LETTERS[ci]})** {correct_text}." + wrong_block(ch, ci)
                )
                rows.append(make_row(
                    section="reading", subject="reading", topic=topic,
                    subtopic=p["genre"], domain_id="reading", skill_id=skill,
                    difficulty="medium", question_text=stem, choices=ch,
                    correct_index=ci, explanation=expl,
                    stimulus_text=p["text"], stimulus_type=p["stype"],
                    seed_label=f"act_read_{skill}_{rep}",
                ))
    return rows


# --------------------------------------------------------------------------- #
# SCIENCE  (parametrized data sets + research summary + conflicting viewpoints)
# --------------------------------------------------------------------------- #
def gen_science():
    rows = []

    # --- Data Representation: a monotonic data table, several question types ---
    scenarios = [
        ("temperature (°C)", "reaction rate (mmol/s)", "Temperature", "the reaction rate", True),
        ("light intensity (lux)", "oxygen produced (mL/hr)", "Light intensity", "oxygen output", True),
        ("fertilizer (g)", "plant height (cm)", "Fertilizer amount", "plant height", True),
        ("depth (m)", "water pressure (kPa)", "Depth", "water pressure", True),
        ("time (min)", "remaining medication (mg)", "Time", "remaining medication", False),
        ("altitude (km)", "air density (kg/m³)", "Altitude", "air density", False),
    ]
    for (xlab, ylab, xname, yname, increasing) in scenarios:
        for _ in range(14):
            xs = [rng.randint(1, 5) * 10 for _ in range(1)]
            x0 = rng.choice([10, 20, 0, 5])
            step = rng.choice([5, 10, 15])
            base = rng.randint(5, 30)
            slope = rng.choice([2, 3, 4, 5]) * (1 if increasing else -1)
            xvals = [x0 + step * i for i in range(5)]
            yvals = [base + slope * i for i in range(5)]
            if any(v < 0 for v in yvals):
                base = abs(min(yvals)) + base
                yvals = [base + slope * i for i in range(5)]
            table = "Table 1\n\n" + f"{xlab} | {ylab}\n" + "--- | ---\n"
            table += "\n".join(f"{x} | {y}" for x, y in zip(xvals, yvals))

            # (a) read a value
            i = rng.randint(0, 4)
            q = (f"According to Table 1, when the {xlab} is {xvals[i]}, "
                 f"what is the {ylab}?")
            correct = (str(yvals[i]), "Correct. Read straight across from the given row.")
            distractors = [
                (str(yvals[i] + slope), "That is the value for the next row, not this one."),
                (str(yvals[(i+1) % 5] + 1), "Misread the row."),
                (str(xvals[i]), "That is the input value, not the measured value."),
            ]
            ch, ci = shuffle_with_correct([correct] + distractors, correct)
            expl = (
                "**Format: data representation (read a value).** Find the row whose "
                f"{xlab} equals {xvals[i]} and read the paired {ylab}.\n\n"
                f"**Answer: {LETTERS[ci]})** {yvals[i]}." + wrong_block(ch, ci)
            )
            rows.append(make_row(
                section="science", subject="science", topic="Data Representation",
                subtopic="Read a value", domain_id="interpretation_of_data",
                skill_id="READ", difficulty="easy", question_text=q, choices=ch,
                correct_index=ci, explanation=expl, stimulus_text=table,
                stimulus_type="data_table", seed_label="act_sci_read",
            ))

            # (b) trend
            direction = "increases" if increasing else "decreases"
            q2 = (f"Based on Table 1, as the {xlab} increases, the {ylab}")
            correct2 = (direction, f"Correct. Each successive row shows the {ylab} {direction}.")
            wrongdir = "decreases" if increasing else "increases"
            distractors2 = [
                (wrongdir, "This reverses the trend shown in the table."),
                ("stays the same", "The values change from row to row, so it is not constant."),
                ("first rises, then falls", "The table is monotonic; it does not reverse."),
            ]
            ch2, ci2 = shuffle_with_correct([correct2] + distractors2, correct2)
            expl2 = (
                "**Format: data representation (trend).** Compare consecutive rows: "
                f"the {ylab} consistently {direction} as the {xlab} grows.\n\n"
                f"**Answer: {LETTERS[ci2]})** {direction}." + wrong_block(ch2, ci2)
            )
            rows.append(make_row(
                section="science", subject="science", topic="Data Representation",
                subtopic="Identify a trend", domain_id="interpretation_of_data",
                skill_id="TREND", difficulty="medium", question_text=q2, choices=ch2,
                correct_index=ci2, explanation=expl2, stimulus_text=table,
                stimulus_type="data_table", seed_label="act_sci_trend",
            ))

            # (c) extrapolation
            nextx = xvals[-1] + step
            nexty = yvals[-1] + slope
            q3 = (f"If the pattern in Table 1 continues, the {ylab} when the "
                  f"{xlab} is {nextx} would most likely be")
            correct3 = (str(nexty), "Correct. Extend the constant step beyond the last row.")
            distractors3 = [
                (str(yvals[-1]), "That is the last value in the table, not the extrapolated one."),
                (str(nexty + slope), "That extends two steps instead of one."),
                (str(yvals[-1] - slope), "Wrong direction for the trend."),
            ]
            ch3, ci3 = shuffle_with_correct([correct3] + distractors3, correct3)
            expl3 = (
                "**Format: data representation (extrapolation).** The values change "
                f"by a constant {abs(slope)} each step, so continue the pattern one "
                f"more step: {yvals[-1]} → {nexty}.\n\n"
                f"**Answer: {LETTERS[ci3]})** {nexty}." + wrong_block(ch3, ci3)
            )
            rows.append(make_row(
                section="science", subject="science", topic="Data Representation",
                subtopic="Extrapolation", domain_id="scientific_investigation",
                skill_id="EXTRAP", difficulty="hard", question_text=q3, choices=ch3,
                correct_index=ci3, explanation=expl3, stimulus_text=table,
                stimulus_type="data_table", seed_label="act_sci_extrap",
            ))

    # --- Research Summaries: experiment design / controls ---
    experiments = [
        ("plant growth under different light colors",
         "the color of light", "the amount of water each plant received",
         "Keeping water constant isolates light color as the only variable that differs."),
        ("how surface type affects a ball's bounce height",
         "the surface material", "the height from which the ball is dropped",
         "Dropping from the same height isolates the surface as the tested variable."),
        ("the effect of salt concentration on boiling point",
         "the salt concentration", "the volume of water heated",
         "Using the same water volume isolates salt concentration as the variable."),
        ("how fertilizer type changes crop yield",
         "the type of fertilizer", "the size of each test plot",
         "Equal plot sizes ensure fertilizer type is the only variable that changes."),
        ("how water temperature affects how fast sugar dissolves",
         "the water temperature", "the amount of sugar added to each cup",
         "Using the same amount of sugar isolates temperature as the tested variable."),
        ("the effect of tire pressure on a car's fuel economy",
         "the tire pressure", "the distance driven in each test",
         "Driving the same distance each time isolates tire pressure as the variable."),
        ("how study method affects quiz scores",
         "the study method", "the difficulty of the quiz given",
         "Giving the same quiz isolates the study method as the variable being tested."),
        ("how soil pH affects the height of bean plants",
         "the soil pH", "the species of plant grown",
         "Growing the same species isolates soil pH as the only variable that changes."),
        ("the effect of insulation thickness on heat loss from a container",
         "the insulation thickness", "the starting temperature of the liquid",
         "Equal starting temperatures isolate insulation thickness as the variable."),
        ("how the angle of a ramp affects a cart's speed at the bottom",
         "the ramp angle", "the mass of the cart used",
         "Using the same cart isolates the ramp angle as the tested variable."),
    ]
    for (study, ivar, controlled, why) in experiments:
        stim = f"Researchers designed an experiment on {study}."
        # Q1: controlled variable
        q = (f"In an experiment studying {study}, which of the following should "
             f"be kept the same across all trials to produce a fair test?")
        correct = (controlled, "Correct. " + why)
        distractors = [
            (ivar, "This is the variable being tested, so it must change between trials."),
            ("the day of the week the trial is run", "Irrelevant to the outcome being measured."),
            ("the name given to each trial", "A label cannot affect the experimental result."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            "**Format: research summaries (experimental design).** A controlled "
            "variable is held constant so that only the independent variable can "
            "explain differences in the results.\n\n"
            f"**Answer: {LETTERS[ci]})** {controlled}." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="science", subject="science", topic="Research Summaries",
            subtopic="Experimental design (controls)", domain_id="scientific_investigation",
            skill_id="DESIGN", difficulty="medium", question_text=q, choices=ch,
            correct_index=ci, explanation=expl, stimulus_text=stim,
            stimulus_type="research_summary", seed_label="act_sci_design",
        ))
        # Q2: independent variable
        q2 = (f"In the experiment on {study}, which factor is the independent "
              f"variable that the researchers deliberately change?")
        correct2 = (ivar, "Correct. The independent variable is the one the researchers intentionally vary.")
        distractors2 = [
            (controlled, "This is held constant, so it is a controlled variable, not the independent one."),
            ("the measured outcome of each trial", "That is the dependent variable — the result, not the cause."),
            ("random measurement error", "Error is not a variable the researchers set on purpose."),
        ]
        ch2, ci2 = shuffle_with_correct([correct2] + distractors2, correct2)
        expl2 = (
            "**Format: research summaries (variables).** The independent variable is "
            "what the experimenter changes on purpose; the dependent variable is the "
            "measured result; controlled variables are held constant.\n\n"
            f"**Answer: {LETTERS[ci2]})** {ivar}." + wrong_block(ch2, ci2)
        )
        rows.append(make_row(
            section="science", subject="science", topic="Research Summaries",
            subtopic="Identify the variable", domain_id="scientific_investigation",
            skill_id="VAR", difficulty="medium", question_text=q2, choices=ch2,
            correct_index=ci2, explanation=expl2, stimulus_text=stim,
            stimulus_type="research_summary", seed_label="act_sci_var",
        ))

    # --- Conflicting Viewpoints ---
    debates = [
        ("the cause of a lake's declining fish population",
         "Scientist 1", "runoff from nearby farms has lowered oxygen levels in the water",
         "Scientist 2", "an introduced predator species is eating the young fish",
         "a sudden drop in dissolved oxygen with no new species present",
         "supports Scientist 1, who blames low oxygen from runoff",
         "supports Scientist 2, who blames a new predator"),
        ("why a region's average temperature has risen",
         "Researcher A", "increased greenhouse gases are trapping more heat",
         "Researcher B", "a natural multi-decade ocean cycle is responsible",
         "rising temperatures continuing well beyond the length of any known ocean cycle",
         "supports Researcher A, citing greenhouse gases",
         "supports Researcher B, citing a natural cycle"),
        ("what is eroding a stretch of coastline",
         "Geologist 1", "stronger storm waves are wearing away the cliffs",
         "Geologist 2", "groundwater seeping from within is weakening the rock",
         "erosion that is fastest during calm seasons after heavy rains",
         "supports Geologist 2, who points to groundwater",
         "supports Geologist 1, who points to storm waves"),
        ("why a species of frog is disappearing from a forest",
         "Biologist 1", "a fungal disease is killing the adult frogs",
         "Biologist 2", "loss of wetland breeding sites is reducing offspring",
         "healthy adult populations but almost no surviving tadpoles",
         "supports Biologist 2, who blames lost breeding sites",
         "supports Biologist 1, who blames a fungal disease"),
        ("what causes a metal bridge to expand on certain days",
         "Engineer 1", "rising air temperature expands the metal",
         "Engineer 2", "vibration from heavy traffic stretches the joints",
         "the greatest expansion on hot days with very little traffic",
         "supports Engineer 1, who blames temperature",
         "supports Engineer 2, who blames traffic vibration"),
        ("why a lake turns green each summer",
         "Scientist 1", "fertilizer runoff feeds rapid algae growth",
         "Scientist 2", "warmer water alone triggers the algae bloom",
         "blooms appearing only after heavy rains wash in farm runoff",
         "supports Scientist 1, who blames fertilizer runoff",
         "supports Scientist 2, who blames warmer water"),
    ]
    for (topic_q, n1, view1, n2, view2, evidence, supports1, supports2) in debates:
        stim = (f"Two scientists debate {topic_q}.\n\n"
                f"{n1}: {view1.capitalize()}.\n\n{n2}: {view2.capitalize()}.")
        # Q1: which view does the new evidence support?
        q = (f"New evidence shows {evidence}. This finding most directly")
        correct = (supports1, "Correct. The evidence matches this scientist's proposed mechanism.")
        distractors = [
            (supports2, "The evidence does not fit this viewpoint's mechanism."),
            ("supports neither viewpoint", "The evidence clearly aligns with one of the two positions."),
            ("proves both viewpoints equally", "The finding favors one mechanism over the other."),
        ]
        ch, ci = shuffle_with_correct([correct] + distractors, correct)
        expl = (
            "**Format: conflicting viewpoints (evaluate evidence).** Match the new "
            "finding to the mechanism each scientist proposed. The evidence is "
            "consistent with one position and inconsistent with the other.\n\n"
            f"**Answer: {LETTERS[ci]})** {correct[0]}." + wrong_block(ch, ci)
        )
        rows.append(make_row(
            section="science", subject="science", topic="Conflicting Viewpoints",
            subtopic="Evaluate evidence", domain_id="evaluation_of_models",
            skill_id="EVAL", difficulty="hard", question_text=q, choices=ch,
            correct_index=ci, explanation=expl, stimulus_text=stim,
            stimulus_type="conflicting_viewpoints", seed_label="act_sci_cv",
        ))
        # Q2: point of agreement (both accept the phenomenon exists)
        q2 = (f"Both scientists would most likely agree that")
        correct2 = (f"the change in {topic_q.split(' ', 1)[1] if ' ' in topic_q else topic_q} is real and needs an explanation",
                    "Correct. They disagree about the cause, not about whether the phenomenon is occurring.")
        distractors2 = [
            (view1 + " is the only possible cause", "Only one scientist holds this view; the other disagrees."),
            (view2 + " is the only possible cause", "Only one scientist holds this view; the other disagrees."),
            ("no further investigation is needed", "Their disagreement shows the question is still open."),
        ]
        ch2, ci2 = shuffle_with_correct([correct2] + distractors2, correct2)
        expl2 = (
            "**Format: conflicting viewpoints (points of agreement).** Two viewpoints "
            "that propose different causes still share the premise that the "
            "phenomenon is real and requires an explanation.\n\n"
            f"**Answer: {LETTERS[ci2]})** {correct2[0]}." + wrong_block(ch2, ci2)
        )
        rows.append(make_row(
            section="science", subject="science", topic="Conflicting Viewpoints",
            subtopic="Points of agreement", domain_id="evaluation_of_models",
            skill_id="AGREE", difficulty="hard", question_text=q2, choices=ch2,
            correct_index=ci2, explanation=expl2, stimulus_text=stim,
            stimulus_type="conflicting_viewpoints", seed_label="act_sci_agree",
        ))

    return rows


# --------------------------------------------------------------------------- #
# Insert
# --------------------------------------------------------------------------- #
COLUMNS = [
    "exam_type", "question_text", "stimulus_text", "stimulus_type", "question_type",
    "options", "correct_answer", "explanation", "topic", "subtopic", "section",
    "subject", "difficulty", "domain_id", "skill_id", "calculator_allowed",
    "has_figure", "is_platform_question", "ai_generated", "desmos_recommended",
    "diagnostic_eligible", "challenge_only", "source", "tags", "generation_seed",
]


def insert_rows(conn, rows):
    template = (
        "(%(exam_type)s::exam_type, %(question_text)s, %(stimulus_text)s, "
        "%(stimulus_type)s, %(question_type)s::question_type, %(options)s, "
        "%(correct_answer)s, %(explanation)s, %(topic)s, %(subtopic)s, "
        "%(section)s, %(subject)s, %(difficulty)s::difficulty, %(domain_id)s, "
        "%(skill_id)s, %(calculator_allowed)s, %(has_figure)s, "
        "%(is_platform_question)s, %(ai_generated)s, %(desmos_recommended)s, "
        "%(diagnostic_eligible)s, %(challenge_only)s, %(source)s, %(tags)s, "
        "%(generation_seed)s)"
    )
    sql = f"INSERT INTO questions ({', '.join(COLUMNS)}) VALUES %s"
    with conn.cursor() as cur:
        psycopg2.extras.execute_values(cur, sql, rows, template=template, page_size=200)
    conn.commit()


def main():
    dry = "--dry-run" in sys.argv

    builders = [
        ("Math", gen_math),
        ("English", gen_english),
        ("Reading", gen_reading),
        ("Science", gen_science),
    ]
    all_rows = []
    summary = {}
    seen = set()
    dropped = 0
    bad_opts = 0
    for name, fn in builders:
        kept = []
        for r in fn():
            opts = r.pop("_opt_texts")
            if len(set(opts)) != len(opts):
                bad_opts += 1
                continue
            key = (r["question_text"], r["stimulus_text"])
            if key in seen:
                dropped += 1
                continue
            seen.add(key)
            kept.append(r)
        summary[name] = len(kept)
        all_rows.extend(kept)

    print("ACT bank generation summary")
    for name, _ in builders:
        print(f"  {name:<9}: {summary[name]:>5}")
    print(f"  {'TOTAL':<9}: {len(all_rows):>5}   "
          f"(deduped {dropped} duplicate stems, dropped {bad_opts} with non-unique options)")

    # by question type / skill
    by_skill = {}
    for r in all_rows:
        key = f"{r['section']}/{r['skill_id']}"
        by_skill[key] = by_skill.get(key, 0) + 1
    print("\nCoverage by section/skill:")
    for k in sorted(by_skill):
        print(f"  {k:<28}: {by_skill[k]}")

    if dry:
        print("\n--dry-run: nothing written.")
        return

    conn = psycopg2.connect(get_conn_string(), sslmode="require")
    try:
        with conn.cursor() as cur:
            cur.execute(
                "DELETE FROM questions WHERE exam_type='ACT' AND source=%s",
                (SOURCE_TAG,),
            )
            deleted = cur.rowcount
        conn.commit()
        print(f"\nDeleted {deleted} prior ACT rows (source={SOURCE_TAG}).")
        insert_rows(conn, all_rows)
        with conn.cursor() as cur:
            cur.execute("SELECT count(*) FROM questions WHERE exam_type='ACT'")
            total = cur.fetchone()[0]
        print(f"Inserted {len(all_rows)} rows. ACT total now: {total}.")
    finally:
        conn.close()


if __name__ == "__main__":
    main()
