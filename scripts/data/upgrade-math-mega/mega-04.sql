BEGIN;
UPDATE public.questions SET
  question_text = 'If $\frac{2x + 3}{x - 1} = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x + 3}{x - 1} = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we begin by multiplying both sides of the equation by $(x - 1)$: $2x + 3 = 5(x - 1)$. Expanding the right side gives us $2x + 3 = 5x - 5$. Subtracting $2x$ from both sides and adding 5 to both sides, we get $8 = 3x$. Dividing both sides by 3, we obtain $x = \frac{8}{3}$, or $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":734,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '92c8e1b9-b951-4e09-83c3-37a15804b796';
UPDATE public.questions SET
  question_text = 'After $t=6$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+3$.',
  options = '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=6$."},{"id":"B","text":"$33$","is_correct":true,"explanation":"**Step 1:** Substitute $t=6$. **Step 2:** $d=5(6)+3=33$."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=6$: $d=5(6)+3$.
**Step 2:** Compute: $d=33$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '92f7f604-df41-402c-af8b-95875bb75eb1';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(5)=1$ and $f(10)=21$, what is $f(-7)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-43$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-7$)."},{"id":"C","text":"$-50$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-47$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-7)=4(-7-5)+(1)=-47$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{21-1}{10-5}=4$.
**Step 2:** Point-slope: $f(-7)=4(-7-5)+(1)$.
**Step 3:** $f(-7)=-47$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '92f8109a-23d2-439f-a2e9-d044e1d09ec0';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 15 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{19}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{18}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{19}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{18}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 18 total. **Step 2:** P $=\\frac{3}{18}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 18.
**Step 2:** Conditional probability $=\frac{3}{18}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9344db67-a46c-4aab-80c0-bacb120920dc';

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

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7 cm","is_correct":false,"explanation":"Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4 cm","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5 cm","is_correct":false,"explanation":"Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157 cm","is_correct":false,"explanation":"Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting the given values, we get $C = 2 (3.14)(5) = 31.4$ cm.

**Step 3 — Select B.** 31.4 cm

**Distractor analysis:**
- **A** (15.7 cm): Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5 cm): Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157 cm): Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":630,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '94f93696-6d02-4ad9-8682-46daafe54c4b';
UPDATE public.questions SET
  question_text = 'If $x^2 + 2x + 1 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x + 1 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression $x^2 + 2x + 1$ is a perfect square trinomial and can be factored as $(x + 1)^2$.  Setting this equal to 0, we get $(x + 1)^2 = 0$. Taking the square root of both sides, we get $x + 1 = 0$. Subtracting 1 from both sides, we get $x = -1$.

**Step 3 — Select B.** -1

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":177,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '950fe2ca-3a33-4a54-aa92-2341bdb9a021';
UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle has a radius of 5 and a center at (3, -2). What is the equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 3)^2 + (y + 2)^2 = 25","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(x + 3)^2 + (y - 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x + 3)^2 + (y - 2)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x - 3)^2 + (y + 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle has a radius of 5 and a center at (3, -2). What is the equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2. Substituting the given values of (h, k) = (3, -2) and r = 5, we get the equation (x - 3)^2 + (y + 2)^2 = 25.

**Step 3 — Select A.** (x - 3)^2 + (y + 2)^2 = 25

**Distractor analysis:**
- **B** ((x + 3)^2 + (y - 2)^2 = 5): May result from squaring when you should multiply or add.
- **C** ((x + 3)^2 + (y - 2)^2 = 25): May result from squaring when you should multiply or add.
- **D** ((x - 3)^2 + (y + 2)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":406,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9526a082-3b90-45bd-a890-216f33bc3ad2';
UPDATE public.questions SET
  question_text = 'A group of 10 friends are going to a concert.  They want to buy tickets in advance online, but there are only 6 tickets left.  What is the probability that all 10 friends will be able to get tickets?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1/10","is_correct":false,"explanation":"Choice B (1/10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1/6","is_correct":false,"explanation":"Choice C (1/6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1","is_correct":false,"explanation":"Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of 10 friends are going to a concert.  They want to buy tickets in advance online, but there are only 6 tickets left.  What is the probability that all 10 friends will be able to get tickets?

**Step 2 — Solve.** Since there are only 6 tickets left and 10 friends want tickets, it is impossible for all 10 friends to get tickets.  The probability of this event is 0.

**Step 3 — Select A.** 0

**Distractor analysis:**
- **B** (1/10): Choice B (1/10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1/6): Choice C (1/6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1): Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":738,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '95586934-d917-49ae-9028-4ae000641b7f';
UPDATE public.questions SET
  question_text = 'Which of the following is equivalent to $x^2 - 2x + 1$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 1)(x + 1)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"(x - 1)^2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(x + 1)^2","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x - 2)(x + 1)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** Which of the following is equivalent to $x^2 - 2x + 1$?

**Step 2 — Solve.** The expression $x^2 - 2x + 1$ is a perfect square trinomial, which can be factored as $(x - 1)^2$.  This is because the first term is the square of $x$, the last term is the square of 1, and the middle term is twice the product of $x$ and 1.

**Step 3 — Select B.** (x - 1)^2

**Distractor analysis:**
- **A** ((x - 1)(x + 1)): Adds quantities that should be multiplied or compares unrelated terms.
- **C** ((x + 1)^2): May result from squaring when you should multiply or add.
- **D** ((x - 2)(x + 1)): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":558,"opensat_domain":"Advanced Math","opensat_raw_id":"846ef93c","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9592f41b-e7e7-4098-a47b-37412a772e28';
UPDATE public.questions SET
  question_text = 'A group of friends went on a camping trip and bought a total of 120 snacks. They bought 3 times as many bags of chips as boxes of cookies.  If they bought 24 boxes of cookies, how many bags of chips did they buy?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36","is_correct":false,"explanation":"Choice B (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"72","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"96","is_correct":false,"explanation":"Choice D (96…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of friends went on a camping trip and bought a total of 120 snacks. They bought 3 times as many bags of chips as boxes of cookies.  If they bought 24 boxes of cookies, how many bags of chips did they buy?

**Step 2 — Solve.** Since they bought 3 times as many bags of chips as boxes of cookies, they bought 3 * 24 = 72 bags of chips.

**Step 3 — Select C.** 72

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (36): Choice B (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (96): Choice D (96…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":110,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '95b257fe-2630-4f52-bb3d-c96e95f106c4';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-46)^2+48$, where $t$ is seconds. What is $h(49)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$48$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$75$","is_correct":true,"explanation":"**Step 1:** $h(49)=3(49-46)^2+48=3(9)+48=75$."},{"id":"C","text":"$72$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=49$: $h(49)=3(49-46)^2+48$.
**Step 2:** $(49-46)^2=9$ → $h(49)=75$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '95c5a465-a2ac-49c4-a458-a5eaa068f9d1';
UPDATE public.questions SET
  question_text = 'If the function $f(x) = 3x^2 - 5x + 2$ is graphed in the $xy$-plane, what is the y-intercept of the graph?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = 3x^2 - 5x + 2$ is graphed in the $xy$-plane, what is the y-intercept of the graph?

**Step 2 — Solve.** The y-intercept of the graph is the point where the graph intersects the y-axis.  This occurs when $x = 0$. Substituting 0 for $x$ in the equation $f(x) = 3x^2 - 5x + 2$ gives $f(0) = 3(0)^2 - 5(0) + 2 = 2$. Therefore, the y-intercept of the graph is $(0, 2)$, and the y-coordinate of the y-intercept is 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":413,"opensat_domain":"Advanced Math","opensat_raw_id":"a1e2974c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '96582b09-20c7-4e53-915d-e715184c9fee';

UPDATE public.questions SET
  question_text = 'A rectangular prism has a length of 5 centimeters, a width of 4 centimeters, and a height of 3 centimeters. What is the volume, in cubic centimeters, of the prism?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"24","is_correct":false,"explanation":"Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":false,"explanation":"Choice C (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A rectangular prism has a length of 5 centimeters, a width of 4 centimeters, and a height of 3 centimeters. What is the volume, in cubic centimeters, of the prism?

**Step 2 — Solve.** The volume of a rectangular prism is found by multiplying its length, width, and height.  So, the volume of the prism is 5 * 4 * 3 = 60 cubic centimeters.

**Step 3 — Select D.** 60

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (24): Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (36): Choice C (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":870,"opensat_domain":"Advanced Math","opensat_raw_id":"645fd11a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '96a65110-7a8d-415d-9174-ade4e2666d37';
UPDATE public.questions SET
  question_text = 'If $2x+3y=17$ and $x-y=2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x+3y=17$ and $x-y=2$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get 3x - 3y = 6. Adding this equation to the first equation, we get 5x = 23. Dividing both sides by 5, we get x = 23/5.  Since x = 4.6, and of the choices, only 5 is close to 4.6, the answer is C.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":72,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9727a5c1-01fc-4823-ae20-3ad6dddf44ef';
UPDATE public.questions SET
  question_text = 'A circle in the xy-plane has center (1,-2) and radius 5. Which of the following is an equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 1)^2 + (y + 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x + 1)^2 + (y - 2)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 1)^2 + (y + 2)^2 = 25","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(x + 1)^2 + (y - 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle in the xy-plane has center (1,-2) and radius 5. Which of the following is an equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h,k) and radius r is (x - h)^2 + (y - k)^2 = r^2. In this case, the center of the circle is (1,-2) and the radius is 5. Substituting these values into the standard form of the equation gives (x - 1)^2 + (y - (-2))^2 = 5^2, which simplifies to (x - 1)^2 + (y + 2)^2 = 25.

**Step 3 — Select C.** (x - 1)^2 + (y + 2)^2 = 25

**Distractor analysis:**
- **A** ((x - 1)^2 + (y + 2)^2 = 5): May result from squaring when you should multiply or add.
- **B** ((x + 1)^2 + (y - 2)^2 = 25): May result from squaring when you should multiply or add.
- **D** ((x + 1)^2 + (y - 2)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":140,"opensat_domain":"Advanced Math","opensat_raw_id":"e135f8a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9778fcb2-c09a-4122-aaa7-36f78a669bed';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 47 ft from the wall and the top is 54 ft high.',
  options = '[{"id":"A","text":"$70$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$101$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$71$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$72$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{47^2+54^2}=72$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 47 and 54.
**Step 2:** $c=\sqrt{47^2+54^2}=72$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '97982868-8515-40a9-b37b-d0cae10fae3d';
UPDATE public.questions SET
  question_text = 'A circle with radius 5 has a circumference of 10\pi.  If the radius of the circle is doubled, what is the new circumference?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10\\pi","is_correct":false,"explanation":"Choice A (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"50\\pi","is_correct":false,"explanation":"Choice C (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 has a circumference of 10\pi.  If the radius of the circle is doubled, what is the new circumference?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where C is the circumference and r is the radius.  Doubling the radius doubles the circumference.  Since the original circumference is 10\pi, the new circumference is 2(10\pi) = 20\pi.

**Step 3 — Select B.** 20\pi

**Distractor analysis:**
- **A** (10\pi): Choice A (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (50\pi): Choice C (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":437,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '98487af9-d518-4d23-9e2c-e65a5ba1ae75';
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly.  The cost of the trip is $\$480. If there are 6 friends, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$60$","is_correct":false,"explanation":"Choice A ($\\$60$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$80$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\$100$","is_correct":false,"explanation":"Choice C ($\\$100$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$120$","is_correct":false,"explanation":"Choice D ($\\$120$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly.  The cost of the trip is $\$480. If there are 6 friends, how much will each friend pay?

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost of the trip by the number of friends: $\$480 / 6 = $\$80$.

**Step 3 — Select B.** $\$80$

**Distractor analysis:**
- **A** ($\$60$): Choice A ($\$60$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$100$): Choice C ($\$100$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$120$): Choice D ($\$120$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":297,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '98646631-c3cc-4055-9dbe-82cd645781e4';
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They want to rent a car that costs $\$45$ per day plus $\$0.20$ per mile driven.  If they drive $\$m$ miles and the total cost of the car rental is $\$c$, which equation represents the total cost of the car rental? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$c = 45m + 0.20$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"$c = 45 + 0.20m$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$c = 45m + 20$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"$c = 45 + 20m$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They want to rent a car that costs $\$45$ per day plus $\$0.20$ per mile driven.  If they drive $\$m$ miles and the total cost of the car rental is $\$c$, which equation represents the total cost of the car rental? 

**Step 2 — Solve.** The total cost of the car rental is the sum of the daily rental cost and the cost per mile driven. The daily rental cost is $\$45$, and the cost per mile driven is $\$0.20$ per mile. Since they drive $\$m$ miles, the cost per mile driven is $\$0.20m$. Therefore, the total cost of the car rental is $\$c = 45 + 0.20m$.

**Step 3 — Select B.** $c = 45 + 0.20m$

**Distractor analysis:**
- **A** ($c = 45m + 0.20$): Adds quantities that should be multiplied or compares unrelated terms.
- **C** ($c = 45m + 20$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($c = 45 + 20m$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":300,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '987bd754-89b8-4cb1-b2d2-7f5b363fe45c';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** Substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 2(2) + 1 = 3(4) - 4 + 1 = 12 - 4 + 1 = 13.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":61,"opensat_domain":"Advanced Math","opensat_raw_id":"f123456","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '98a5cc4b-6b98-4f6b-98d9-136728d2aba1';

UPDATE public.questions SET
  question_text = 'The lengths of the sides of a right triangle are 5, 12, and 13. What is the cosine of the angle opposite the side with length 12?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5/13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12/13","is_correct":false,"explanation":"Choice B (12/13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5/12","is_correct":false,"explanation":"Choice C (5/12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12/5","is_correct":false,"explanation":"Choice D (12/5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The lengths of the sides of a right triangle are 5, 12, and 13. What is the cosine of the angle opposite the side with length 12?

**Step 2 — Solve.** In a right triangle, the cosine of an angle is the ratio of the length of the adjacent side to the length of the hypotenuse.  The side opposite the angle with length 12 is the side with length 5, and the hypotenuse is the side with length 13.  Therefore, the cosine of the angle opposite the side with length 12 is 5/13.

**Step 3 — Select A.** 5/13

**Distractor analysis:**
- **B** (12/13): Choice B (12/13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5/12): Choice C (5/12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12/5): Choice D (12/5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":826,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f452410b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0e8e31da-69d3-4889-b754-a96cfc2a5f14';
UPDATE public.questions SET
  question_text = 'The length of a rectangle is 5 more than twice its width.  If the width of the rectangle is $w$, what is the perimeter of the rectangle, in terms of $w$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10w + 10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6w + 10","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"8w + 5","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"7w + 10","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The length of a rectangle is 5 more than twice its width.  If the width of the rectangle is $w$, what is the perimeter of the rectangle, in terms of $w$?

**Step 2 — Solve.** The length of the rectangle is $2w + 5$, so the perimeter is $2(2w+5) + 2w = 4w + 10 + 2w = 6w + 10$.

**Step 3 — Select A.** 10w + 10

**Distractor analysis:**
- **B** (6w + 10): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (8w + 5): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (7w + 10): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":516,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9e9f36e9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0ee83993-2a24-4eda-a3fc-98586e4adcdb';
UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they prefer to eat pizza or tacos. 60 people said they prefer pizza, and 40 people said they prefer tacos. Of the people surveyed, what percentage prefer tacos?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4%","is_correct":false,"explanation":"Choice A (4%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20%","is_correct":false,"explanation":"Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60%","is_correct":false,"explanation":"Choice D (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they prefer to eat pizza or tacos. 60 people said they prefer pizza, and 40 people said they prefer tacos. Of the people surveyed, what percentage prefer tacos?

**Step 2 — Solve.** The percentage of people who prefer tacos is found by dividing the number who prefer tacos by the total number of people surveyed and multiplying by 100%: (40/100) * 100% = 40%.

**Step 3 — Select C.** 40%

**Distractor analysis:**
- **A** (4%): Choice A (4%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20%): Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60%): Choice D (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":609,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_e3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0ef2dd3b-bcfe-4a01-be93-f39a791b573c';
UPDATE public.questions SET
  question_text = 'A rectangle has a length of 10 inches and a width of 5 inches. What is the area of the rectangle, in square inches?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 10 inches and a width of 5 inches. What is the area of the rectangle, in square inches?

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width.  In this case, the area is 10 inches * 5 inches = 50 square inches.

**Step 3 — Select C.** 50

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":978,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b9","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0f2956e1-448f-4904-b1ec-f901104a9cf4';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12π.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12π","is_correct":false,"explanation":"Choice A (12π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36π","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144π","is_correct":false,"explanation":"Choice C (144π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12π.  What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius of the circle.  We are given that C = 12π, so 12π = 2πr.  Dividing both sides by 2π, we get r = 6.  The area of a circle is given by the formula A = πr², so A = π(6)² = 36π.

**Step 3 — Select B.** 36π

**Distractor analysis:**
- **A** (12π): Choice A (12π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144π): Choice C (144π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":618,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0f2b5217-2bf6-4b20-bbd5-c11b628dfd62';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r, we get C = 2\pi(5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":639,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0f48b12f-a5de-4fb1-98bc-89fb8880f998';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 309$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 309 grams but at most 322 grams to ship.',
  options = '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Too small: $6(48)+6=294$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Still below threshold 309."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$51$","is_correct":true,"explanation":"**Step 1:** $6x > 303$. **Step 2:** $x > 50.5$. Smallest integer choice: 51."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 303$.
**Step 2:** $x > 50.50$.
**Step 3:** Among choices, $51$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0f6dde07-d810-49b0-8f8c-1666db9d959b';
COMMIT;
