BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5.  What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25$\\pi$","is_correct":false,"explanation":"Choice C (25$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100$\\pi$","is_correct":false,"explanation":"Choice D (100$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5.  What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$, we get $C = 2\pi (5) = 10\pi$.

**Step 3 — Select B.** 10$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25$\pi$): Choice C (25$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100$\pi$): Choice D (100$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":821,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '87cc5707-7ebc-4588-a4c9-c2d9f19ceb29';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '881c39d7-2d3b-41ff-b6a2-cb75a7351fd5';

UPDATE public.questions SET
  question_text = 'A store is selling shirts for \$15 each.  For a sale, the store is offering a 20% discount on each shirt.  How much money is saved on a shirt during the sale?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$3$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\$12$","is_correct":false,"explanation":"Choice B ($\\$12$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$18$","is_correct":false,"explanation":"Choice C ($\\$18$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$24$","is_correct":false,"explanation":"Choice D ($\\$24$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A store is selling shirts for \$15 each.  For a sale, the store is offering a 20% discount on each shirt.  How much money is saved on a shirt during the sale?

**Step 2 — Solve.** A 20% discount on a \$15 shirt is equal to 0.20 * $15 = $3.  Therefore, \$3 is saved on a shirt during the sale.

**Step 3 — Select A.** $\$3$

**Distractor analysis:**
- **B** ($\$12$): Choice B ($\$12$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$18$): Choice C ($\$18$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$24$): Choice D ($\$24$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":248,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8843e31f-594d-40c8-a24a-5ff464d243d3';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $5(x-3)+2k = 41$ have solution $x=10$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=10$."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Expand: $5x-15+2k=41$ → $5x=50$ → $x=10$ when $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$10$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=10$: $5(10-k)+2k=41$.
**Step 2:** Simplify: $50-5k+2k=41$ → $50+-3k=41$.
**Step 3:** Solve for $k$: $-3k=-9$ → $k=3$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '88475851-8589-4ea2-b125-8519fcb7bd20';

UPDATE public.questions SET
  question_text = 'The equation  $x^2+4x-9=0$  can be solved by using the quadratic formula. What is the value of the discriminant of this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-40","is_correct":false,"explanation":"Choice A (-40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The equation  $x^2+4x-9=0$  can be solved by using the quadratic formula. What is the value of the discriminant of this equation?

**Step 2 — Solve.** The quadratic formula states that for the equation  $ax^2 + bx + c = 0$, the discriminant is $b^2 - 4ac$. In this case, $a = 1$, $b = 4$, and $c = -9$.  Therefore, the discriminant is $4^2 - 4(1)(-9) = 16 + 36 = 52$.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (-40): Choice A (-40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":188,"opensat_domain":"Algebra","opensat_raw_id":"d6a4f412","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '88738d94-d8cc-4f13-8422-dda48968f843';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 7 by 6 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$38$","is_correct":true,"explanation":"**Step 1:** Full area $42$. **Step 2:** Subtract $2^2$ → $38$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $7×6=42$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $42-4=38$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '88900dc1-1b6f-4431-95ac-d022418e92d1';

UPDATE public.questions SET
  question_text = 'A bakery sells cookies in packages of 6, 12, and 24. A customer buys 3 packages of cookies, and the total number of cookies is 42.  If the customer bought at least one package of each size, how many packages of 12 cookies did the customer buy?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A bakery sells cookies in packages of 6, 12, and 24. A customer buys 3 packages of cookies, and the total number of cookies is 42.  If the customer bought at least one package of each size, how many packages of 12 cookies did the customer buy?

**Step 2 — Solve.** Let x be the number of packages of 12 cookies the customer bought.  Since the customer bought at least one package of each size, the customer bought 1 package of 6 cookies and 1 package of 24 cookies.  The total number of cookies is 6 + 12x + 24 = 30 + 12x.  Since the total number of cookies is 42, we can set up the equation 30 + 12x = 42. Subtracting 30 from both sides of this equation yields 12x = 12.  Dividing both sides of this equation by 12 gives x = 1.  Therefore, the customer bought 1 package of 12 cookies.

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":370,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '89655db0-1a33-414a-ab20-a7d789162181';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-28)^2+30$, where $t$ is seconds. What is $h(31)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$30$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$57$","is_correct":true,"explanation":"**Step 1:** $h(31)=3(31-28)^2+30=3(9)+30=57$."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=31$: $h(31)=3(31-28)^2+30$.
**Step 2:** $(31-28)^2=9$ → $h(31)=57$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8969cf31-7fd7-4198-badf-8b175c6d0b62';

COMMIT;
