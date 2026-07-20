BEGIN;
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 6, 10, 14, 18, and one score $x$ is missing. The mean is 10.4.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"**Step 1:** Sum needed $=10.4×5=52$. **Step 2:** $x=52-48=4$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=10.4×5=52$.
**Step 2:** $x=52-48=4$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9348436b-610e-4ea9-b517-c338a965c756';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination.  Multiplying the second equation by 3 gives us $3x - 3y = 3$.  Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we find that $x=3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":929,"opensat_domain":"Algebra","opensat_raw_id":"random_id_b6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9349ce4b-0ff9-4172-b29e-51f49e098123';

UPDATE public.questions SET
  question_text = 'After $t=26$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+23$.',
  options = '[{"id":"A","text":"$123$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=26$."},{"id":"B","text":"$127$","is_correct":true,"explanation":"**Step 1:** Substitute $t=26$. **Step 2:** $d=4(26)+23=127$."},{"id":"C","text":"$128$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$27$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=26$: $d=4(26)+23$.
**Step 2:** Compute: $d=127$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '934d9f66-d3a9-40d6-bed9-f236fcdb49c5';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 25, 29, 33, 37, and one score $x$ is missing. The mean is 29.4.',
  options = '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$23$","is_correct":true,"explanation":"**Step 1:** Sum needed $=29.4×5=147$. **Step 2:** $x=147-124=23$."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$29$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=29.4×5=147$.
**Step 2:** $x=147-124=23$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '937bb8e4-a11b-4478-b9c2-5ed3085b25cb';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to rent a car for the trip, and they agree that each person will pay an equal share of the rental cost. The rental cost for the car is \$150.  If there are \$f$ friends going on the trip, which of the following expressions represents the amount, in dollars, that each friend will pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{150}{f}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{f}{150}$","is_correct":false,"explanation":"Choice B ($\\frac{f}{150}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$150f$","is_correct":false,"explanation":"Choice C ($150f$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$150 - f$","is_correct":false,"explanation":"Choice D ($150 - f$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to rent a car for the trip, and they agree that each person will pay an equal share of the rental cost. The rental cost for the car is \$150.  If there are \$f$ friends going on the trip, which of the following expressions represents the amount, in dollars, that each friend will pay?

**Step 2 — Solve.** To find the amount each friend will pay, we divide the total rental cost by the number of friends: $\frac{150}{f}$.

**Step 3 — Select A.** $\frac{150}{f}$

**Distractor analysis:**
- **B** ($\frac{f}{150}$): Choice B ($\frac{f}{150}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($150f$): Choice C ($150f$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($150 - f$): Choice D ($150 - f$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":697,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f86d849c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '939ba757-0231-4876-8e68-54033a35a6e5';

UPDATE public.questions SET
  question_text = 'If $x^2 - 6x + 8 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-8","is_correct":false,"explanation":"Choice B (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 6x + 8 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the roots of a quadratic equation of the form $ax^2 + bx + c = 0$ is equal to $-b/a$. In this case, $a = 1$ and $b = -6$, so the sum of the solutions is $-(-6)/1 = 6$.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-8): Choice B (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":573,"opensat_domain":"Algebra","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '93e2c1ae-8f5a-4160-946b-339a3856d3ee';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9435e200-2890-44f6-9fb9-373bd27e688c';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 62% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 62% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 58% and 66%","is_correct":true,"explanation":"**Step 1:** Interval 58% to 66%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 58% to 66%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '946fab21-ffdc-43d5-9611-034041b493b4';

COMMIT;
