BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with a diameter of 12 units has a chord that is 6 units long.  What is the distance, in units, from the center of the circle to the chord? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"3$\\sqrt{3}$","is_correct":false,"explanation":"Choice B (3$\\sqrt{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6$\\sqrt{3}$","is_correct":false,"explanation":"Choice D (6$\\sqrt{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with a diameter of 12 units has a chord that is 6 units long.  What is the distance, in units, from the center of the circle to the chord? 

**Step 2 — Solve.** A chord of a circle divides the circle into two segments.  The line segment drawn from the center of the circle to the midpoint of the chord is perpendicular to the chord. This line segment also bisects the chord.  Since the diameter is 12 units, the radius is 6 units.  A right triangle is formed by the radius, the line segment drawn from the center of the circle to the midpoint of the chord, and half the length of the chord. This right triangle is a 30-60-90 triangle, as the hypotenuse is twice the length of the shorter leg. The shorter leg of this triangle is 3 units, and the longer leg, which is the distance from the center of the circle to the chord, is units.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (3$\sqrt{3}$): Choice B (3$\sqrt{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6$\sqrt{3}$): Choice D (6$\sqrt{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":38,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd3389491-8bae-4c62-acdc-f7ee053a23f3';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{1}{x-2}$ is defined for all real numbers $x$ except $x = 2$. What is the value of $f(f(3))$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{1}{x-2}$ is defined for all real numbers $x$ except $x = 2$. What is the value of $f(f(3))$?

**Step 2 — Solve.** First, we find $f(3)$: $f(3) = \frac{1}{3-2} = 1$. Then, we find $f(f(3))$, which is the same as $f(1)$: $f(1) = \frac{1}{1-2} = -1$. Therefore, $f(f(3)) = -1$.

**Step 3 — Select C.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":27,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd35fa297-294e-432b-8fb0-9544f7b32277';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 44 by 43 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1892$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1888$","is_correct":true,"explanation":"**Step 1:** Full area $1892$. **Step 2:** Subtract $2^2$ → $1888$."},{"id":"D","text":"$1890$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $44×43=1892$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1892-4=1888$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd365663b-39e5-4e79-823a-29fb50a20255';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 13 ft from the wall and the top is 20 ft high.',
  options = '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$24$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{13^2+20^2}=24$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 13 and 20.
**Step 2:** $c=\sqrt{13^2+20^2}=24$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd3d1e5b1-8817-4314-bb36-40756330bb80';

UPDATE public.questions SET
  question_text = 'If $3x+7y=14$ and $2x-5y=1$, what is the value of $x+y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x+7y=14$ and $2x-5y=1$, what is the value of $x+y$?

**Step 2 — Solve.** To solve for $x+y$, we can multiply the first equation by 5 and the second equation by 7 to eliminate $y$. This gives us $15x + 35y = 70$ and $14x - 35y = 7$. Adding these equations together, we get $29x = 77$. Solving for $x$, we find $x=\frac{77}{29}$.  Substituting this value of $x$ into the first equation, we get $3(\frac{77}{29})+7y=14$. Solving for $y$, we find $y=\frac{35}{29}$. Therefore, $x+y = \frac{77}{29} + \frac{35}{29} = \frac{112}{29} = 3\frac{25}{29}$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":481,"opensat_domain":"Algebra","opensat_raw_id":"23c9d83a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd3eb180b-bc19-4bb0-8ee3-1a161e703ac3';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{1}{x-2}$ is defined for all real numbers except $x = 2$.  What is the value of $f(f(3))$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{1}{x-2}$ is defined for all real numbers except $x = 2$.  What is the value of $f(f(3))$?

**Step 2 — Solve.** First, we find $f(3)$: $f(3) = \frac{1}{3-2} = 1$. Then, we find $f(f(3)) = f(1) = \frac{1}{1-2} = -1$.

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":241,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd426eccc-c73e-430f-96c6-f4b89f500d47';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 42 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{46}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{45}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{46}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{45}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 45 total. **Step 2:** P $=\\frac{3}{45}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 45.
**Step 2:** Conditional probability $=\frac{3}{45}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd431fb33-b21a-4b2e-aab0-897155951176';

UPDATE public.questions SET
  question_text = 'The equation $3x-12 = 6x+3$ is equivalent to which of the following equations?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-3x=15$","is_correct":false,"explanation":"Choice A ($-3x=15$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$3x=9$","is_correct":false,"explanation":"Choice B ($3x=9$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$-3x=9$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$-3x=-15$","is_correct":false,"explanation":"Choice D ($-3x=-15$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The equation $3x-12 = 6x+3$ is equivalent to which of the following equations?

**Step 2 — Solve.** To solve for $x$, we can subtract $3x$ from both sides of the equation.  This gives us $-12 = 3x + 3$.  Subtracting 3 from both sides gives us $-15 = 3x$.  Dividing both sides by 3 gives us $-5 = x$.  This means $x$ must be equal to $-5$.  The only choice that gives a result of $-5$ when solved for $x$ is choice C.  Solving $-3x = 9$ for $x$ gives us $x = -3$, which is not correct.

**Step 3 — Select C.** $-3x=9$

**Distractor analysis:**
- **A** ($-3x=15$): Choice A ($-3x=15$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($3x=9$): Choice B ($3x=9$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($-3x=-15$): Choice D ($-3x=-15$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":897,"opensat_domain":"Algebra","opensat_raw_id":"c789f218","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd462b086-960a-4d95-ab89-d580ced4d076';

COMMIT;
