BEGIN;
UPDATE public.questions SET
  question_text = 'What is the solution to the equation $2x - 3 = 7$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $2x - 3 = 7$?

**Step 2 — Solve.** Adding 3 to both sides of the equation gives $2x = 10$. Dividing both sides by 2 gives $x = 5$.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":943,"opensat_domain":"Algebra","opensat_raw_id":"28f5623d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bcd11889-da01-4a4a-803e-70d25404bbd5';

UPDATE public.questions SET
  question_text = 'If the function $f(x)$ is defined by $f(x)=2x-3$, what is the value of $f(5)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x)$ is defined by $f(x)=2x-3$, what is the value of $f(5)$?

**Step 2 — Solve.** To find the value of  f(5), we substitute 5 for *x* in the given function: f(5) = 2(5) - 3 = 10 - 3 = 7.

**Step 3 — Select A.** 7

**Distractor analysis:**
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":157,"opensat_domain":"Advanced Math","opensat_raw_id":"5d7815cf","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bd7f35b2-c425-47f1-ba9c-92e4bc840113';

UPDATE public.questions SET
  question_text = 'What is the value of  $x$ that satisfies the equation $2^x = 16$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of  $x$ that satisfies the equation $2^x = 16$?

**Step 2 — Solve.** We know that 16 is equal to 2 to the power of 4, or $2^4$.  Therefore, $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":648,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bdb7356d-948c-4655-91d8-9767b59fe1d1';

UPDATE public.questions SET
  question_text = 'A circle is inscribed in a square. The side length of the square is 10 centimeters. What is the area, in square centimeters, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"50\\pi","is_correct":false,"explanation":"Choice B (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100\\pi","is_correct":false,"explanation":"Choice C (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"400\\pi","is_correct":false,"explanation":"Choice D (400\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle is inscribed in a square. The side length of the square is 10 centimeters. What is the area, in square centimeters, of the circle?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square, which is 10 centimeters.  The radius of the circle is half the diameter, or 5 centimeters. The area of the circle is $\pi r^2$, or $\pi (5)^2 = 25\pi$ square centimeters.

**Step 3 — Select A.** 25\pi

**Distractor analysis:**
- **B** (50\pi): Choice B (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (100\pi): Choice C (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (400\pi): Choice D (400\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":928,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bdbd5634-1872-466f-9679-31762c49f876';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area, in square units, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area, in square units, of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula  where r is the radius of the circle.  Substituting 5 for r in the formula, we get π(5)² = 25π.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":592,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b646d131","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bdd59320-06ba-46dd-ad82-8353b60f0d71';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+9)^2 - (4x-9)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$144x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+9$, $v=4x-9$ → $144x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$36x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+81$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+9$, $v=4x-9$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(18)=144x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'be090de2-89d3-4708-a371-6e76b76e21cd';

UPDATE public.questions SET
  question_text = 'If $2x + 3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3 = 7$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we first subtract 3 from both sides of the equation: $2x + 3 - 3 = 7 - 3$. This gives us $2x = 4$. Then, we divide both sides of the equation by 2: $\frac{2x}{2} = \frac{4}{2}$. This gives us $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":144,"opensat_domain":"Algebra","opensat_raw_id":"random_id_4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'be5b8d6e-de47-44bc-8531-fdaf1c044c2b';

UPDATE public.questions SET
  question_text = 'What is the value of $\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \frac{4}{5}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{10}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{5}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"$\\frac{3}{5}$","is_correct":false,"explanation":"Choice C ($\\frac{3}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{7}{10}$","is_correct":false,"explanation":"Choice D ($\\frac{7}{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the value of $\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \frac{4}{5}$?

**Step 2 — Solve.** Notice that all of the numerators cancel with the denominators except for 1 in the numerator and 10 in the denominator.  This leaves us with $\frac{1}{10}$.

**Step 3 — Select A.** $\frac{1}{10}$

**Distractor analysis:**
- **B** ($\frac{1}{5}$): Inverts the ratio — a common probability error.
- **C** ($\frac{3}{5}$): Choice C ($\frac{3}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{7}{10}$): Choice D ($\frac{7}{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":636,"opensat_domain":"Advanced Math","opensat_raw_id":"234d5678","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bec81ab0-a231-49b0-9e00-8899b039614a';

COMMIT;
