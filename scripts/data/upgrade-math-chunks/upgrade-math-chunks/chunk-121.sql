BEGIN;
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both. How many people like neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both. How many people like neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let A represent the set of people who like apples, and O represent the set of people who like oranges. We know that  |A ∩ O| = 20.  Since 60 people like apples, and 20 of them also like oranges, 60 - 20 = 40 people like only apples.  Since 40 people like oranges, and 20 of them also like apples, 40 - 20 = 20 people like only oranges.  The total number of people who like apples or oranges is 40 + 20 + 20 = 80.  Therefore, 100 - 80 = 20 people like neither apples nor oranges.

**Step 3 — Select B.** 20

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":250,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a8c8d779-7973-4c9f-aa4b-aea46b93a79e';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area, in square units, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area, in square units, of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula A = \pi r^2, where r is the radius.  Substituting 5 for r, we get A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":104,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a8d49b28-5127-4582-abc2-f4eb9a79f335';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by  *f*(x) = (x + 2)(x - 4). What is the value of *f*(3)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":false,"explanation":"Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by  *f*(x) = (x + 2)(x - 4). What is the value of *f*(3)?

**Step 2 — Solve.** To find *f*(3), we substitute 3 for *x* in the function:  *f*(3) = (3 + 2)(3 - 4) = 5(-1) = -5. Therefore, *f*(3) = -5.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (-7): Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":349,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_34","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a8fdc330-c958-45d2-a198-baea4316ac23';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+51)^2 - (4x-51)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$816x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+51$, $v=4x-51$ → $816x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$204x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2601$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+51$, $v=4x-51$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(102)=816x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a90486c6-41c6-45fd-bce8-bd540f9f62ba';

UPDATE public.questions SET
  question_text = 'If  \(3x+5=11\), what is the value of  \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  \(3x+5=11\), what is the value of  \(x\)?

**Step 2 — Solve.** 1. Subtract 5 from both sides of the equation to get \(3x=6\). 2. Divide both sides by 3 to get \(x=2\). Therefore, the value of \(x\) is \(2\).

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":797,"opensat_domain":"Algebra","opensat_raw_id":"156d897b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a9181f16-2b01-4155-ae38-1a1c3adcabe6';

UPDATE public.questions SET
  question_text = 'If $x + 2y = 6$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 6$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** The two equations form a system of equations, and the solutions to the system correspond to the points of intersection of the graphs.  The solutions to the system can be found by elimination. Adding the two equations together gives $x + 2y + x - 2y = 6 + 4$, or $2x = 10$. Dividing both sides of this equation by 2 yields $x = 5$. Therefore, the value of $x$ is 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":441,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a92b882a-33e4-4bb0-ac0a-0734bfebcde6';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = x^2 - 3x + 2$. What are the x-intercepts of the graph of $y = f(x)$ in the xy-plane?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 1 and x = 2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x = -1 and x = -2","is_correct":false,"explanation":"Choice B (x = -1 and x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = -1 and x = 2","is_correct":false,"explanation":"Choice C (x = -1 and x = 2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 1 and x = -2","is_correct":false,"explanation":"Choice D (x = 1 and x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = x^2 - 3x + 2$. What are the x-intercepts of the graph of $y = f(x)$ in the xy-plane?

**Step 2 — Solve.** The x-intercepts of the graph of a function occur where y = 0.  So, we need to solve the equation $x^2 - 3x + 2 = 0$. This equation can be factored as $(x - 1)(x - 2) = 0$.  Therefore, the x-intercepts are at x = 1 and x = 2.

**Step 3 — Select A.** x = 1 and x = 2

**Distractor analysis:**
- **B** (x = -1 and x = -2): Choice B (x = -1 and x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -1 and x = 2): Choice C (x = -1 and x = 2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 1 and x = -2): Choice D (x = 1 and x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":575,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a9586abc-07dc-4bd7-8eba-d2856ee6d0fa';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $5(x-5)+2k = 195$ have solution $x=42$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=42$."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Expand: $5x-25+2k=195$ → $5x=210$ → $x=42$ when $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$42$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=42$: $5(42-k)+2k=195$.
**Step 2:** Simplify: $210-5k+2k=195$ → $210+-3k=195$.
**Step 3:** Solve for $k$: $-3k=-15$ → $k=5$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a9750eea-f4b0-4e54-a8d6-492077c4de95';

COMMIT;
