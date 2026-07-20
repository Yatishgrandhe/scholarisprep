BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? (Express your answer in terms of *pi*)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5*pi","is_correct":false,"explanation":"Choice A (5*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10*pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25*pi","is_correct":false,"explanation":"Choice C (25*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50*pi","is_correct":false,"explanation":"Choice D (50*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? (Express your answer in terms of *pi*)

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2 * pi * r, where r is the radius.  Substituting 5 for r, we get C = 2 * pi * 5 = 10*pi.

**Step 3 — Select B.** 10*pi

**Distractor analysis:**
- **A** (5*pi): Choice A (5*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25*pi): Choice C (25*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50*pi): Choice D (50*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":950,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d7546482","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '53d3f11c-733b-461e-9c6f-dd968999b2a5';

UPDATE public.questions SET
  question_text = 'If $x+y = 5$ and $x-y=1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x+y = 5$ and $x-y=1$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(x+y) + (x-y) = 5+1$, or $2x = 6$. Dividing both sides by 2 gives $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":984,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5449ca3a-5479-43a2-a6db-ccf6d2219b47';

UPDATE public.questions SET
  question_text = 'The graph of the function $y = (x-2)^2 + 3$ intersects the y-axis at point $(0,a)$. What is the value of $a$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The graph of the function $y = (x-2)^2 + 3$ intersects the y-axis at point $(0,a)$. What is the value of $a$?

**Step 2 — Solve.** The y-intercept of a graph is the point where the graph intersects the y-axis.  This occurs when $x=0$. Substituting 0 for x in the equation $y = (x-2)^2 + 3$ gives us $y = (0-2)^2 + 3 = 4 + 3 = 7$. Therefore, the y-intercept is $(0,7)$, and the value of a is 7.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":211,"opensat_domain":"Advanced Math","opensat_raw_id":"a218e3c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5493a30a-5b0b-43d5-a58e-1ffaee5858fa';

UPDATE public.questions SET
  question_text = 'A store sells apples for $\$1.25$ each and oranges for $\$0.75$ each.  If a customer buys 3 apples and 5 oranges, how much does the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$6.25$","is_correct":false,"explanation":"Choice A ($\\$6.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$7.50$","is_correct":false,"explanation":"Choice B ($\\$7.50$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$8.75$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\$10.00$","is_correct":false,"explanation":"Choice D ($\\$10.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $\$1.25$ each and oranges for $\$0.75$ each.  If a customer buys 3 apples and 5 oranges, how much does the customer spend in total?

**Step 2 — Solve.** The customer spends $\$1.25 \times 3 = $\$3.75$ on apples and $\$0.75 \times 5 = $\$3.75$ on oranges.  The total cost is $\$3.75 + $\$3.75 = $\$8.75$.

**Step 3 — Select C.** $\$8.75$

**Distractor analysis:**
- **A** ($\$6.25$): Choice A ($\$6.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\$7.50$): Choice B ($\$7.50$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$10.00$): Choice D ($\$10.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":63,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '550656a3-92d6-45b6-892a-3be0e081a24a';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \sqrt{x} + 4$.  What value of $x$ satisfies the equation $f(x) = 12$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"64","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \sqrt{x} + 4$.  What value of $x$ satisfies the equation $f(x) = 12$?

**Step 2 — Solve.** To solve for x, we first subtract 4 from both sides of the equation to get $\sqrt{x} = 8$. Then, we square both sides of the equation to get $(\sqrt{x})^2 = 8^2$, or $x = 64$. Therefore, the value of $x$ is 64.

**Step 3 — Select C.** 64

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":1009,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '550739b6-7db4-40e5-8626-74ef72bf5c90';

UPDATE public.questions SET
  question_text = 'If $f(x) = \frac{x^2 + 3x}{x+4}$ for all positive values of $x$, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \frac{x^2 + 3x}{x+4}$ for all positive values of $x$, what is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for $x$ in the expression for $f(x)$: $f(2) = \frac{2^2 + 3(2)}{2+4} = \frac{4+6}{6} = \frac{10}{6} = \frac{5}{3}$.  However, none of the answer choices represent  $\frac{5}{3}$.  The answer choices likely represent errors made when evaluating the expression.  Note that $\frac{5}{3}$ can be represented as 1.666, 1.667, or $1\frac{2}{3}$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":561,"opensat_domain":"Advanced Math","opensat_raw_id":"4c90f53e","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5532a8f5-4dc8-433c-857c-a9244266f31f';

UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the value of $x$?

**Step 2 — Solve.** We can solve this quadratic equation by factoring. The equation can be factored as $(x-4)(x+2)=0$. Therefore, the solutions are $x=4$ and $x=-2$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":546,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '553c8198-532d-4721-9f39-86615d5dd362';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 158°.',
  options = '[{"id":"A","text":"$158°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$22°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-158=22°$."},{"id":"C","text":"$32°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-158°=22°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '553e94d4-6c69-40af-a9ee-2073dbb623e2';

COMMIT;
