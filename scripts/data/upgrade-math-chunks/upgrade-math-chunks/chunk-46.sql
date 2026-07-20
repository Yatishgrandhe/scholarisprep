BEGIN;
UPDATE public.questions SET
  question_text = 'A rectangular garden is feet long and feet wide.  The garden is surrounded by a path that is feet wide.  What is the area, in square feet, of the path?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"64","is_correct":false,"explanation":"Choice A (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"96","is_correct":false,"explanation":"Choice B (96…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"144","is_correct":false,"explanation":"Choice C (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"192","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A rectangular garden is feet long and feet wide.  The garden is surrounded by a path that is feet wide.  What is the area, in square feet, of the path?

**Step 2 — Solve.** The area of the garden is  square feet. The area of the garden plus the path is  square feet. Therefore, the area of the path is  square feet.

**Step 3 — Select D.** 192

**Distractor analysis:**
- **A** (64): Choice A (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (96): Choice B (96…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144): Choice C (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":632,"opensat_domain":"Algebra","opensat_raw_id":"4e93f543","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3f34e32b-8abf-470d-86f0-2a3df30cf9d2';

UPDATE public.questions SET
  question_text = 'A store sells apples for $1.50 each and oranges for $0.75 each. If a customer buys 3 apples and 5 oranges, how much will the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7.50","is_correct":false,"explanation":"Choice A ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$9.75","is_correct":false,"explanation":"Choice B ($9.75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$10.50","is_correct":false,"explanation":"Choice C ($10.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$11.25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.50 each and oranges for $0.75 each. If a customer buys 3 apples and 5 oranges, how much will the customer spend in total?

**Step 2 — Solve.** The customer will spend 3 * $1.50 = $4.50 on apples and 5 * $0.75 = $3.75 on oranges. The total cost is $4.50 + $3.75 = $11.25.

**Step 3 — Select D.** $11.25

**Distractor analysis:**
- **A** ($7.50): Choice A ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($9.75): Choice B ($9.75…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($10.50): Choice C ($10.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":491,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"7c38d13a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3f594f17-2d99-4e44-b979-c92e637b67fe';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+30)^2 - (4x-30)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$480x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+30$, $v=4x-30$ → $480x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$120x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+900$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+30$, $v=4x-30$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(60)=480x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3f66ff2a-1382-4ece-b4f7-31114824ce2f';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $5(x-6)+2k = 72$ have solution $x=18$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=18$."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Expand: $5x-30+2k=72$ → $5x=90$ → $x=18$ when $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$18$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=18$: $5(18-k)+2k=72$.
**Step 2:** Simplify: $90-5k+2k=72$ → $90+-3k=72$.
**Step 3:** Solve for $k$: $-3k=-18$ → $k=6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3f685526-a55e-47e9-a98b-1845fc1c762e';

UPDATE public.questions SET
  question_text = 'A triangle has vertices at the points (0, 0), (4, 0), and (0, 3). What is the area of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has vertices at the points (0, 0), (4, 0), and (0, 3). What is the area of the triangle?

**Step 2 — Solve.** The triangle is a right triangle with base 4 and height 3, so its area is (1/2)(4)(3) = 6.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":289,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f4b32a65","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3f8e8ef9-2b19-4695-9f55-e6b634d54bf4';

UPDATE public.questions SET
  question_text = 'The expression  $\frac{x^2 - 2x - 8}{x^2 - 16}$ is equivalent to which of the following expressions, where $x \neq 4$ and $x \neq -4$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x-4}{x-2}$","is_correct":false,"explanation":"Choice A ($\\frac{x-4}{x-2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\frac{x + 2}{x + 4}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$\\frac{x-2}{x+4}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{x + 4}{x - 2}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression  $\frac{x^2 - 2x - 8}{x^2 - 16}$ is equivalent to which of the following expressions, where $x \neq 4$ and $x \neq -4$?

**Step 2 — Solve.** We can factor the numerator and denominator of the given expression:  $\frac{x^2 - 2x - 8}{x^2 - 16} = \frac{(x-4)(x+2)}{(x+4)(x-4)}$  Since $x \neq 4$ and $x \neq -4$, we can cancel the common factors, leaving us with $\frac{x-2}{x+4}$.

**Step 3 — Select C.** $\frac{x-2}{x+4}$

**Distractor analysis:**
- **A** ($\frac{x-4}{x-2}$): Choice A ($\frac{x-4}{x-2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\frac{x + 2}{x + 4}$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($\frac{x + 4}{x - 2}$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":369,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3f968cb9-93af-4256-a137-be3ce6622e63';

UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the roots of a quadratic equation in the form of $ax^2 + bx + c = 0$ is equal to $-b/a$. In this equation, $a = 1$, $b = -2$, and $c = -8$.  Therefore, the sum of the roots is $-(-2)/1 = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":49,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3fab9e4e-178b-4d45-94cc-7dbde3e72071';

UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $2x-y=41$, what is $x$?',
  stimulus_text = 'At a fundraiser, 64 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 35 VIP and 29 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=105$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=64+41$ → $3x=105$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3fce8be2-a073-4881-ab74-4817e4c4374b';

COMMIT;
