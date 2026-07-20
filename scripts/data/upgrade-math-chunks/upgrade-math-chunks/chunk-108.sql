BEGIN;
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

COMMIT;
