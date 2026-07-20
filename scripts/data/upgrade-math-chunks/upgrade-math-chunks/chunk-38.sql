BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 2x^2 - 5x + 3$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 2x^2 - 5x + 3$. What is the value of $f(2)$?

**Step 2 — Solve.** To find the value of $f(2)$, we substitute 2 for $x$ in the function: $f(2) = 2(2)^2 - 5(2) + 3$.  Simplifying the expression, we get $f(2) = 8 - 10 + 3$, or $f(2) = 5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":750,"opensat_domain":"Advanced Math","opensat_raw_id":"e8923ac1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3478b514-3a26-46a1-b926-8aa2ab6c10a9';

UPDATE public.questions SET
  question_text = 'If $x + 2y = 7$ and $x - 2y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 7$ and $x - 2y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations by adding the two equations together.  Notice that the $y$ terms cancel out.  We get $(x + 2y) + (x - 2y) = 7 + 1$.  Simplifying, we have $2x = 8$.  Dividing both sides by 2 gives us $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":1008,"opensat_domain":"Algebra","opensat_raw_id":"f519561a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3505aba1-fabf-4c4c-b8a5-8d5376f20891';

UPDATE public.questions SET
  question_text = 'The equation $x^2-2x+k=0$ has exactly one solution. What is the value of $k$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2-2x+k=0$ has exactly one solution. What is the value of $k$?

**Step 2 — Solve.** A quadratic equation has exactly one solution when its discriminant is equal to zero.  The discriminant of the quadratic equation $ax^2 + bx + c = 0$ is $b^2 - 4ac$. For the given equation, $a = 1$, $b = -2$, and $c = k$.  Setting the discriminant equal to zero, we get $(-2)^2 - 4(1)(k) = 0$, or $4 - 4k = 0$. Solving for $k$ yields $k = 1$.

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":702,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3519d6c4-3820-4f28-98c3-e9e6a974727e';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 units is inscribed in a square.  What is the area, in square units, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 units is inscribed in a square.  What is the area, in square units, of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. The diameter of the circle is twice the radius, or 10 units.  The area of the square is the side length squared, so the area of the square is 10^2 = 100 square units.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":875,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '351b4fab-efb4-41e8-8350-180bbb9796f6';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 49 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{54}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{54}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{53}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 53 total. **Step 2:** P $=\\frac{4}{53}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 53.
**Step 2:** Conditional probability $=\frac{4}{53}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '353c4aba-e627-473d-93a1-8aad489e7c20';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10. What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20\\pi","is_correct":false,"explanation":"Choice C (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10. What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius of the circle. Since the diameter is 10, the radius is 5. Substituting 5 for r in the formula gives us C = 2\pi (5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20\pi): Choice C (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":150,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '35608f6f-dc00-48f9-9bd5-22724974d2d3';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5.  What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5.  What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting $r = 5$ into the formula gives us $C = 2\pi (5) = 10\pi$.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":829,"opensat_domain":"Advanced Math","opensat_raw_id":"6f28325d","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '35bde654-c454-4589-92fa-27ad13e80c6a';

UPDATE public.questions SET
  question_text = 'If $2x+3y=12$ and $x-y=1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x+3y=12$ and $x-y=1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination.  Multiplying the second equation by 3, we get $3x-3y=3$. Adding this equation to the first equation, we get $5x=15$. Dividing both sides by 5, we find $x=3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":931,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c11","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '35d248dc-ef7b-4afa-9a79-cd727c2db4ae';

COMMIT;
