BEGIN;
UPDATE public.questions SET
  question_text = 'If $\frac{2x + 3}{x - 7} = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-16","is_correct":false,"explanation":"Choice A (-16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x + 3}{x - 7} = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we first multiply both sides of the equation by $(x - 7)$: $2x + 3 = 5(x - 7)$. Expanding the right side, we get $2x + 3 = 5x - 35$. Subtracting $2x$ from both sides, we get $3 = 3x - 35$. Adding 35 to both sides, we get $38 = 3x$. Finally, dividing both sides by 3, we get $x = \frac{38}{3} = 12\frac{2}{3}$, which is not one of the given choices. Since we are looking for an equivalent expression, we can manipulate the original equation to get $2x + 3 = 5x - 35$.  Subtracting $2x$ and adding 35 to both sides, we get $38 = 3x$.  Finally, dividing both sides by 3, we get $x = \frac{38}{3} = 12\frac{2}{3}$. Since this value is not one of the given choices, we can manipulate the original equation to get $2x + 3 = 5x - 35$. Subtracting $2x$ and adding 35 to both sides, we get $38 = 3x$.  Finally, dividing both sides by 3, we get $x = \frac{38}{3} = 12\frac{2}{3}$.  Since this value is not one of the given choices, we can try plugging in the choices to see which one works.  Plugging in 16 for $x$ gives us $\frac{2(16) + 3}{16 - 7} = \frac{35}{9}$ which simplifies to 5.  Therefore, $x = 16$ is a solution to the equation.

**Step 3 — Select D.** 16

**Distractor analysis:**
- **A** (-16): Choice A (-16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":733,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd7df3035-bb0c-4efc-be41-1f2e3d9e9021';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 12 cm. What is the area of the circle, in square cm, in terms of \pi? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"72\\pi","is_correct":false,"explanation":"Choice C (72\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144\\pi","is_correct":false,"explanation":"Choice D (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 12 cm. What is the area of the circle, in square cm, in terms of \pi? 

**Step 2 — Solve.** The area of a circle is given by the formula \pi r^2, where r is the radius. Since the diameter is 12 cm, the radius is 6 cm. The area of the circle is then \pi (6 cm)^2 = 36\pi square cm.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (72\pi): Choice C (72\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144\pi): Choice D (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":58,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd7faa0b0-7fd6-46fc-8c0d-5d1be8c3e0f1';

UPDATE public.questions SET
  question_text = 'If $f(x) = \sqrt{x-3}$ and $g(x) = x^2 + 1$, what is the value of $f(g(2))$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \sqrt{x-3}$ and $g(x) = x^2 + 1$, what is the value of $f(g(2))$?

**Step 2 — Solve.** First find the value of $g(2)$: $g(2) = 2^2 + 1 = 5$. Now we find the value of $f(5)$: $f(5) = \sqrt{5 - 3} = \sqrt{2} = 2$.  So the value of $f(g(2))$ is 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":286,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd80937c1-e761-4335-92ef-776046e9eeb2';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly among themselves.  If the total cost of the trip is \$1500 and there are 5 friends, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"100","is_correct":false,"explanation":"Choice B (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"300","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"750","is_correct":false,"explanation":"Choice D (750…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly among themselves.  If the total cost of the trip is \$1500 and there are 5 friends, how much will each friend pay?

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost by the number of friends: $1500 / 5 = $300.

**Step 3 — Select C.** 300

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (100): Choice B (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (750): Choice D (750…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":998,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_15","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd81e5ec9-3f2d-4f38-ac76-c9f4b2b8225a';

UPDATE public.questions SET
  question_text = 'Given $x+y=107$ and $2x-y=61$, what is $x$?',
  stimulus_text = 'At a fundraiser, 107 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 56 VIP and 51 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$56$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=168$. **Step 2:** $x=56$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$57$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=107+61$ → $3x=168$.
**Step 2:** $x=56$.
**Step 3:** Back-substitute: $y=51$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd89a8766-742a-4eba-92a0-3c581dfc38a1';

UPDATE public.questions SET
  question_text = 'In the $xy$-plane, a circle has a center at $(4, -3)$ and a radius of $5$ units. What is the equation of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 4)^2 + (y + 3)^2 = 25","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(x + 4)^2 + (y - 3)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 4)^2 + (y + 3)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x + 4)^2 + (y - 3)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, a circle has a center at $(4, -3)$ and a radius of $5$ units. What is the equation of the circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center $(h, k)$ and radius $r$ is $(x-h)^2 + (y-k)^2 = r^2$.  Substituting the given values of $(h, k) = (4, -3)$ and $r=5$, we get the equation $(x - 4)^2 + (y + 3)^2 = 5^2$, or $(x - 4)^2 + (y + 3)^2 = 25$.

**Step 3 — Select A.** (x - 4)^2 + (y + 3)^2 = 25

**Distractor analysis:**
- **B** ((x + 4)^2 + (y - 3)^2 = 25): May result from squaring when you should multiply or add.
- **C** ((x - 4)^2 + (y + 3)^2 = 5): May result from squaring when you should multiply or add.
- **D** ((x + 4)^2 + (y - 3)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":333,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"5e05357e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd8c3e177-d41b-4f24-8650-dcfc958eba35';

UPDATE public.questions SET
  question_text = 'If $x^2+4x=21$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7 or 3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"7 or -3","is_correct":false,"explanation":"Choice B (7 or -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-3 or 3","is_correct":false,"explanation":"Choice C (-3 or 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7 or 3","is_correct":false,"explanation":"Choice D (7 or 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2+4x=21$, what is the value of $x$?

**Step 2 — Solve.** We can solve this quadratic equation by factoring. First, we need to move all the terms to one side: $x^2 + 4x - 21 = 0$.  Then we factor the quadratic expression:  $(x+7)(x-3) = 0$.  For the product of two terms to be zero, at least one of the terms must be zero. Therefore, either $x+7 = 0$ or $x-3 = 0$, which gives us $x = -7$ or $x=3$.

**Step 3 — Select A.** -7 or 3

**Distractor analysis:**
- **B** (7 or -3): Choice B (7 or -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-3 or 3): Choice C (-3 or 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7 or 3): Choice D (7 or 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":504,"opensat_domain":"Advanced Math","opensat_raw_id":"642e4e1a","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd8e5c773-901a-4e5d-a1b2-30ad99197301';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 5 > 149$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 149 grams but at most 162 grams to ship.',
  options = '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Too small: $7(18)+5=131$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"Still below threshold 149."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$21$","is_correct":true,"explanation":"**Step 1:** $7x > 144$. **Step 2:** $x > 20.571428571428573$. Smallest integer choice: 21."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 144$.
**Step 2:** $x > 20.57$.
**Step 3:** Among choices, $21$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd8f41b58-083a-4d0f-9964-84a79a9721b5';

COMMIT;
