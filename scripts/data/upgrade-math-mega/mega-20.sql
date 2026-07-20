BEGIN;
UPDATE public.questions SET
  question_text = 'A group of students are planning a trip. The cost of the trip is \$1200.  Each student is expected to contribute an equal amount of money. If there are $n$ students going on the trip, which of the following expressions represents the cost, in dollars, per student?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1200 + n","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"1200 - n","is_correct":false,"explanation":"Choice B (1200 - n…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1200n","is_correct":false,"explanation":"Choice C (1200n…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1200/n","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A group of students are planning a trip. The cost of the trip is \$1200.  Each student is expected to contribute an equal amount of money. If there are $n$ students going on the trip, which of the following expressions represents the cost, in dollars, per student?

**Step 2 — Solve.** The cost per student is the total cost divided by the number of students.  This is represented by the expression 1200/n.

**Step 3 — Select D.** 1200/n

**Distractor analysis:**
- **A** (1200 + n): Adds quantities that should be multiplied or compares unrelated terms.
- **B** (1200 - n): Choice B (1200 - n…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1200n): Choice C (1200n…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":299,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '15faed35-6896-4951-91a5-65d525c58907';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(21)=17$ and $f(26)=37$, what is $f(-23)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-155$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-23$)."},{"id":"C","text":"$-162$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-159$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-23)=4(-23-21)+(17)=-159$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{37-17}{26-21}=4$.
**Step 2:** Point-slope: $f(-23)=4(-23-21)+(17)$.
**Step 3:** $f(-23)=-159$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '168af500-2051-47fd-aef4-ab0972429c99';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+11)^2 - (3x-11)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$132x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+11$, $v=3x-11$ → $132x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$44x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+121$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+11$, $v=3x-11$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(22)=132x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '170ae7d2-07b3-4bc1-aa62-4143dc125c3e';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for x by using elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$.  Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":736,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '172ec524-c6e5-4e62-9e46-c608972c6f15';

UPDATE public.questions SET
  question_text = 'If the function *f* is defined by *f*(x) = \sqrt{x} + 4, what is the value of *f*(16)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"12","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If the function *f* is defined by *f*(x) = \sqrt{x} + 4, what is the value of *f*(16)?

**Step 2 — Solve.** To find *f*(16), we substitute 16 for *x* in the function: *f*(16) = \sqrt{16} + 4.  Since \sqrt{16} = 4, *f*(16) = 4 + 4 = 8.

**Step 3 — Select C.** 12

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":634,"opensat_domain":"Advanced Math","opensat_raw_id":"49e85755","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e6a08a0d-acd9-4bad-a933-bf25b8412d0d';
UPDATE public.questions SET
  question_text = 'If the function $f(x)=x^2 + 3x - 1$ is defined for all real numbers, what is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x)=x^2 + 3x - 1$ is defined for all real numbers, what is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of f(-2), we substitute -2 for $x$ in the function: $f(-2) = (-2)^2 + 3(-2) - 1 = 4 - 6 - 1 = -3$. Therefore, the value of f(-2) is -3.

**Step 3 — Select A.** -7

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":629,"opensat_domain":"Advanced Math","opensat_raw_id":"2795ab32","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e73ae8e4-202f-449a-848c-f3c6e0c4cf10';
UPDATE public.questions SET
  question_text = 'A survey of 200 students found that 120 students prefer pizza, 80 students prefer tacos, and 50 students prefer both pizza and tacos. How many students prefer only pizza?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":false,"explanation":"Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"70","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 students found that 120 students prefer pizza, 80 students prefer tacos, and 50 students prefer both pizza and tacos. How many students prefer only pizza?

**Step 2 — Solve.** Since 50 students prefer both pizza and tacos, 120 - 50 = 70 students prefer only pizza.

**Step 3 — Select C.** 70

**Distractor analysis:**
- **A** (40): Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":854,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"834f21d4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e73e85a6-24b1-4d43-b1e4-70e43b7dc02e';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"18","is_correct":false,"explanation":"Choice A (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"24","is_correct":false,"explanation":"Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"48","is_correct":false,"explanation":"Choice D (48…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side length of each equilateral triangle is equal to the radius of the circle, which is 6. Therefore, the perimeter of the hexagon is 6 times the side length of the equilateral triangle, or 6 * 6 = 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (18): Choice A (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (24): Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (48): Choice D (48…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":257,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e7570fe9-7b06-43cf-87f6-3267755117fc';
UPDATE public.questions SET
  question_text = 'If the system of equations $\begin{cases} 2x + 3y = 7 \\ x - 2y = 1 \end{cases}$ has solution $(x, y)$, what is the value of $x - y$ ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the system of equations $\begin{cases} 2x + 3y = 7 \\ x - 2y = 1 \end{cases}$ has solution $(x, y)$, what is the value of $x - y$ ?

**Step 2 — Solve.** To solve for $x - y$, we can multiply the second equation by 2, giving us $2x - 4y = 2$.  Subtracting this equation from the first equation, we get $7y = 5$, so $y = \frac{5}{7}$. Substituting this value back into the equation $x - 2y = 1$, we get $x - 2(\frac{5}{7}) = 1$, so $x = \frac{19}{7}$.  Therefore, $x - y = \frac{19}{7} - \frac{5}{7} = \frac{14}{7} = 2$.

**Step 3 — Select B.** -1

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"SYS","domain_id":"algebra","opensat_index":721,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e78aa547-6cb5-4936-9b07-adf17a02bb7c';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+44)^2 - (3x-44)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$528x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+44$, $v=3x-44$ → $528x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$176x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1936$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+44$, $v=3x-44$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(88)=528x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e7a66733-b063-4fe1-801e-ba3509e68bb8';
UPDATE public.questions SET
  question_text = 'After $t=32$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+29$.',
  options = '[{"id":"A","text":"$153$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=32$."},{"id":"B","text":"$157$","is_correct":true,"explanation":"**Step 1:** Substitute $t=32$. **Step 2:** $d=4(32)+29=157$."},{"id":"C","text":"$158$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=32$: $d=4(32)+29$.
**Step 2:** Compute: $d=157$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e7d13e17-f74d-4dac-a47c-d5c608cdf69d';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+31)^2 - (2x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$248x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+31$, $v=2x-31$ → $248x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+31$, $v=2x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(62)=248x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e7d886a1-3523-4f17-9091-71c78423d992';

UPDATE public.questions SET
  question_text = 'If  $y = 2x + 1$ and  $x = 3$, what is the value of *y*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If  $y = 2x + 1$ and  $x = 3$, what is the value of *y*?

**Step 2 — Solve.** Substituting *x* = 3 into the equation  *y* = 2*x* + 1, we get *y* = 2(3) + 1, or *y* = 6 + 1, or *y* = 7.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":881,"opensat_domain":"Algebra","opensat_raw_id":"d3d44ee4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e7f8ee16-89ca-42d5-9ccb-c4c6116d3942';
UPDATE public.questions SET
  question_text = 'If  $3x - 2y = 10$ and $x + 2y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $3x - 2y = 10$ and $x + 2y = 2$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together eliminates $y$: $3x - 2y + (x + 2y) = 10 + 2$, which simplifies to $4x = 12$. Dividing both sides by 4, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":152,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e831fc8f-5297-45ea-9cc4-1175c38e355a';
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(9,26)$ and $(15,44)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{44-26}{15-9}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$44$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e8334071-51d5-4032-bc09-5af3c0319f8a';
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 10x + 24 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-6)=0$.
**Step 2:** Roots $x=4$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e84716c4-219f-499e-872e-d3ac281b8c0e';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:5$ to make 264 milliliters of solution.',
  options = '[{"id":"A","text":"$114$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$116$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$117$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{9}$. **Step 2:** $\\frac{4}{9}×264=117$."},{"id":"D","text":"$264$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{9}$ of 264.
**Step 2:** $\frac{4}{9}×264=117$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e8554860-0579-452b-9da3-21d940d089f9';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60% of them prefer apples to oranges. How many people prefer apples to oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60% of them prefer apples to oranges. How many people prefer apples to oranges?

**Step 2 — Solve.** To find the number of people who prefer apples to oranges, we multiply the total number of people surveyed (100) by the percentage who prefer apples (60%): 100 * 0.60 = 60.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":479,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e857cb18-18c1-487b-be41-1a021aebc2ff';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 25 ft from the wall and the top is 32 ft high.',
  options = '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$41$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{25^2+32^2}=41$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 25 and 32.
**Step 2:** $c=\sqrt{25^2+32^2}=41$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e8b2ba12-b70f-48fe-8c85-ac28b8c9c2a8';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 4 meters.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(4)=25.12$."},{"id":"B","text":"$50.24$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$8.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$12.56$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(4)=25.12$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e8e9b9c9-dabd-4200-8f01-03173b6448f6';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-40)^2+42$, where $t$ is seconds. What is $h(43)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** $h(43)=3(43-40)^2+42=3(9)+42=69$."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=43$: $h(43)=3(43-40)^2+42$.
**Step 2:** $(43-40)^2=9$ → $h(43)=69$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e8f3bbb8-0e85-4382-99c0-31d99e193b4b';
UPDATE public.questions SET
  question_text = 'If the original price is $270$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 25%.',
  options = '[{"id":"A","text":"$254$","is_correct":true,"explanation":"**Step 1:** $270×1.25=338$. **Step 2:** $338×0.75=254$."},{"id":"B","text":"$270$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$338$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$264$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $270×(1+25/100)=338$.
**Step 2:** Discount: $338×(1-25/100)=254$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e8f48bfa-7e6b-4853-b55d-b8dc1b2d53a8';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-4)^2+6$, where $t$ is seconds. What is $h(7)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$33$","is_correct":true,"explanation":"**Step 1:** $h(7)=3(7-4)^2+6=3(9)+6=33$."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=7$: $h(7)=3(7-4)^2+6$.
**Step 2:** $(7-4)^2=9$ → $h(7)=33$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e91e9bef-3ea9-4ff6-b37e-87e1d714f661';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 6, 10, 14, 18, and one score $x$ is missing. The mean is 10.4.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"**Step 1:** Sum needed $=10.4×5=52$. **Step 2:** $x=52-48=4$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=10.4×5=52$.
**Step 2:** $x=52-48=4$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e9356407-f8f9-4439-96c7-877a768d4670';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 150°.',
  options = '[{"id":"A","text":"$150°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$30°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-150=30°$."},{"id":"C","text":"$40°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-150°=30°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e968812c-62af-4f7c-8b66-deb0f81c3a5e';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 175 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e96b51ce-e5e6-4ee9-acb2-d50d90045a81';
UPDATE public.questions SET
  question_text = 'What is the value of  $x$ in the equation  $\frac{2x+1}{x-1} = \frac{3x-1}{x-2}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the value of  $x$ in the equation  $\frac{2x+1}{x-1} = \frac{3x-1}{x-2}$?

**Step 2 — Solve.** To solve for $x$, we can cross-multiply: $(2x+1)(x-2) = (3x-1)(x-1)$. Expanding both sides gives us $2x^2 - 3x - 2 = 3x^2 - 4x + 1$. Combining like terms, we have $0 = x^2 - x + 3$. This quadratic equation doesn''t factor easily, so we can use the quadratic formula: \begin{align*} x &= \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} \\\ &= \frac{1 \pm \sqrt{(-1)^2 - 4(1)(3)}}{2(1)} \\\ &= \frac{1 \pm \sqrt{-11}}{2} \end{align*} Since the discriminant is negative, the equation has no real solutions.  Therefore, the only possible value of $x$ is 3.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":66,"opensat_domain":"Advanced Math","opensat_raw_id":"89f638d2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e9c7a1b9-f9c8-4311-a3b8-f879552e2bdb';
UPDATE public.questions SET
  question_text = 'A triangle has angles that measure 60 degrees, 60 degrees, and 60 degrees. What is the area of the triangle if the length of one side is 4?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4\\sqrt{3}","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A triangle has angles that measure 60 degrees, 60 degrees, and 60 degrees. What is the area of the triangle if the length of one side is 4?

**Step 2 — Solve.** A triangle with all angles equal to 60 degrees is an equilateral triangle.  The area of an equilateral triangle with side length s is given by $\frac{\sqrt{3}}{4}s^2$. Substituting s = 4 gives $\frac{\sqrt{3}}{4}(4)^2 = 4\sqrt{3}$.  Therefore, the area of the triangle is $4\sqrt{3}$.

**Step 3 — Select C.** 4\sqrt{3}

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":199,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ea0efcdb-e6fe-4e09-8490-4dbbecd876bc';

UPDATE public.questions SET
  question_text = 'If the original price is $240$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 10%.',
  options = '[{"id":"A","text":"$270$","is_correct":true,"explanation":"**Step 1:** $240×1.25=300$. **Step 2:** $300×0.9=270$."},{"id":"B","text":"$240$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$300$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$280$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $240×(1+25/100)=300$.
**Step 2:** Discount: $300×(1-10/100)=270$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ea50249b-c7d9-4cd1-912a-3578f9e7cddf';
UPDATE public.questions SET
  question_text = 'After $t=21$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+18$.',
  options = '[{"id":"A","text":"$118$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=21$."},{"id":"B","text":"$123$","is_correct":true,"explanation":"**Step 1:** Substitute $t=21$. **Step 2:** $d=5(21)+18=123$."},{"id":"C","text":"$124$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$23$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=21$: $d=5(21)+18$.
**Step 2:** Compute: $d=123$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ea598aff-3da7-4a03-859d-fa9b27f20c0d';
UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5, the diameter is 10. Therefore, the side length of the square is 10, and the area of the square is 10 * 10 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":724,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ea783fcb-56ce-4faf-b43e-791af27b7116';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 7 > 236$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 236 grams but at most 249 grams to ship.',
  options = '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Too small: $4(55)+7=227$."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Still below threshold 236."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$58$","is_correct":true,"explanation":"**Step 1:** $4x > 229$. **Step 2:** $x > 57.25$. Smallest integer choice: 58."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 229$.
**Step 2:** $x > 57.25$.
**Step 3:** Among choices, $58$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ea7c2e52-49c1-4f46-87fd-4a79769fc3e0';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 126°.',
  options = '[{"id":"A","text":"$126°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$54°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-126=54°$."},{"id":"C","text":"$64°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-126°=54°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ea9b9043-c194-46b8-b5c6-931eda06b78a';
UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 units is centered at the point (2, 3). What is the equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 2)^2 + (y - 3)^2 = 25","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(x + 2)^2 + (y + 3)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 2)^2 + (y - 3)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x + 2)^2 + (y + 3)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 units is centered at the point (2, 3). What is the equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2.  Substituting the given values, we get (x - 2)^2 + (y - 3)^2 = 5^2, or (x - 2)^2 + (y - 3)^2 = 25.

**Step 3 — Select A.** (x - 2)^2 + (y - 3)^2 = 25

**Distractor analysis:**
- **B** ((x + 2)^2 + (y + 3)^2 = 5): May result from squaring when you should multiply or add.
- **C** ((x - 2)^2 + (y - 3)^2 = 5): May result from squaring when you should multiply or add.
- **D** ((x + 2)^2 + (y + 3)^2 = 25): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":260,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_47","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'eae0a996-b022-423c-aefe-a43821f3e507';
UPDATE public.questions SET
  question_text = 'If  \(3x + 4y = 12\) and \(x - 2y = 4\), what is the value of \(x\) ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  \(3x + 4y = 12\) and \(x - 2y = 4\), what is the value of \(x\) ?

**Step 2 — Solve.** We can solve for \(x\) by using elimination. Multiplying the second equation by 2, we get \(2x - 4y = 8\). Adding this equation to the first equation, we get \(5x = 20\). Dividing both sides by 5, we get \(x = 4\).

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":544,"opensat_domain":"Algebra","opensat_raw_id":"49d388b4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'eb0b2ffd-67f6-4b4e-b954-e56e550a73e0';
COMMIT;
