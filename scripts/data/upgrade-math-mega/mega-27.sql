BEGIN;
UPDATE public.questions SET
  question_text = 'If  $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can add the two equations together. Notice that the $y$ terms cancel out: $(3x + 2y) + (x - 2y) = 12 + 4$, which simplifies to $4x = 16$. Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":1003,"opensat_domain":"Algebra","opensat_raw_id":"a1293ac5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '224eeb9a-24a0-4d0a-ab82-cd508dec47b0';
UPDATE public.questions SET
  question_text = 'If  $2x + 3y = 12$ and  $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $2x + 3y = 12$ and  $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we can use elimination. Multiplying the second equation by 3, we get  $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":348,"opensat_domain":"Algebra","opensat_raw_id":"a71a4247","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2266b9a2-d2c6-475f-8e6e-450c65727d46';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5.  What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5.  What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting $r = 5$ into the formula gives $C = 2\pi(5) = 10\pi$.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":828,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2277a9f3-84cd-460e-940e-7bb9311144ee';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by using elimination.  Multiply the second equation by 3, which gives $3x - 3y = 3$.  Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":215,"opensat_domain":"Algebra","opensat_raw_id":"33c2025c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '23008117-8a9f-4499-a89c-76ffeae1c658';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the area, in square centimeters, of the circle?  (Use $\pi \approx 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the area, in square centimeters, of the circle?  (Use $\pi \approx 3.14$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where r is the radius. Substituting 5 for r and 3.14 for $\pi$, we get $A \approx 3.14 \cdot 5^2 \approx 3.14 \cdot 25 \approx 78.5$.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":794,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '23075360-af4f-44bc-be8a-af2a6b977d40';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle, in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle, in square units?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius. Substituting 5 for $r$, we get $A = \pi(5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":115,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"23b4567c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '237776b8-f04e-42dd-a2a6-8ca18d4948eb';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by using the elimination method. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":963,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '23c3717d-60f8-4857-a79a-08091e499f83';
UPDATE public.questions SET
  question_text = 'If $\frac{x}{y} = 3$ and $\frac{y}{z} = 2$, what is the value of $\frac{x}{z}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{6}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{3}{2}$","is_correct":false,"explanation":"Choice B ($\\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{5}{3}$","is_correct":false,"explanation":"Choice C ($\\frac{5}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x}{y} = 3$ and $\frac{y}{z} = 2$, what is the value of $\frac{x}{z}$?

**Step 2 — Solve.** We can multiply the two given equations together: $\frac{x}{y} \cdot \frac{y}{z} = 3 \cdot 2$. The $y$ terms cancel, leaving us with $\frac{x}{z} = 6$.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** ($\frac{1}{6}$): Inverts the ratio — a common probability error.
- **B** ($\frac{3}{2}$): Choice B ($\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{5}{3}$): Choice C ($\frac{5}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":657,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '23d3c984-8967-4522-b574-f72d1352cce3';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 150°.',
  options = '[{"id":"A","text":"$150°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$30°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-150=30°$."},{"id":"C","text":"$40°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-150°=30°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '23f89678-4237-4a97-97b3-7090737c76db';
UPDATE public.questions SET
  question_text = 'If  $f(x) = \frac{x^2 - 2x}{x - 1}$, for what value of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $f(x) = \frac{x^2 - 2x}{x - 1}$, for what value of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A rational function is undefined when the denominator is equal to zero.  In this case, the denominator is $x - 1$, so $f(x)$ is undefined when $x - 1 = 0$, or $x = 1$.

**Step 3 — Select C.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":314,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2450cbde-c590-44d5-a8fa-094cfba18954';

UPDATE public.questions SET
  question_text = 'A group of 100 students were surveyed about their favorite type of music. 60 students like pop music, 50 students like rock music, and 20 students like both pop and rock music. How many students like neither pop nor rock music?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of 100 students were surveyed about their favorite type of music. 60 students like pop music, 50 students like rock music, and 20 students like both pop and rock music. How many students like neither pop nor rock music?

**Step 2 — Solve.** We can use a Venn Diagram to visualize the situation. Let P represent the set of students who like pop music and R represent the set of students who like rock music. We know that  |P ∩ R| = 20, |P| = 60, and |R| = 50. Since |P ∪ R| = |P| + |R| - |P ∩ R|, we have |P ∪ R| = 60 + 50 - 20 = 90. This means that 90 students like pop music, rock music, or both.  Therefore, 100 - 90 = 10 students like neither pop nor rock music.

**Step 3 — Select A.** 10

**Distractor analysis:**
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1024,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '24556fc7-02b4-4a58-ab94-0b9a39e6f39e';
UPDATE public.questions SET
  question_text = 'A group of 10 friends are deciding who will drive on a trip. They decide to pick a driver randomly from those who have a valid driver''s license.  3 of the friends do not have a valid driver''s license. What is the probability that the first friend chosen at random will be a valid driver?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1/3","is_correct":false,"explanation":"Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3/10","is_correct":false,"explanation":"Choice B (3/10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7/10","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7/3","is_correct":false,"explanation":"Choice D (7/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of 10 friends are deciding who will drive on a trip. They decide to pick a driver randomly from those who have a valid driver''s license.  3 of the friends do not have a valid driver''s license. What is the probability that the first friend chosen at random will be a valid driver?

**Step 2 — Solve.** Since 3 of the 10 friends do not have a valid driver''s license, 7 do have a valid driver''s license.  Therefore, the probability that the first friend chosen will be a valid driver is 7/10.

**Step 3 — Select C.** 7/10

**Distractor analysis:**
- **A** (1/3): Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3/10): Choice B (3/10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7/3): Choice D (7/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":335,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9e9f61f3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '24764cd8-a419-4caa-a0d0-7fa84d67d072';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+36)^2 - (4x-36)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$576x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+36$, $v=4x-36$ → $576x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$144x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1296$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+36$, $v=4x-36$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(72)=576x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2479c03c-7a04-45cb-b631-cf9319e3c4f0';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 39 ft from the wall and the top is 46 ft high.',
  options = '[{"id":"A","text":"$58$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$85$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$60$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{39^2+46^2}=60$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 39 and 46.
**Step 2:** $c=\sqrt{39^2+46^2}=60$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '24993cf6-778c-426d-945d-4f1f030cace3';
UPDATE public.questions SET
  question_text = 'A survey of 200 high school students found that 120 students prefer to take math classes in the morning, and 80 students prefer to take math classes in the afternoon. What percentage of the students surveyed prefer to take math classes in the morning? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":false,"explanation":"Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"80%","is_correct":false,"explanation":"Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120%","is_correct":false,"explanation":"Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 high school students found that 120 students prefer to take math classes in the morning, and 80 students prefer to take math classes in the afternoon. What percentage of the students surveyed prefer to take math classes in the morning? 

**Step 2 — Solve.** To find the percentage of students who prefer morning math classes, we divide the number who prefer morning classes by the total number of students surveyed and multiply by 100%:  (120 students / 200 students) * 100% = 60%.

**Step 3 — Select B.** 60%

**Distractor analysis:**
- **A** (40%): Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80%): Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120%): Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":1030,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c6","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '24fb534b-74fc-4dd7-b9ee-52e73944ae9a';
UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 meters and a width of 5 meters.  What is the area, in square meters, of the rectangle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"125","is_correct":false,"explanation":"Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 meters and a width of 5 meters.  What is the area, in square meters, of the rectangle? 

**Step 2 — Solve.** The area of a rectangle is the product of its length and its width.  The area of the rectangle is 12 meters * 5 meters = 60 square meters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (125): Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":644,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '251c40cf-68b7-47e7-9b54-71ba0d044368';
UPDATE public.questions SET
  question_text = 'In the figure above, quadrilateral ABCD is a rectangle.  The length of diagonal is $\sqrt{20}$ units.  What is the area of the rectangle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In the figure above, quadrilateral ABCD is a rectangle.  The length of diagonal is $\sqrt{20}$ units.  What is the area of the rectangle? 

**Step 2 — Solve.** The diagonal of a rectangle divides the rectangle into two congruent right triangles.  Since the diagonal is the hypotenuse of each of these right triangles, the Pythagorean Theorem gives us $a^2 + b^2 = (\sqrt{20})^2$, or $a^2 + b^2 = 20$, where $a$ and $b$ are the length and width of the rectangle, respectively.  Since ABCD is a rectangle, the area is $ab$. Since the area is a product of two sides, the area will be a factor of 20.  Of the choices, 10 is the only factor of 20, and the area of the rectangle is $ab = (2)(5) = 10$.

**Step 3 — Select C.** 10

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":8,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d45a749b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '25638145-eda1-4ace-ab02-b630b61b0223';
UPDATE public.questions SET
  question_text = 'What is the value of $x$ in the equation $x^2 - 9 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-3 or 3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ in the equation $x^2 - 9 = 0$?

**Step 2 — Solve.** To solve for $x$, we can add 9 to both sides of the equation: $x^2 = 9$. Taking the square root of both sides gives us $x = \pm 3$. Therefore, the solutions are $x = -3$ or $x = 3$.

**Step 3 — Select C.** -3 or 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":470,"opensat_domain":"Advanced Math","opensat_raw_id":"5a67db99","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '256918f2-eed2-4572-85cf-9b21d4551f0d';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 7 > 152$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 152 grams but at most 165 grams to ship.',
  options = '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Too small: $4(34)+7=143$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Still below threshold 152."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$37$","is_correct":true,"explanation":"**Step 1:** $4x > 145$. **Step 2:** $x > 36.25$. Smallest integer choice: 37."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 145$.
**Step 2:** $x > 36.25$.
**Step 3:** Among choices, $37$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '25d3f22b-21f7-4129-b255-49ab7c0b7a4e';
UPDATE public.questions SET
  question_text = 'A store sells two types of cookies: chocolate chip and peanut butter. The store can sell a maximum of 100 cookies per day. On a particular day, the store sold 25 chocolate chip cookies. If the number of peanut butter cookies sold was 3 times the number of chocolate chip cookies sold, what was the number of peanut butter cookies sold that day?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60","is_correct":false,"explanation":"Choice B (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"75","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"90","is_correct":false,"explanation":"Choice D (90…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells two types of cookies: chocolate chip and peanut butter. The store can sell a maximum of 100 cookies per day. On a particular day, the store sold 25 chocolate chip cookies. If the number of peanut butter cookies sold was 3 times the number of chocolate chip cookies sold, what was the number of peanut butter cookies sold that day?

**Step 2 — Solve.** Since 25 chocolate chip cookies were sold, and the number of peanut butter cookies sold was 3 times that amount, the store sold 3 * 25 = 75 peanut butter cookies.

**Step 3 — Select C.** 75

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (60): Choice B (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (90): Choice D (90…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":869,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f54c918d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '26911bb0-843e-4ce6-8d4a-ee42343568ee';
UPDATE public.questions SET
  question_text = 'The length of a rectangle is 12 inches and the width is 5 inches.  What is the area, in square inches, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"72","is_correct":false,"explanation":"Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The length of a rectangle is 12 inches and the width is 5 inches.  What is the area, in square inches, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is the product of its length and width.  The area of the rectangle is 12 inches * 5 inches = 60 square inches.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (72): Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":946,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '26b68a85-8db4-4fa2-b23d-4d07e9a4aeee';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-43)^2+45$, where $t$ is seconds. What is $h(46)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$63$","is_correct":true,"explanation":"**Step 1:** $h(46)=2(46-43)^2+45=2(9)+45=63$."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$47$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=46$: $h(46)=2(46-43)^2+45$.
**Step 2:** $(46-43)^2=9$ → $h(46)=63$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '26ce0fb5-0153-4f48-b7e1-6c432ffc5213';
UPDATE public.questions SET
  question_text = 'The function f(x) is defined as $f(x) = x^2 - 3$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":false,"explanation":"Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined as $f(x) = x^2 - 3$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of $f(-2)$, we substitute -2 for $x$ in the function. This gives us  $f(-2) = (-2)^2 - 3$, or $f(-2) = 4 - 3 = 1$.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (-7): Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":801,"opensat_domain":"Advanced Math","opensat_raw_id":"2d8c4434","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '273d36c8-841b-4d40-ba91-14de7fbdbde9';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\). For what value(s) of \(x\) is the function undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-2 and 2","is_correct":false,"explanation":"Choice C (-2 and 2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The function is defined for all values of x.","is_correct":false,"explanation":"Choice D (The function is defined for all values of x.…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\). For what value(s) of \(x\) is the function undefined?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction equals zero.  In this case, the denominator, \(x - 2\), equals zero when \(x = 2\).  Therefore, the function is undefined when \(x = 2\).

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-2 and 2): Choice C (-2 and 2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (The function is defined for all values of x.): Choice D (The function is defined for all values of x.…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":505,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '279f699d-d726-4666-8a54-6ac12d35b1ea';
UPDATE public.questions SET
  question_text = 'If $3x - 2y = 10$ and $x + 2y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x - 2y = 10$ and $x + 2y = 2$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can add the two equations together. Notice that the y terms will cancel out: \begin{align*} 3x - 2y &= 10 \\ + (x + 2y &= 2) \\ \hline 4x &= 12 \\ \end{align*} Dividing both sides by 4, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":97,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '27d3b8f7-5263-491d-987b-9cf722ddcbcc';
UPDATE public.questions SET
  question_text = 'If $x + y = 7$ and $x - y = 3$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + y = 7$ and $x - y = 3$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can add the two equations together. Notice that the y terms will cancel out.  (x + y) + (x - y) = 7 + 3.  This simplifies to 2x = 10. Dividing both sides by 2 gives x = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":674,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '27e49ed8-bf9b-4fbd-8fab-72ad0eda67ad';

UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{x^2-4}{x-2}\). For what value of \(x\) is \(f(x)\) undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{x^2-4}{x-2}\). For what value of \(x\) is \(f(x)\) undefined?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction is zero. The denominator of \(f(x) = \frac{x^2-4}{x-2}\) is zero when \(x - 2 = 0\), or \(x = 2\). Therefore, \(f(x)\) is undefined when \(x = 2\).

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":134,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '282a5332-3325-420e-b8b2-a67a6423b147';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+24)^2 - (4x-24)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$384x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+24$, $v=4x-24$ → $384x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$96x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+576$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+24$, $v=4x-24$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(48)=384x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '28724c56-d6bc-4628-9a40-8f598b686106';
UPDATE public.questions SET
  question_text = 'A store is selling a shirt for \$20, but a customer has a coupon for 15\% off. How much will the customer pay for the shirt after the discount?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"17","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store is selling a shirt for \$20, but a customer has a coupon for 15\% off. How much will the customer pay for the shirt after the discount?

**Step 2 — Solve.** A 15\% discount means the customer will pay 100\% - 15\% = 85\% of the original price.  85\% of $20 is 0.85 * $20 = $17.

**Step 3 — Select B.** 17

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":526,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"2c873e98","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '287584a4-6b5d-42c1-8da0-d0581f57202f';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(49)=45$ and $f(54)=65$, what is $f(-51)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-351$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-51$)."},{"id":"C","text":"$-358$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-355$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-51)=4(-51-49)+(45)=-355$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{65-45}{54-49}=4$.
**Step 2:** Point-slope: $f(-51)=4(-51-49)+(45)$.
**Step 3:** $f(-51)=-355$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2875ef15-a31f-4959-abea-9f4680cf18be';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 110°.',
  options = '[{"id":"A","text":"$110°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$70°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-110=70°$."},{"id":"C","text":"$80°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-110°=70°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '288fe145-df72-499b-8eca-0f75ee137a77';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers $x$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-15","is_correct":false,"explanation":"Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers $x$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for $x$ into the function, we get:  $f(-2) = 2(-2)^2 + 3(-2) - 5$. Simplifying, we have $f(-2) = 8 - 6 - 5 = 11$.

**Step 3 — Select D.** 11

**Distractor analysis:**
- **A** (-15): Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":382,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '28b87969-cdb6-432d-b820-079171cb6c6b';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":455,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '28bcb5c7-e47f-4325-8538-0f772bbe0649';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+14)^2 - (3x-14)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$168x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+14$, $v=3x-14$ → $168x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$56x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+196$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+14$, $v=3x-14$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(28)=168x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '29eb9bc8-c1cc-41cc-ad8d-d6e61b6bf7da';

UPDATE public.questions SET
  question_text = 'Which of the following is equivalent to $x^{\frac{1}{2}} \cdot x^{\frac{2}{3}}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$x^{\\frac{1}{6}}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$x^{\\frac{3}{5}}$","is_correct":false,"explanation":"Choice B ($x^{\\frac{3}{5}}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$x^{\\frac{5}{6}}$","is_correct":false,"explanation":"Choice C ($x^{\\frac{5}{6}}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$x^{\\frac{7}{6}}$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** Which of the following is equivalent to $x^{\frac{1}{2}} \cdot x^{\frac{2}{3}}$?

**Step 2 — Solve.** When multiplying exponents with the same base, you add the powers.  Therefore, $x^{\frac{1}{2}} \cdot x^{\frac{2}{3}} = x^{\frac{1}{2} + \frac{2}{3}} = x^{\frac{7}{6}}$.

**Step 3 — Select D.** $x^{\frac{7}{6}}$

**Distractor analysis:**
- **A** ($x^{\frac{1}{6}}$): Inverts the ratio — a common probability error.
- **B** ($x^{\frac{3}{5}}$): Choice B ($x^{\frac{3}{5}}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($x^{\frac{5}{6}}$): Choice C ($x^{\frac{5}{6}}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":572,"opensat_domain":"Advanced Math","opensat_raw_id":"738f4933","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2a579f52-7f21-4b7f-824c-ba5640966ee4';
COMMIT;
