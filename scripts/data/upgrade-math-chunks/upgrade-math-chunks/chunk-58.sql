BEGIN;
UPDATE public.questions SET
  question_text = 'If \(\frac{x^2 - 9}{x + 3} = 8\), and \(x \neq -3\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-5","is_correct":false,"explanation":"Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If \(\frac{x^2 - 9}{x + 3} = 8\), and \(x \neq -3\), what is the value of \(x\)?

**Step 2 — Solve.** We can factor the numerator of the fraction, giving us \(\frac{(x + 3)(x - 3)}{x + 3} = 8\).  Since \(x \neq -3\), we can cancel the \(x + 3\) terms, leaving us with \(x - 3 = 8\).  Adding 3 to both sides gives us \(x = 11\).

**Step 3 — Select D.** 11

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-5): Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":503,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_f1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5039f6b1-b5e6-4b8b-a137-4a272f34bb74';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 5(2) + 2 = 12 - 10 + 2 = 4.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":624,"opensat_domain":"Advanced Math","opensat_raw_id":"8a76bc7a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '50659a0e-9c4a-4c10-b394-13786136aebf';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area, in square units, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area, in square units, of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$, we get $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":620,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f691e728","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '50955871-684c-468f-9f16-759e9332ecf3';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":false,"explanation":"Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of f(-2), we substitute -2 for x in the function: f(-2) = 3(-2)^2 - 2(-2) + 1. Simplifying, we get f(-2) = 3(4) + 4 + 1 = 12 + 4 + 1 = 17.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-9): Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":399,"opensat_domain":"Advanced Math","opensat_raw_id":"e16a3ff5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '50aae282-e7e3-4319-b0e1-9cc40c8adc25';

UPDATE public.questions SET
  question_text = 'A circle in the xy-plane has its center at $(4,-5)$ and a radius of 7. Which of the following is an equation for this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 4)^2 + (y + 5)^2 = 49","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(x + 4)^2 + (y - 5)^2 = 49","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 4)^2 + (y + 5)^2 = 7","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x + 4)^2 + (y - 5)^2 = 7","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle in the xy-plane has its center at $(4,-5)$ and a radius of 7. Which of the following is an equation for this circle?

**Step 2 — Solve.** The standard form of the equation of a circle in the xy-plane with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2.  Since the center of the circle is (4, -5) and the radius is 7, the equation of the circle is (x - 4)^2 + (y + 5)^2 = 7^2, or (x - 4)^2 + (y + 5)^2 = 49.

**Step 3 — Select A.** (x - 4)^2 + (y + 5)^2 = 49

**Distractor analysis:**
- **B** ((x + 4)^2 + (y - 5)^2 = 49): May result from squaring when you should multiply or add.
- **C** ((x - 4)^2 + (y + 5)^2 = 7): May result from squaring when you should multiply or add.
- **D** ((x + 4)^2 + (y - 5)^2 = 7): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":651,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f84e4372","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '50b8054a-7588-4af9-85ac-a3c3b27ae925';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 2(2) + 1 = 3(4) - 4 + 1 = 12 - 4 + 1 = 9. Therefore, *f*(2) = 9.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":541,"opensat_domain":"Advanced Math","opensat_raw_id":"3d88374a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '50e04672-afdb-44e4-9d5d-39efe998864a';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 - 4}{x - 2}$ is defined for all real numbers except $x = 2$. What is the value of $f(4)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 - 4}{x - 2}$ is defined for all real numbers except $x = 2$. What is the value of $f(4)$?

**Step 2 — Solve.** We can simplify the function by factoring the numerator: $f(x) = \frac{x^2 - 4}{x - 2} = \frac{(x+2)(x-2)}{x-2}$.  Since $x \neq 2$, we can cancel the common factor of $x-2$ to get $f(x) = x + 2$. Therefore, $f(4) = 4 + 2 = 6$.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":806,"opensat_domain":"Advanced Math","opensat_raw_id":"714fd53a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5153b581-90fd-45b0-bc14-e24103546c76';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":false,"explanation":"Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (7): Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":865,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '518407c6-5340-49f4-832c-903ada1190c0';

COMMIT;
