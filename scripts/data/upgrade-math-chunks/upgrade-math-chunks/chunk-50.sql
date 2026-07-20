BEGIN;
UPDATE public.questions SET
  question_text = 'If $x - 2 = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x - 2 = 5$, what is the value of $x$?

**Step 2 — Solve.** Adding 2 to both sides of the equation $x - 2 = 5$ gives us $x = 5 + 2$, or $x = 7$.

**Step 3 — Select B.** 7

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":693,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4444efb8-1f0c-4403-a32a-21810c9f8597';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $5x + 6 > 238$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 238 grams but at most 251 grams to ship.',
  options = '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Too small: $5(44)+6=226$."},{"id":"B","text":"$45$","is_correct":false,"explanation":"Still below threshold 238."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$47$","is_correct":true,"explanation":"**Step 1:** $5x > 232$. **Step 2:** $x > 46.4$. Smallest integer choice: 47."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $5x > 232$.
**Step 2:** $x > 46.40$.
**Step 3:** Among choices, $47$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '448fb47c-848f-4284-af39-b5fe79f40446';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(5)=1$ and $f(10)=21$, what is $f(-7)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-43$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-7$)."},{"id":"C","text":"$-50$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-47$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-7)=4(-7-5)+(1)=-47$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{21-1}{10-5}=4$.
**Step 2:** Point-slope: $f(-7)=4(-7-5)+(1)$.
**Step 3:** $f(-7)=-47$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '449c7197-85d1-46ff-924b-f1e4069f3649';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-17)^2+19$, where $t$ is seconds. What is $h(20)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$19$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$37$","is_correct":true,"explanation":"**Step 1:** $h(20)=2(20-17)^2+19=2(9)+19=37$."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=20$: $h(20)=2(20-17)^2+19$.
**Step 2:** $(20-17)^2=9$ → $h(20)=37$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '44d559c5-3e62-46f8-84f2-086faf473e23';

UPDATE public.questions SET
  question_text = 'If $x^2 + 4x = 21$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":false,"explanation":"Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 4x = 21$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use the quadratic formula.  The equation is in the form $ax^2 + bx + c = 0$, where a = 1, b = 4, and c = -21. Substituting these values into the quadratic formula gives: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} = \frac{-4 \pm \sqrt{4^2 - 4(1)(-21)}}{2(1)} = \frac{-4 \pm \sqrt{16 + 84}}{2} = \frac{-4 \pm \sqrt{100}}{2} = \frac{-4 \pm 10}{2}$. Therefore, $x = 3$ or $x = -7$.  Of the choices given, $x = 3$ is the correct answer.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-7): Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":317,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '44de7eb5-ba55-4962-8d6b-46fea5f1641a';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(18,53)$ and $(24,71)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{71-53}{24-18}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$71$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '44e24b65-f4ba-4424-a876-349c55b8feec';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find $f(-2)$, we substitute -2 for $x$ in the function:  $f(-2) = 2(-2)^2 - 3(-2) + 1 = 8 + 6 + 1 = 15$.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":266,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '451511d2-cb91-4443-acd3-acaf5c9e7ab7';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 33 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{37}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{36}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{37}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{36}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 36 total. **Step 2:** P $=\\frac{3}{36}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 36.
**Step 2:** Conditional probability $=\frac{3}{36}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4533a503-8603-4cf6-b808-728ad0d1df3b';

COMMIT;
