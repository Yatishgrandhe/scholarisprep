BEGIN;
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 21, 25, 29, 33, and one score $x$ is missing. The mean is 25.4.',
  options = '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$19$","is_correct":true,"explanation":"**Step 1:** Sum needed $=25.4×5=127$. **Step 2:** $x=127-108=19$."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$25$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=25.4×5=127$.
**Step 2:** $x=127-108=19$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'dfdc7d5d-22c2-4282-81b3-a1876fa6233e';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x - 6 = 12$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x - 6 = 12$?

**Step 2 — Solve.** Adding 6 to both sides of the equation yields $3x = 18$. Dividing both sides of this equation by 3 yields $x = 6$.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":282,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'dff24633-d7e1-41b0-902b-66f6392babdf';

UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students like to play basketball, 40 students like to play soccer, and 20 students like to play both.  How many students like to play only basketball?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students like to play basketball, 40 students like to play soccer, and 20 students like to play both.  How many students like to play only basketball?

**Step 2 — Solve.** We can use a Venn diagram to visualize the problem.  Let $B$ represent the set of students who like basketball and $S$ represent the set of students who like soccer.  We are given that $n(B)=60$, $n(S)=40$, and $n(B \cap S) = 20$.  We are asked to find $n(B \setminus S)$.  
  Since $n(B \cup S) = n(B) + n(S) - n(B \cap S)$, we know $n(B \cup S) = 60 + 40 - 20 = 80$.  Therefore, the number of students who like to play only basketball, $n(B \setminus S) = n(B \cup S) - n(S) = 80 - 40 = 40$.

**Step 3 — Select B.** 40

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":284,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dff9d594-fb5c-436d-9071-b2148d519118';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":false,"explanation":"Choice C (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5, the diameter is 10.  Therefore, the side length of the square is 10, and the area of the square is 10 * 10 = 100.

**Step 3 — Select D.** 100

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (50): Choice C (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":256,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"e51f3a8c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'dffe944a-34a8-4930-a072-f90ebcce8808';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10 centimeters. What is the area, in square centimeters, of the circle? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"314","is_correct":false,"explanation":"Choice D (314…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10 centimeters. What is the area, in square centimeters, of the circle? (Use $\pi = 3.14$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius of the circle. Since the diameter is 10 centimeters, the radius is 5 centimeters.  Substituting 3.14 for $\pi$ and 5 for $r$ in the formula yields $A = 3.14 \cdot 5^2 = 3.14 \cdot 25 = 78.5$.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (314): Choice D (314…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":891,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e03baea8-efab-41ac-9ae2-8a53cea16f05';

UPDATE public.questions SET
  question_text = 'What is the value of $\frac{\sqrt[3]{27}}{\sqrt{16}}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{3}{4}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{9}{4}$","is_correct":false,"explanation":"Choice B ($\\frac{9}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{3}{2}$","is_correct":false,"explanation":"Choice C ($\\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{9}{2}$","is_correct":false,"explanation":"Choice D ($\\frac{9}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the value of $\frac{\sqrt[3]{27}}{\sqrt{16}}$?

**Step 2 — Solve.** The cube root of 27 is 3, and the square root of 16 is 4. Therefore, $\frac{\sqrt[3]{27}}{\sqrt{16}} = \frac{3}{4}$.

**Step 3 — Select A.** $\frac{3}{4}$

**Distractor analysis:**
- **B** ($\frac{9}{4}$): Choice B ($\frac{9}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{3}{2}$): Choice C ($\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{9}{2}$): Choice D ($\frac{9}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":187,"opensat_domain":"Advanced Math","opensat_raw_id":"f65119c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e03ebfd6-78c0-43be-87b2-ce8f28ea296f';

UPDATE public.questions SET
  question_text = 'A triangle has vertices at the points $A(0, 0)$, $B(6, 0)$, and $C(3, 4)$. What is the area of triangle $ABC$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":false,"explanation":"Choice D (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has vertices at the points $A(0, 0)$, $B(6, 0)$, and $C(3, 4)$. What is the area of triangle $ABC$?

**Step 2 — Solve.** Triangle $ABC$ is a right triangle with base $AB = 6$ and height $BC = 4$.  The area of a triangle is given by $(1/2)bh$, so the area of triangle $ABC$ is $(1/2)(6)(4) = 12$.

**Step 3 — Select A.** 12

**Distractor analysis:**
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (36): Choice D (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":700,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"97c2f6f4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e059ca18-abac-4d3c-8c16-68b3e40a046d';

UPDATE public.questions SET
  question_text = 'A store is having a sale on all items. The price of a shirt is discounted by 20%. The discounted price of the shirt is \$32. What was the original price of the shirt?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$38$","is_correct":false,"explanation":"Choice A ($\\$38$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$40$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\$42$","is_correct":false,"explanation":"Choice C ($\\$42$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$48$","is_correct":false,"explanation":"Choice D ($\\$48$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store is having a sale on all items. The price of a shirt is discounted by 20%. The discounted price of the shirt is \$32. What was the original price of the shirt?

**Step 2 — Solve.** If the discounted price of \$32 represents 80% of the original price, then 1% of the original price is equal to \$32/80 = \$0.40. The original price of the shirt was 100% of the original price, or 100 * \$0.40 = \$40.

**Step 3 — Select B.** $\$40$

**Distractor analysis:**
- **A** ($\$38$): Choice A ($\$38$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$42$): Choice C ($\$42$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$48$): Choice D ($\$48$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":331,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e06030f3-80c0-4c2d-abe5-4a56ca898739';

COMMIT;
