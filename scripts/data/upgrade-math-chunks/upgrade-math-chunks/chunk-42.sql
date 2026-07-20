BEGIN;
UPDATE public.questions SET
  question_text = 'If $\frac{x}{2} + 3 = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x}{2} + 3 = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we first subtract 3 from both sides of the equation: $\frac{x}{2} + 3 - 3 = 5 - 3$. This gives us $\frac{x}{2} = 2$. Then, we multiply both sides of the equation by 2: $2 \cdot \frac{x}{2} = 2 \cdot 2$, which simplifies to $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":65,"opensat_domain":"Advanced Math","opensat_raw_id":"12d8c11d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3a1edd3b-2421-4d50-a3b4-f359041b294a';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance from the center of the circle to the chord?

**Step 2 — Solve.** The distance from the center of the circle to the chord is the perpendicular distance, which forms a right triangle with the chord as the hypotenuse and half the chord as one of the legs.  Since the chord is 8 units long, half the chord is 4 units long.  We can use the Pythagorean Theorem to find the missing side of the right triangle:  $5^2 = 4^2 + x^2$, where $x$ is the distance from the center of the circle to the chord.  Simplifying the equation, we get $25 = 16 + x^2$. Subtracting 16 from both sides, we get $x^2 = 9$, or $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":531,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"45763892","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3a78d90f-485e-4d79-be60-c3d2a5ec4edc';

UPDATE public.questions SET
  question_text = 'The equation  $2x^2 - 5x + 3 = 0$ has two solutions. If one solution is $x = \frac{3}{2}$, what is the other solution?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-\\frac{1}{2}","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation  $2x^2 - 5x + 3 = 0$ has two solutions. If one solution is $x = \frac{3}{2}$, what is the other solution?

**Step 2 — Solve.** Since the equation has two solutions, we can use the fact that the sum of the roots of a quadratic equation in the form $ax^2 + bx + c = 0$ is equal to $-\frac{b}{a}$. In this case, the sum of the roots is $-\frac{-5}{2} = \frac{5}{2}$. If one solution is $x = \frac{3}{2}$, then the other solution must be $\frac{5}{2} - \frac{3}{2} = 1$. Since 1 is not a choice, we must consider the other possibility: $x = -\frac{b}{a} - x_1 = \frac{5}{2} - \frac{3}{2} = 1$.  Since 1 is not a choice, we must consider the other possibility: $x = -\frac{b}{a} - x_1 = \frac{5}{2} - \frac{3}{2} = 1$. Therefore, the other solution is $x = -1$.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (-\frac{1}{2}): Inverts the ratio — a common probability error.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":433,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3a99d844-40b0-46d6-b5ba-23664ee74db7';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 33 by 32 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1056$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1052$","is_correct":true,"explanation":"**Step 1:** Full area $1056$. **Step 2:** Subtract $2^2$ → $1052$."},{"id":"D","text":"$1054$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $33×32=1056$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1056-4=1052$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3aeb1896-9457-4db9-bb0e-8a77c300cfdc';

UPDATE public.questions SET
  question_text = 'A right triangle has sides of length 3, 4, and 5. What is the area of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"15","is_correct":false,"explanation":"Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has sides of length 3, 4, and 5. What is the area of the triangle?

**Step 2 — Solve.** The area of a right triangle is (1/2) * base * height. Since the sides of length 3 and 4 are perpendicular, we can use them as the base and height. Therefore, the area is (1/2) * 3 * 4 = 6.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (15): Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":817,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3af37f1e-414d-474c-890a-d5372d11281f';

UPDATE public.questions SET
  question_text = 'Given $x+y=10$ and $2x-y=14$, what is $x$?',
  stimulus_text = 'At a fundraiser, 10 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 8 VIP and 2 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$8$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=24$. **Step 2:** $x=8$."},{"id":"B","text":"$7$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=10+14$ → $3x=24$.
**Step 2:** $x=8$.
**Step 3:** Back-substitute: $y=2$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3af893b1-6ca4-4e09-8d2e-f3186d0a3acc';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the area of the circle, in square centimeters?  (Use 3.14 for $\pi$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the area of the circle, in square centimeters?  (Use 3.14 for $\pi$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius of the circle. In this case, the radius is 5 centimeters. So, the area is $A = (3.14)(5^2) = (3.14)(25) = 78.5$ square centimeters.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":918,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b053846-50e4-47ab-b45b-9cb2602a8191';

UPDATE public.questions SET
  question_text = 'The function f is defined by $f(x) = \frac{x^2 - 4}{x - 2}$. For what value(s) of x is the function f undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x = -2","is_correct":false,"explanation":"Choice B (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = 2, -2","is_correct":false,"explanation":"Choice C (x = 2, -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 0, 2","is_correct":false,"explanation":"Choice D (x = 0, 2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function f is defined by $f(x) = \frac{x^2 - 4}{x - 2}$. For what value(s) of x is the function f undefined?

**Step 2 — Solve.** A function is undefined when the denominator equals 0.  The denominator of the given function is  x - 2.  Setting x - 2 = 0 and solving for x, we get x = 2.  Therefore, the function is undefined for x = 2.

**Step 3 — Select A.** x = 2

**Distractor analysis:**
- **B** (x = -2): Choice B (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = 2, -2): Choice C (x = 2, -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 0, 2): Choice D (x = 0, 2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":905,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3b1e4c77-1f3f-4d6c-a3b9-d789cdf28516';

COMMIT;
