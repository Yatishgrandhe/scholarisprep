BEGIN;
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 195 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '433bbb99-67a4-4127-b2db-40c6883d8332';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = x^2 + 3x - 4$.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = x^2 + 3x - 4$.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for x in the function: $f(-2) = (-2)^2 + 3(-2) - 4 = 4 - 6 - 4 = -6$.

**Step 3 — Select A.** -6

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":262,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '43460d73-501d-4659-bbbd-8ce568386fa8';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 6 > 262$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 262 grams but at most 275 grams to ship.',
  options = '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Too small: $7(34)+6=244$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Still below threshold 262."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$37$","is_correct":true,"explanation":"**Step 1:** $7x > 256$. **Step 2:** $x > 36.57142857142857$. Smallest integer choice: 37."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 256$.
**Step 2:** $x > 36.57$.
**Step 3:** Among choices, $37$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4346adba-c875-4586-b657-cd5a8628c40c';

UPDATE public.questions SET
  question_text = 'If $f(x) = x^2 - 3x + 2$, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = x^2 - 3x + 2$, what is the value of $f(2)$?

**Step 2 — Solve.** To find the value of $f(2)$, we substitute $2$ for $x$ in the equation. This gives us $f(2) = 2^2 - 3(2) + 2 = 4 - 6 + 2 = 0$.

**Step 3 — Select A.** 0

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":438,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4378de35-43f6-4b65-873a-07207e1416d2';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?

**Step 2 — Solve.** We can use a Venn Diagram to represent the information given. \begin{align*} \text{People who like only apples} &= \text{People who like apples} - \text{People who like both apples and oranges} \\ &= 60 - 20\\ &= 40 \end{align*} Therefore, 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1004,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '438fe231-69f1-4233-93c8-ba7a20490d7f';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5 \\pi$","is_correct":false,"explanation":"Choice A ($5 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$10 \\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$25 \\pi$","is_correct":false,"explanation":"Choice C ($25 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$100 \\pi$","is_correct":false,"explanation":"Choice D ($100 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2 \pi r$, where $r$ is the radius.  Substituting 5 for $r$, we get $C = 2 \pi (5) = 10 \pi$.

**Step 3 — Select B.** $10 \pi$

**Distractor analysis:**
- **A** ($5 \pi$): Choice A ($5 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($25 \pi$): Choice C ($25 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($100 \pi$): Choice D ($100 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":739,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '43cbaacf-073d-4b95-907b-b6cf352d786c';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let A represent the set of people who like apples and O represent the set of people who like oranges.  The number of people who like both apples and oranges is the intersection of sets A and O.  Thus, 20 people like both apples and oranges, and 40 – 20 = 20 people like only oranges.  The total number of people who like apples is 60, so 60 – 20 = 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":76,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '43f0b866-4f56-490e-a1cc-e898ff3a2a96';

UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = x^3 + 2x^2 - 5x - 6\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-10","is_correct":false,"explanation":"Choice A (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = x^3 + 2x^2 - 5x - 6\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** We can find the value of \(f(-2)\) by substituting -2 for x in the function: \(f(-2) = (-2)^3 + 2(-2)^2 - 5(-2) - 6 = -8 + 8 + 10 - 6 = 6\).

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (-10): Choice A (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":936,"opensat_domain":"Advanced Math","opensat_raw_id":"301a429b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4424f8e0-5dcd-4c8f-bddf-e7d2b85953df';

COMMIT;
