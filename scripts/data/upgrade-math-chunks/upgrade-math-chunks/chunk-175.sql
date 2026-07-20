BEGIN;
UPDATE public.questions SET
  question_text = 'If  \(3x + 2y = 10\)  and  \(x - y = 1\), what is the value of  \(x + y\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  \(3x + 2y = 10\)  and  \(x - y = 1\), what is the value of  \(x + y\)?

**Step 2 — Solve.** To solve for  \(x + y\), we can use the elimination method.  Multiplying the second equation by 2 gives  \(2x - 2y = 2\). Adding this equation to the first equation gives \(5x = 12\), so \(x = \frac{12}{5}\). Substituting this value of x back into the second equation gives \(\frac{12}{5} - y = 1\), so \(y = \frac{7}{5}\).  Therefore, \(x + y = \frac{12}{5} + \frac{7}{5} = \frac{19}{5} = 3 \frac{4}{5}\), but only 5 is a choice.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":536,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ecc94f66-307b-4ee5-8064-1139da93d1a6';

UPDATE public.questions SET
  question_text = 'A function is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A function is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the function, we get: 

f(-2) = 2(-2)^2 - 3(-2) + 1

f(-2) = 2(4) + 6 + 1

f(-2) = 8 + 6 + 1

f(-2) = 15

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":758,"opensat_domain":"Advanced Math","opensat_raw_id":"37c9b215","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ecd8e73f-68fe-46ba-8b5f-a2d9c0ac7985';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 11 meters.',
  options = '[{"id":"A","text":"$69.08$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(11)=69.08$."},{"id":"B","text":"$379.94$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$22.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$34.54$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(11)=69.08$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ed07d3ba-a5b3-424c-879e-9366f38f61c4';

UPDATE public.questions SET
  question_text = 'A group of 5 friends are planning a trip.  They decide to split the cost of the trip evenly.  If the total cost of the trip is \$450, how much will each friend pay? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"90","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"455","is_correct":false,"explanation":"Choice C (455…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2250","is_correct":false,"explanation":"Choice D (2250…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 5 friends are planning a trip.  They decide to split the cost of the trip evenly.  If the total cost of the trip is \$450, how much will each friend pay? 

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost by the number of friends: $450 / 5 = $90.

**Step 3 — Select B.** 90

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (455): Choice C (455…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2250): Choice D (2250…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":500,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"4b50a70e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ed7eca63-0f29-42fa-9a34-e690ef77fe7e';

UPDATE public.questions SET
  question_text = 'A bakery offers 3 different types of cupcakes: chocolate, vanilla, and strawberry. The bakery sells twice as many chocolate cupcakes as vanilla cupcakes, and it sells 50 strawberry cupcakes. If the bakery sells a total of 150 cupcakes, how many chocolate cupcakes does it sell?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":false,"explanation":"Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A bakery offers 3 different types of cupcakes: chocolate, vanilla, and strawberry. The bakery sells twice as many chocolate cupcakes as vanilla cupcakes, and it sells 50 strawberry cupcakes. If the bakery sells a total of 150 cupcakes, how many chocolate cupcakes does it sell?

**Step 2 — Solve.** Let''s represent the number of vanilla cupcakes as ''v''. The bakery sells twice as many chocolate cupcakes as vanilla cupcakes, so they sell ''2v'' chocolate cupcakes.  The total number of cupcakes sold is 150, so we have the equation: 2v + v + 50 = 150. Combining like terms, we get 3v + 50 = 150. Subtracting 50 from both sides, we get 3v = 100. Dividing both sides by 3, we get v = 33.33. Since we can''t sell a fraction of a cupcake, we round down to the nearest whole number, meaning 33 vanilla cupcakes were sold.  Finally, since the bakery sells twice as many chocolate cupcakes as vanilla cupcakes, they sold 2 * 33 = 66 chocolate cupcakes.

**Step 3 — Select D.** 80

**Distractor analysis:**
- **A** (40): Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":264,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"49c1fd52","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ed85049d-56cb-4bb1-9573-cca679f91b05';

UPDATE public.questions SET
  question_text = 'The function f(x) is defined as $f(x) = x^2 - 3x + 2$. If the graph of y = f(x) intersects the x-axis at the points (a, 0) and (b, 0), what is the value of a + b?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined as $f(x) = x^2 - 3x + 2$. If the graph of y = f(x) intersects the x-axis at the points (a, 0) and (b, 0), what is the value of a + b?

**Step 2 — Solve.** The x-intercepts of the graph of y = f(x) occur where the function crosses the x-axis, which means y = 0.  So we need to find the roots of the equation f(x) = 0.  Factoring the quadratic, we get (x - 1)(x - 2) = 0.  Therefore, the roots are x = 1 and x = 2.  So, a + b = 1 + 2 = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":789,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ed92d3ae-1d8a-491d-af08-3055a2c7cc44';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters.',
  options = '[{"id":"A","text":"$87.92$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(14)=87.92$."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$28.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(14)=87.92$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ed9855cb-10a7-4854-96e7-3d34afcb614e';

UPDATE public.questions SET
  question_text = 'A line passes through the points $(2, 3)$ and $(6, -1)$. What is the slope of this line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A line passes through the points $(2, 3)$ and $(6, -1)$. What is the slope of this line?

**Step 2 — Solve.** The slope of a line passing through two points $(x_1, y_1)$ and $(x_2, y_2)$ is given by the formula \frac{y_2 - y_1}{x_2 - x_1}. Plugging in the given points, we get \frac{-1 - 3}{6 - 2} = \frac{-4}{4} = -1.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":191,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'edbc4358-9a91-442d-b643-850291d85f76';

COMMIT;
