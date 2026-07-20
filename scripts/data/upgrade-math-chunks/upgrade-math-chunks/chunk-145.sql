BEGIN;
UPDATE public.questions SET
  question_text = 'The graph of the equation $y = \frac{1}{2}(x+1)(x-3)$ intersects the x-axis at two points. What are the x-coordinates of these two points?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1 and 3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1 and -3","is_correct":false,"explanation":"Choice B (1 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2 and -2","is_correct":false,"explanation":"Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-2 and 4","is_correct":false,"explanation":"Choice D (-2 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = \frac{1}{2}(x+1)(x-3)$ intersects the x-axis at two points. What are the x-coordinates of these two points?

**Step 2 — Solve.** The graph of the equation intersects the x-axis when y = 0.  Setting the equation equal to zero gives $0 = \frac{1}{2}(x+1)(x-3)$.  This equation is satisfied when either x+1=0 or x-3=0. Solving for x in each of these equations yields x = -1 and x = 3.  Therefore, the x-coordinates of the two points of intersection are -1 and 3.

**Step 3 — Select A.** -1 and 3

**Distractor analysis:**
- **B** (1 and -3): Choice B (1 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2 and -2): Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-2 and 4): Choice D (-2 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":687,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c6874e76-0c27-4890-856f-a3b8a473c1a1';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 5(2) + 2.  Simplifying, we get *f*(2) = 12 - 10 + 2 = 4.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":344,"opensat_domain":"Advanced Math","opensat_raw_id":"12e8c776","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c6891da3-dda7-489b-a70e-88dc4252f9a8';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. If a chord of the circle has length 8 units, what is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. If a chord of the circle has length 8 units, what is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and a radius drawn to an endpoint of the chord.  The radius will be perpendicular to the chord, dividing the chord into two equal segments.  The radius, the chord segment, and a radius drawn to the other endpoint of the chord will form a right triangle.  The hypotenuse of this triangle will be the radius of the circle, which is 5 units.  The other leg of the right triangle will be half of the chord, which is 4 units.  The Pythagorean Theorem states that the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the square of the distance from the center of the circle to the chord is equal to 5^2 - 4^2 = 25 - 16 = 9.  The distance from the center of the circle to the chord is the square root of 9, which is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":887,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c6ee2299-ab48-49b0-8d64-e1cc44b4fb87';

UPDATE public.questions SET
  question_text = 'A store is selling a certain type of shirt for $\$20 each. The store is having a sale, offering a discount of 15% off the original price. What is the sale price of the shirt?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$17","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$18","is_correct":false,"explanation":"Choice B ($18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$19","is_correct":false,"explanation":"Choice C ($19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$21","is_correct":false,"explanation":"Choice D ($21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A store is selling a certain type of shirt for $\$20 each. The store is having a sale, offering a discount of 15% off the original price. What is the sale price of the shirt?

**Step 2 — Solve.** A 15% discount means the customer pays 85% of the original price.  To find the sale price, we multiply the original price by 0.85: $20 * 0.85 = $17.

**Step 3 — Select A.** $17

**Distractor analysis:**
- **B** ($18): Choice B ($18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($19): Choice C ($19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($21): Choice D ($21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":848,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c73fa2e8-420b-4552-83a7-84b72257ee50';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 1}{x - 1}$. For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1 only","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-1 only","is_correct":false,"explanation":"Choice B (-1 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0 only","is_correct":false,"explanation":"Choice C (0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1 and -1","is_correct":false,"explanation":"Choice D (1 and -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 1}{x - 1}$. For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator equals zero. In this case, the denominator is $x-1$, which is zero when $x=1$. Therefore, $f(x)$ is undefined when $x=1$.

**Step 3 — Select A.** 1 only

**Distractor analysis:**
- **B** (-1 only): Choice B (-1 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0 only): Choice C (0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1 and -1): Choice D (1 and -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":2,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c75bf131-7be8-45e3-b569-4598904ec54b';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 49, 53, 57, 61, and one score $x$ is missing. The mean is 53.4.',
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$47$","is_correct":true,"explanation":"**Step 1:** Sum needed $=53.4×5=267$. **Step 2:** $x=267-220=47$."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=53.4×5=267$.
**Step 2:** $x=267-220=47$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c769af96-6e5e-42ba-ae14-7d91102f079d';

UPDATE public.questions SET
  question_text = 'If $\frac{x}{y} = 2$ and $\frac{y}{z} = 3$, what is the value of $\frac{x}{z}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{6}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{2}{3}$","is_correct":false,"explanation":"Choice B ($\\frac{2}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x}{y} = 2$ and $\frac{y}{z} = 3$, what is the value of $\frac{x}{z}$?

**Step 2 — Solve.** We can multiply the two given equations together:  $\frac{x}{y} \cdot \frac{y}{z} = 2 \cdot 3$. The y terms cancel, leaving $\frac{x}{z} = 6$.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** ($\frac{1}{6}$): Inverts the ratio — a common probability error.
- **B** ($\frac{2}{3}$): Choice B ($\frac{2}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":886,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c7dcd732-aac9-4911-b766-96fba7bff162';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{x^2 - 9}{x - 3}$. For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 3 only","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x = -3 only","is_correct":false,"explanation":"Choice B (x = -3 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = 3 and x = -3","is_correct":false,"explanation":"Choice C (x = 3 and x = -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 0 only","is_correct":false,"explanation":"Choice D (x = 0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{x^2 - 9}{x - 3}$. For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when its denominator equals zero.  In this case, the denominator is $x-3$, so the function is undefined when $x-3 = 0$, which simplifies to $x=3$.  Therefore, the function is undefined for $x=3$ only.

**Step 3 — Select A.** x = 3 only

**Distractor analysis:**
- **B** (x = -3 only): Choice B (x = -3 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = 3 and x = -3): Choice C (x = 3 and x = -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 0 only): Choice D (x = 0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":37,"opensat_domain":"Advanced Math","opensat_raw_id":"784322d6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c7e51eae-b1c2-4e90-9d38-2885181d3be6';

COMMIT;
