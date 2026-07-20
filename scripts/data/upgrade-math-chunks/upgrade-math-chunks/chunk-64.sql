BEGIN;
UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students play basketball, 40 students play soccer, and 15 students play both basketball and soccer. How many students play neither basketball nor soccer?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"35","is_correct":false,"explanation":"Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students play basketball, 40 students play soccer, and 15 students play both basketball and soccer. How many students play neither basketball nor soccer?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let B represent the set of students who play basketball, and let S represent the set of students who play soccer.  The number of students who play both sports is 15, so we put 15 in the intersection of the two circles.  Since 60 students play basketball, and 15 of them also play soccer, 60 - 15 = 45 students play only basketball.  Similarly, 40 - 15 = 25 students play only soccer.  The total number of students who play either basketball or soccer is 45 + 25 + 15 = 85.  This means that 100 - 85 = 15 students play neither basketball nor soccer.

**Step 3 — Select C.** 25

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (35): Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":196,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"4f8a7902","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '58f5ecde-ff80-4d79-a163-71dc27acfb87';

UPDATE public.questions SET
  question_text = 'If  $y = 2x + 3$ and $x = 5$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"8","is_correct":false,"explanation":"Choice A (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $y = 2x + 3$ and $x = 5$, what is the value of $y$?

**Step 2 — Solve.** Substituting the value of $x = 5$ into the equation $y = 2x + 3$ gives us $y = 2(5) + 3 = 10 + 3 = 13$.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (8): Choice A (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":837,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5906d6b8-1b3d-43ac-b2bd-c5f257496868';

UPDATE public.questions SET
  question_text = 'If the original price is $390$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 25%.',
  options = '[{"id":"A","text":"$366$","is_correct":true,"explanation":"**Step 1:** $390×1.25=488$. **Step 2:** $488×0.75=366$."},{"id":"B","text":"$390$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$488$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$376$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $390×(1+25/100)=488$.
**Step 2:** Discount: $488×(1-25/100)=366$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5908952e-2c84-4e78-bbec-0cb60c3d8ed7';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x + 2}$. For what value of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x + 2}$. For what value of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator is equal to zero. The denominator of the given function,  $x + 2$, is equal to zero when $x = -2$. Therefore, $f(x)$ is undefined for $x = -2$.

**Step 3 — Select A.** -2

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":691,"opensat_domain":"Advanced Math","opensat_raw_id":"a891379d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '593e8a0b-2152-4704-89bf-4fe7a5f5412a';

UPDATE public.questions SET
  question_text = 'A function *f* is defined by $f(x) = 2x^2 + 3x - 5$.  What is the value of *f*(-2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-5","is_correct":false,"explanation":"Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A function *f* is defined by $f(x) = 2x^2 + 3x - 5$.  What is the value of *f*(-2)?

**Step 2 — Solve.** Substituting -2 for *x* in the function *f*, we get: 

$f(-2) = 2(-2)^2 + 3(-2) - 5$ 

$f(-2) = 2(4) - 6 - 5$ 

$f(-2) = 8 - 6 - 5$ 

$f(-2) = -3$

**Step 3 — Select A.** -11

**Distractor analysis:**
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-5): Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":28,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5946f4fb-4f14-4a32-ade0-e6e107abf24b';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5\\pi$","is_correct":false,"explanation":"Choice A ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$10\\pi$","is_correct":false,"explanation":"Choice B ($10\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$25\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$100\\pi$","is_correct":false,"explanation":"Choice D ($100\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives $A = \pi (5^2) = 25\pi$.

**Step 3 — Select C.** $25\pi$

**Distractor analysis:**
- **A** ($5\pi$): Choice A ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($10\pi$): Choice B ($10\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($100\pi$): Choice D ($100\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":627,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '595a0e2b-51dd-40a9-99f7-c2883d04847a';

UPDATE public.questions SET
  question_text = 'In triangle ABC, angle A is a right angle, and the lengths of sides AC and BC are 6 and 8, respectively.  What is the length of side AB?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\sqrt{10}$","is_correct":false,"explanation":"Choice C ($\\sqrt{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{100}$","is_correct":false,"explanation":"Choice D ($\\sqrt{100}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle ABC, angle A is a right angle, and the lengths of sides AC and BC are 6 and 8, respectively.  What is the length of side AB?

**Step 2 — Solve.** Triangle ABC is a right triangle, so we can use the Pythagorean Theorem: $a^2 + b^2 = c^2$, where a and b are the lengths of the legs and c is the length of the hypotenuse.  In this case, AC = 6 and BC = 8, so  $6^2 + 8^2 = c^2$. Simplifying, we get $36 + 64 = c^2$, or $100 = c^2$.  Taking the square root of both sides, we get $c = \sqrt{100}$, or $c = 10$. Therefore, the length of side AB is 10.

**Step 3 — Select B.** 10

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{10}$): Choice C ($\sqrt{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\sqrt{100}$): Choice D ($\sqrt{100}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":673,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '59633abc-8e3a-4824-80b4-c3617f659316';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 29 by 28 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$812$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$808$","is_correct":true,"explanation":"**Step 1:** Full area $812$. **Step 2:** Subtract $2^2$ → $808$."},{"id":"D","text":"$810$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $29×28=812$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $812-4=808$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '59827d6f-97e5-4c5a-af42-019558dbf1fc';

COMMIT;
