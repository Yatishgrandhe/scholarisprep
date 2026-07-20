BEGIN;
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(2,5)$ and $(8,23)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{23-5}{8-2}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$23$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5d78b6d6-d8aa-47c8-aa9d-94b81b199909';

UPDATE public.questions SET
  question_text = 'The expression $\frac{2x+3}{5} + \frac{x-1}{5}$ is equivalent to which of the following expressions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"\\frac{2x + 2}{5}","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"\\frac{3x + 2}{5}","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"\\frac{3x + 4}{5}","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"\\frac{3x + 2}{10}","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{2x+3}{5} + \frac{x-1}{5}$ is equivalent to which of the following expressions?

**Step 2 — Solve.** Since the expressions have the same denominator, we can combine the numerators:  $\frac{2x+3}{5} + \frac{x-1}{5} = \frac{2x + 3 + x - 1}{5} = \frac{3x + 2}{5}$.

**Step 3 — Select C.** \frac{3x + 4}{5}

**Distractor analysis:**
- **A** (\frac{2x + 2}{5}): Adds quantities that should be multiplied or compares unrelated terms.
- **B** (\frac{3x + 2}{5}): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (\frac{3x + 2}{10}): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":645,"opensat_domain":"Algebra","opensat_raw_id":"6b4ebc8c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5d9114c3-042c-4088-a2cb-5de8849bada2';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":false,"explanation":"Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, the hypotenuse squared is equal to $5^2 + 12^2 = 25 + 144 = 169$.  The square root of 169 is 13, so the length of the hypotenuse is 13.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (7): Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":100,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"12d8c11e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5dd0e0f2-9fbf-45a3-99fe-bc8d92cd493d';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - 2y = 4$, what is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - 2y = 4$, what is the value of $x + y$?

**Step 2 — Solve.** To solve for $x + y$, we can add the two equations together.  The $y$ terms will cancel out, leaving us with $3x = 16$.  Solving for $x$, we get $x = \frac{16}{3}$.  Substituting this value back into either of the original equations, we can solve for $y$.  Substituting into the first equation, we get $2 \cdot \frac{16}{3} + 3y = 12$, or $\frac{32}{3} + 3y = 12$.  Subtracting $\frac{32}{3}$ from both sides, we get $3y = 12 - \frac{32}{3}$, or $3y = \frac{4}{3}$.  Dividing both sides by 3, we get $y = \frac{4}{9}$.  Therefore, $x + y = \frac{16}{3} + \frac{4}{9} = 6$.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":1000,"opensat_domain":"Algebra","opensat_raw_id":"e83839db","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5e10e5dc-5428-4c45-bf12-f6898a075656';

UPDATE public.questions SET
  question_text = 'A function is defined by $f(x) = \frac{x^2}{2} + 3x - 5$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-7","is_correct":false,"explanation":"Choice B (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-5","is_correct":false,"explanation":"Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-3","is_correct":false,"explanation":"Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A function is defined by $f(x) = \frac{x^2}{2} + 3x - 5$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of f(-2), we substitute -2 for x in the function''s formula: $f(-2) = \frac{(-2)^2}{2} + 3(-2) - 5$. Simplifying, we get $f(-2) = \frac{4}{2} - 6 - 5$, or $f(-2) = 2 - 6 - 5$, which equals -9.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-7): Choice B (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-5): Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-3): Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":851,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5e7d7565-534a-4714-80d6-d82839037d9d';

UPDATE public.questions SET
  question_text = 'A survey of 200 students found that 120 students prefer pizza, 80 students prefer burgers, and 50 students prefer both. How many students prefer neither pizza nor burgers?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"70","is_correct":false,"explanation":"Choice C (70…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 students found that 120 students prefer pizza, 80 students prefer burgers, and 50 students prefer both. How many students prefer neither pizza nor burgers?

**Step 2 — Solve.** Let P represent the set of students who prefer pizza, B represent the set of students who prefer burgers, and  represent the set of students who prefer both.  We know that  | = 120,  | = 80, and  | = 50. We are asked to find | , which represents the set of students who prefer neither pizza nor burgers. Using the principle of inclusion-exclusion, we have: | = | + | - | = 120 + 80 - 50 = 150.  Since there are 200 students in the survey, the number who prefer neither pizza nor burgers is 200 - 150 = 50.

**Step 3 — Select A.** 30

**Distractor analysis:**
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (70): Choice C (70…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":56,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5eb81090-ee5b-401c-852d-c1f2fcab82f3';

UPDATE public.questions SET
  question_text = 'A group of friends is planning a trip. They decide to rent a car for \$50 per day plus a one-time insurance fee of \$15. If they rent the car for *d* days, which of the following expressions represents the total cost of renting the car? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"50*d + 15","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"50 + 15*d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"50(d + 15)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"15(50 + d)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of friends is planning a trip. They decide to rent a car for \$50 per day plus a one-time insurance fee of \$15. If they rent the car for *d* days, which of the following expressions represents the total cost of renting the car? 

**Step 2 — Solve.** The daily rental cost is $50, so the cost for *d* days is 50*d. Adding the one-time insurance fee gives the total cost: 50*d + 15.

**Step 3 — Select A.** 50*d + 15

**Distractor analysis:**
- **B** (50 + 15*d): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (50(d + 15)): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (15(50 + d)): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":525,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f87e5493","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5ec54a9a-c555-4cb4-9ed9-7957bbfc7ba2';

UPDATE public.questions SET
  question_text = 'If 2x + 3y = 12 and x - y = 1, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If 2x + 3y = 12 and x - y = 1, what is the value of x?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiply the second equation by 3, which gives 3x - 3y = 3. Adding this equation to the first equation, we get 5x = 15. Dividing both sides by 5, we get x = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":224,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5f2dc473-e7e2-4a9b-bbce-c009a42034cb';

COMMIT;
