BEGIN;
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-3)^2+5$, where $t$ is seconds. What is $h(6)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$23$","is_correct":true,"explanation":"**Step 1:** $h(6)=2(6-3)^2+5=2(9)+5=23$."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$7$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=6$: $h(6)=2(6-3)^2+5$.
**Step 2:** $(6-3)^2=9$ → $h(6)=23$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3296bd86-1f15-40b4-8c84-87c60bc5a71d';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(7)=3$ and $f(12)=23$, what is $f(-9)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-57$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-9$)."},{"id":"C","text":"$-64$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-61$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-9)=4(-9-7)+(3)=-61$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{23-3}{12-7}=4$.
**Step 2:** Point-slope: $f(-9)=4(-9-7)+(3)$.
**Step 3:** $f(-9)=-61$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '32a061f4-ce1a-4dcd-9d35-55cd7999c9c3';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5.  A chord of the circle is 8 units long.  What is the distance from the center of the circle to the chord? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5.  A chord of the circle is 8 units long.  What is the distance from the center of the circle to the chord? 

**Step 2 — Solve.** Draw a diagram of the circle and the chord.  Draw a perpendicular segment from the center of the circle to the chord.  This segment bisects the chord, creating two right triangles.  The hypotenuse of each triangle is the radius of the circle, 5, and the length of one leg is half the length of the chord, 4.  Using the Pythagorean theorem, we find the length of the other leg, which is the distance from the center of the circle to the chord: $\sqrt{5^2 - 4^2} = \sqrt{25-16} = \sqrt{9} = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":782,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_f8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '32ad689a-5ee7-4459-8a9e-df7df3ffff8e';

UPDATE public.questions SET
  question_text = 'What is the value of $x$ in the equation $2x+3=x-7$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-10","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ in the equation $2x+3=x-7$?

**Step 2 — Solve.** To solve for $x$, we need to isolate $x$ on one side of the equation. Subtracting $x$ from both sides, we get $x + 3 = -7$. Subtracting 3 from both sides, we get $x = -10$.

**Step 3 — Select B.** -10

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":337,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '32d62b4c-2965-4091-b684-c5331bbfcea4';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(30,89)$ and $(36,107)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{107-89}{36-30}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$107$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '336105f8-a983-40a2-acde-bf526988744f';

UPDATE public.questions SET
  question_text = 'What is the median of the seven data values shown? 2, 2, 3, 4, 4, 11',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the median of the seven data values shown? 2, 2, 3, 4, 4, 11

**Step 2 — Solve.** The median is the middle value when the data are ordered from least to greatest. Since the data are already presented in order from least to greatest, and there are 7 values, the median is the fourth value in the list, which is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":457,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f890dc20","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '336f2477-7147-4f78-bbc9-373484acb038';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 + 1}{x - 2}$ is undefined for which value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 + 1}{x - 2}$ is undefined for which value of $x$?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction is zero.  The denominator of $f(x)$ is $x - 2$, and this is equal to zero when $x = 2$. Therefore, $f(x)$ is undefined when $x = 2$.

**Step 3 — Select D.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1016,"opensat_domain":"Advanced Math","opensat_raw_id":"8f457e4f","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3380c70a-4e0b-436c-8240-75be7f9e22ae';

UPDATE public.questions SET
  question_text = 'The equation $x^2 - 6x + 8 = 0$ can be factored into the form $(x-a)(x-b) = 0$. What is the value of $a+b$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 - 6x + 8 = 0$ can be factored into the form $(x-a)(x-b) = 0$. What is the value of $a+b$?

**Step 2 — Solve.** To factor the quadratic, we need to find two numbers that add up to -6 (the coefficient of the x term) and multiply to 8 (the constant term). These numbers are -2 and -4. Therefore, the factored form of the equation is $(x-2)(x-4) = 0$, and $a+b = 2+4 = 6$.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":761,"opensat_domain":"Algebra","opensat_raw_id":"74d55478","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3387e0ba-4ca6-4fa1-97c4-1d4f40879388';

COMMIT;
