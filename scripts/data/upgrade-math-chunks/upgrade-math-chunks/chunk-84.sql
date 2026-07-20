BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the roots of a quadratic equation of the form $ax^2 + bx + c = 0$ is given by $-b/a$. In this case, the sum of the solutions is $-(-2)/1 = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":665,"opensat_domain":"Advanced Math","opensat_raw_id":"61b8480a","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '72bc80e0-d8f3-4e59-9c6f-f3eee75e5cd8';

UPDATE public.questions SET
  question_text = 'The following data set represents the number of cars sold by a dealership each day for a week: 12, 15, 18, 14, 21, 16, 19. What is the median number of cars sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"16","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"18","is_correct":false,"explanation":"Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The following data set represents the number of cars sold by a dealership each day for a week: 12, 15, 18, 14, 21, 16, 19. What is the median number of cars sold?

**Step 2 — Solve.** To find the median, we need to order the data set from least to greatest. This gives us: 12, 14, 15, 16, 18, 19, 21. The median is the middle value, which is 16.

**Step 3 — Select C.** 16

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (18): Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":683,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f890dc20","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '72d3dd4e-6169-4ceb-9a70-274b9786bb0b';

UPDATE public.questions SET
  question_text = 'A group of friends is planning a trip. They decide to rent a car for \$40 per day plus a one-time insurance fee of \$15.  If the total cost of the car rental is \$235, for how many days did they rent the car?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends is planning a trip. They decide to rent a car for \$40 per day plus a one-time insurance fee of \$15.  If the total cost of the car rental is \$235, for how many days did they rent the car?

**Step 2 — Solve.** Let \$d$ represent the number of days the car was rented. The total cost of the car rental can be represented by the equation \$40d + \$15 = \$235.  Solving for \$d$, we get \$d = 5$.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":1027,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_d7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7321db42-313d-4e35-973e-acf728c3d4b0';

UPDATE public.questions SET
  question_text = 'A store sells two types of candy bars, chocolate and caramel.  On a particular day, the store sells 120 chocolate candy bars and 80 caramel candy bars. If 30% of the chocolate candy bars sold that day were dark chocolate, and 40% of the caramel candy bars sold that day were milk chocolate, how many chocolate candy bars sold that day were dark chocolate?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"48","is_correct":false,"explanation":"Choice C (48…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store sells two types of candy bars, chocolate and caramel.  On a particular day, the store sells 120 chocolate candy bars and 80 caramel candy bars. If 30% of the chocolate candy bars sold that day were dark chocolate, and 40% of the caramel candy bars sold that day were milk chocolate, how many chocolate candy bars sold that day were dark chocolate?

**Step 2 — Solve.** The store sold 120 * 0.30 = 36 dark chocolate candy bars.

**Step 3 — Select B.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (48): Choice C (48…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":23,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"d9a8c19e","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7351f414-f4ab-4e39-b727-9a16df817520';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 24, 28, 32, 36, and one score $x$ is missing. The mean is 28.4.',
  options = '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$22$","is_correct":true,"explanation":"**Step 1:** Sum needed $=28.4×5=142$. **Step 2:** $x=142-120=22$."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$28$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=28.4×5=142$.
**Step 2:** $x=142-120=22$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '73ba299a-9329-44c2-b588-9a48830aba1c';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 19, 23, 27, 31, and one score $x$ is missing. The mean is 23.4.',
  options = '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$17$","is_correct":true,"explanation":"**Step 1:** Sum needed $=23.4×5=117$. **Step 2:** $x=117-100=17$."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$23$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=23.4×5=117$.
**Step 2:** $x=117-100=17$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '73e3e45c-fdb2-4eb2-8943-e90d5f5d1e2b';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(10)=6$ and $f(15)=26$, what is $f(-12)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-78$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-12$)."},{"id":"C","text":"$-85$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-82$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-12)=4(-12-10)+(6)=-82$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{26-6}{15-10}=4$.
**Step 2:** Point-slope: $f(-12)=4(-12-10)+(6)$.
**Step 3:** $f(-12)=-82$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7424f2ae-9bf7-4cee-b285-cebd8fa6b800';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 10 people liked both apples and oranges. How many people liked only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 10 people liked both apples and oranges. How many people liked only apples?

**Step 2 — Solve.** To find the number of people who liked only apples, we subtract the number of people who liked both apples and oranges from the number of people who liked apples: 60 - 10 = 50.

**Step 3 — Select C.** 50

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":51,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9827b6c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7424f2e4-5344-4616-9185-23d446a26ee0';

COMMIT;
