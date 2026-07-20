BEGIN;
UPDATE public.questions SET
  question_text = 'The function *f* is defined by \(f(x) = x^2 + 3x - 10\). What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by \(f(x) = x^2 + 3x - 10\). What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function''s definition: *f*(2) = (2)^2 + 3(2) - 10 = 4 + 6 - 10 = 12.

**Step 3 — Select D.** 12

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":84,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '682480f4-dc89-4c05-975e-5b294cdd88b8';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$5\\pi$","is_correct":false,"explanation":"Choice B ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$10\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$25\\pi$","is_correct":false,"explanation":"Choice D ($25\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$, we get $C = 2\pi (5) = 10\pi$.

**Step 3 — Select C.** $10\pi$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($5\pi$): Choice B ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($25\pi$): Choice D ($25\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":305,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '686bcab4-a7f8-4853-8c56-4cd31a9e4317';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10 cm.  What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10 cm.  What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius.  Since the diameter is 10 cm, the radius is 5 cm.  Therefore, the circumference is C = 2π(5) = 10π cm.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":298,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6878a5fe-e414-495b-9627-db85b39e2b92';

UPDATE public.questions SET
  question_text = 'The function f(x) is defined by \(f(x) = \frac{x^2 - 4}{x-2}\). What is the value of f(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The function is undefined at x = 2","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined by \(f(x) = \frac{x^2 - 4}{x-2}\). What is the value of f(2)?

**Step 2 — Solve.** The function is undefined at x = 2 because the denominator becomes zero when x = 2, resulting in division by zero, which is undefined.

**Step 3 — Select D.** The function is undefined at x = 2

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":245,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '687b7781-0bc9-4773-a4a9-6b077599e7bf';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of this triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of this triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is \(\sqrt{5^2 + 12^2} = \sqrt{169} = 13\)

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":42,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_22","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6896faf1-3924-4e6a-a293-2cc825ebfaa3';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(25,74)$ and $(31,92)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{92-74}{31-25}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$92$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '689b85c5-7c32-41a1-a122-3d720deaf91d';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the area of the circle, in square centimeters? (Use 3.14 for $\pi$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the area of the circle, in square centimeters? (Use 3.14 for $\pi$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 cm for $r$ and 3.14 for $\pi$, we get $A = 3.14 \cdot 5^2 = 3.14 \cdot 25 = 78.5$ square centimeters.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":148,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9874b9c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '68bf0d75-2eb4-4088-a3a2-62d64409e71e';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square.  What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":false,"explanation":"Choice C (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square.  What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  Since the radius of the circle is 5, the diameter is 10.  The area of the square is side length squared, which is 10² = 100.

**Step 3 — Select D.** 100

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (50): Choice C (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":47,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"3c28f16b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '68d12528-1eff-4637-be34-889f79bcf846';

COMMIT;
