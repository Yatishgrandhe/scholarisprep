BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a circumference of 10\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 10\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius. We are given that C = 10\pi, so 10\pi = 2\pi r. Dividing both sides by 2\pi gives r = 5. The area of a circle is given by the formula A = \pi r^2. Substituting 5 for r gives A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":307,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"3d892d23","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3c8997a1-29c9-4173-a9cc-747b60e64b79';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 205 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3c968789-2251-4794-b6b5-052dbc1d4c8b';

UPDATE public.questions SET
  question_text = 'The circumference of a circle is 12\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144\\pi","is_correct":false,"explanation":"Choice C (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The circumference of a circle is 12\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  We know the circumference is 12\pi, so 12\pi = 2\pi r. Dividing both sides by 2\pi gives us r = 6. The area of a circle is given by the formula A = \pi r^2.  Substituting 6 for r, we get A = \pi(6)^2 = 36\pi.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144\pi): Choice C (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1010,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3cee0111-8cd0-4280-8f1b-1a7a887106c2';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 57% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 57% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 53% and 61%","is_correct":true,"explanation":"**Step 1:** Interval 53% to 61%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 53% to 61%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3d110ae6-fcd6-44e4-97d5-02191b1d0a9c';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve this system of equations, we can use elimination.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $(2x + 3y) + (3x - 3y) = 12 + 3$, which simplifies to $5x = 15$.  Dividing both sides by 5 gives us $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":313,"opensat_domain":"Algebra","opensat_raw_id":"8a214411","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3d756a25-815a-4a3c-b59e-c8f6822f5437';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 5*x*<sup>2</sup> - 3*x* + 2. What is the value of *f*(-2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-26","is_correct":false,"explanation":"Choice A (-26…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-16","is_correct":false,"explanation":"Choice B (-16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"16","is_correct":false,"explanation":"Choice C (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"26","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 5*x*<sup>2</sup> - 3*x* + 2. What is the value of *f*(-2)?

**Step 2 — Solve.** Substituting -2 for *x* in the function, we get *f*(-2) = 5(-2)<sup>2</sup> - 3(-2) + 2. Simplifying, we have *f*(-2) = 5(4) + 6 + 2 = 20 + 6 + 2 = 26.

**Step 3 — Select D.** 26

**Distractor analysis:**
- **A** (-26): Choice A (-26…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-16): Choice B (-16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (16): Choice C (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":725,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3d8ac478-f800-46d3-b251-238d611203fc';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 10\pi.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 10\pi.  What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by C = 2\pi r, where r is the radius of the circle.  We are given that C = 10\pi, so we can solve for r: 10\pi = 2\pi r, so r = 5.  The area of a circle is given by A = \pi r^2.  Substituting r = 5, we get A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":463,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3dc4d1d9-2de7-4589-b253-11f87adf2761';

UPDATE public.questions SET
  question_text = 'Given $x+y=81$ and $2x-y=48$, what is $x$?',
  stimulus_text = 'At a fundraiser, 81 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 43 VIP and 38 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$43$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=129$. **Step 2:** $x=43$."},{"id":"B","text":"$42$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=81+48$ → $3x=129$.
**Step 2:** $x=43$.
**Step 3:** Back-substitute: $y=38$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3e353563-b4ef-4017-a5ee-a26c5049ef3e';

COMMIT;
