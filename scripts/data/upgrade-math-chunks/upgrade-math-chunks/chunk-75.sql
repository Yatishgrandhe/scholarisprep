BEGIN;
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use elimination.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$, so $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":748,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '677907e2-9319-4bd0-b339-3d9d161e1ded';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5 \\pi$","is_correct":false,"explanation":"Choice A ($5 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$10 \\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$25 \\pi$","is_correct":false,"explanation":"Choice C ($25 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$100 \\pi$","is_correct":false,"explanation":"Choice D ($100 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2 \pi r$, where $r$ is the radius.  Substituting 5 for $r$, we get $C = 2 \pi (5) = 10 \pi$.

**Step 3 — Select B.** $10 \pi$

**Distractor analysis:**
- **A** ($5 \pi$): Choice A ($5 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($25 \pi$): Choice C ($25 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($100 \pi$): Choice D ($100 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":265,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"234e3498","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67ace73d-8fae-4829-9b09-6f5a5dae8c0a';

UPDATE public.questions SET
  question_text = 'A circle with center (2,3) passes through the point (5,7). What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2,3) passes through the point (5,7). What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle.  Using the distance formula, the distance between (2,3) and (5,7) is $\sqrt{(5-2)^2 + (7-3)^2} = \sqrt{3^2 + 4^2} = \sqrt{25} = 5$.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":106,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67cba1d3-abd1-4bd8-a69a-4182cbca5681';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius.  Substituting 5 for r gives us C = 2π(5), or C = 10π.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":660,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67cf99fe-4832-4b4d-9596-c1cd18948c76';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $5(x-2)+2k = 164$ have solution $x=34$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=34$."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Expand: $5x-10+2k=164$ → $5x=170$ → $x=34$ when $k=2$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$34$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=34$: $5(34-k)+2k=164$.
**Step 2:** Simplify: $170-5k+2k=164$ → $170+-3k=164$.
**Step 3:** Solve for $k$: $-3k=-6$ → $k=2$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67d6e476-4687-4aa2-b13d-43973cfee5d8';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let''s represent the number of people who like only apples as  *a*, the number of people who like only oranges as *o*, and the number of people who like both as *b*. We are given that *a* + *b* = 60, *o* + *b* = 40, and *b* = 20. Substituting *b* = 20 into the first two equations, we get *a* + 20 = 60 and *o* + 20 = 40. Solving for *a*, we find *a* = 60 - 20 = 40.  Therefore, 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":988,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_d8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67d8dd14-8577-42f7-aa79-71ba9441abdc';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 15 people like both apples and oranges. How many people like neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"35","is_correct":false,"explanation":"Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 15 people like both apples and oranges. How many people like neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem. Let A represent the set of people who like apples and O represent the set of people who like oranges. The number of people who like both apples and oranges is represented by the intersection of A and O.  The number of people who like only apples is 60 - 15 = 45. The number of people who like only oranges is 40 - 15 = 25. The total number of people who like apples or oranges is 45 + 15 + 25 = 85.  Therefore, the number of people who like neither apples nor oranges is 100 - 85 = 15.

**Step 3 — Select C.** 25

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (35): Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":155,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f249d34f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67fed4a9-b008-4704-9f62-08046019ac83';

UPDATE public.questions SET
  question_text = 'A regular hexagon has a side length of 6. What is the area of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"54\\sqrt{3}","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"18\\sqrt{3}","is_correct":false,"explanation":"Choice B (18\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36\\sqrt{3}","is_correct":false,"explanation":"Choice C (36\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"108\\sqrt{3}","is_correct":false,"explanation":"Choice D (108\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon has a side length of 6. What is the area of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The area of an equilateral triangle with side length s is  $\frac{\sqrt{3}}{4}s^2$, so the area of the hexagon is  $6 \cdot \frac{\sqrt{3}}{4}s^2 = \frac{3\sqrt{3}}{2}s^2$.  Substituting s = 6, we get $\frac{3\sqrt{3}}{2}(6)^2 = 54\sqrt{3}$.

**Step 3 — Select A.** 54\sqrt{3}

**Distractor analysis:**
- **B** (18\sqrt{3}): Choice B (18\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (36\sqrt{3}): Choice C (36\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (108\sqrt{3}): Choice D (108\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":768,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '68078a03-b679-487f-8528-6409b22c09a1';

COMMIT;
