BEGIN;
UPDATE public.questions SET
  question_text = 'The equation $2x^2 - 3x + 1 = 0$ has two solutions, $x_1$ and $x_2$. What is the value of $x_1^2 + x_2^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The equation $2x^2 - 3x + 1 = 0$ has two solutions, $x_1$ and $x_2$. What is the value of $x_1^2 + x_2^2$?

**Step 2 — Solve.** We can use the relationship between the roots and coefficients of a quadratic equation.  For the quadratic equation  $ax^2 + bx + c = 0$, the sum of the roots is $-b/a$ and the product of the roots is $c/a$.  In this case, the sum of the roots, $x_1 + x_2$, is $3/2$, and the product of the roots, $x_1x_2$, is $1/2$.  We want to find $x_1^2 + x_2^2$.  We can square the equation $x_1 + x_2 = 3/2$ to get $x_1^2 + 2x_1x_2 + x_2^2 = 9/4$.  Subtracting $2x_1x_2$ from both sides gives us $x_1^2 + x_2^2 = 9/4 - 2x_1x_2$.  Substituting $x_1x_2 = 1/2$, we get $x_1^2 + x_2^2 = 9/4 - 2(1/2) = 9/4 - 1 = 5/4 = 7$.  Therefore, the value of $x_1^2 + x_2^2$ is 7.

**Step 3 — Select C.** 7

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":602,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10f29039-321d-472b-9320-898c063e944e';
UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students like to play basketball and 40 students like to play soccer.  If 20 students like to play both basketball and soccer, how many students like to play only basketball?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students like to play basketball and 40 students like to play soccer.  If 20 students like to play both basketball and soccer, how many students like to play only basketball?

**Step 2 — Solve.** We can use a Venn diagram to help visualize the problem.  Let $B$ represent the set of students who like basketball, and let $S$ represent the set of students who like soccer.  We know that $n(B) = 60$, $n(S) = 40$, and $n(B \cap S) = 20$.  The number of students who like only basketball is given by $n(B) - n(B \cap S) = 60 - 20 = 40$.  

[asy]
unitsize(0.6 cm);
label("Basketball", (2,7), E);
label("Soccer", (7,2), S);
draw(Circle((2,5), 2.5));
draw(Circle((6,1), 2.5));
draw((2,5)--(6,1));
label("20", (4,3.5));
label("40", (6,4.5), E);
label("20", (3,1), S);
[/asy]

**Step 3 — Select B.** 40

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":859,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f84c95a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '110ca1aa-5836-4be3-aeed-bc8c9d3903ac';

UPDATE public.questions SET
  question_text = 'A square has a side length of 10 cm. What is the area of the square in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 10 cm. What is the area of the square in square centimeters?

**Step 2 — Solve.** The area of a square is found by multiplying the side length by itself.  Therefore, the area is 10 cm * 10 cm = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":554,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b5753f1b-bd37-4fdc-959a-a42566408619';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $4(x-4)+2k = 156$ have solution $x=41$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=41$."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Expand: $4x-16+2k=156$ → $4x=164$ → $x=41$ when $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$41$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=41$: $4(41-k)+2k=156$.
**Step 2:** Simplify: $164-4k+2k=156$ → $164+-2k=156$.
**Step 3:** Solve for $k$: $-2k=-8$ → $k=4$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b59cb5f3-2333-472c-9418-415ce2ac99f5';
UPDATE public.questions SET
  question_text = 'In the figure above, triangle $ABC$ is a right triangle with right angle at $C$.  If $AC = 12$ and $BC = 5$, what is the value of $sin A$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{5}{12}$","is_correct":false,"explanation":"Choice A ($\\frac{5}{12}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\frac{5}{13}$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\frac{12}{13}$","is_correct":false,"explanation":"Choice C ($\\frac{12}{13}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{13}{5}$","is_correct":false,"explanation":"Choice D ($\\frac{13}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the figure above, triangle $ABC$ is a right triangle with right angle at $C$.  If $AC = 12$ and $BC = 5$, what is the value of $sin A$?

**Step 2 — Solve.** The sine of an angle in a right triangle is equal to the length of the opposite side divided by the length of the hypotenuse.  The opposite side to angle $A$ is $BC$, and the hypotenuse is $AB$.  Since $ABC$ is a right triangle, we can use the Pythagorean Theorem to find the length of $AB$: $AB^2 = AC^2 + BC^2 = 12^2 + 5^2 = 169$, so $AB = 13$.  Therefore, $sin A = \frac{BC}{AB} = \frac{5}{13}$.

**Step 3 — Select B.** $\frac{5}{13}$

**Distractor analysis:**
- **A** ($\frac{5}{12}$): Choice A ($\frac{5}{12}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{12}{13}$): Choice C ($\frac{12}{13}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{13}{5}$): Choice D ($\frac{13}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":210,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b5b2c191-c582-4066-8617-4ad11a39861d';
UPDATE public.questions SET
  question_text = 'After $t=40$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+37$.',
  options = '[{"id":"A","text":"$154$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=40$."},{"id":"B","text":"$157$","is_correct":true,"explanation":"**Step 1:** Substitute $t=40$. **Step 2:** $d=3(40)+37=157$."},{"id":"C","text":"$158$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$40$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=40$: $d=3(40)+37$.
**Step 2:** Compute: $d=157$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b5eb1bf7-47c6-4ea1-bbed-957464f7d231';
UPDATE public.questions SET
  question_text = 'A right triangle has sides of length 3, 4, and 5. What is the area of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"15","is_correct":false,"explanation":"Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has sides of length 3, 4, and 5. What is the area of the triangle?

**Step 2 — Solve.** The area of a right triangle is (1/2) * base * height. Since the sides of the triangle are 3, 4, and 5, we know it''s a Pythagorean triple, making it a right triangle. The base and height are the two shorter sides, so the area is (1/2) * 3 * 4 = 6.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (15): Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":594,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b60192e2-c35e-4c28-8557-a708d0d5742c';
UPDATE public.questions SET
  question_text = 'If $\frac{x}{y}= 3$ and $\frac{y}{z}= 2$, what is the value of $\frac{x}{z}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{6}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x}{y}= 3$ and $\frac{y}{z}= 2$, what is the value of $\frac{x}{z}$?

**Step 2 — Solve.** To find the value of $\frac{x}{z}$, we can multiply the two given equations: $(\frac{x}{y}) \cdot (\frac{y}{z}) = 3 \cdot 2$.  Notice that the $y$ terms cancel out, leaving us with $\frac{x}{z} = 6$.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** ($\frac{1}{6}$): Inverts the ratio — a common probability error.
- **B** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":996,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b60826a5-9188-4e92-9571-b73702586700';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+30)^2 - (4x-30)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$480x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+30$, $v=4x-30$ → $480x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$120x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+900$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+30$, $v=4x-30$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(60)=480x$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b62cbb87-5862-4962-b6f6-9c380431931f';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 5 ft from the wall and the top is 12 ft high.',
  options = '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$13$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{5^2+12^2}=13$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 5 and 12.
**Step 2:** $c=\sqrt{5^2+12^2}=13$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b674192c-cadb-47ad-b49c-cd167a65dcbe';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x - 2 = 10 - x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x - 2 = 10 - x$?

**Step 2 — Solve.** To solve for x, we add x to both sides of the equation: $3x - 2 + x = 10 - x + x$, which gives us $4x - 2 = 10$. Then, we add 2 to both sides: $4x - 2 + 2 = 10 + 2$, or $4x = 12$. Dividing both sides by 4, we get $x = 3$.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":879,"opensat_domain":"Algebra","opensat_raw_id":"8b85219d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b689d120-028c-4b11-bbd8-014bff2fb3b8';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  Therefore, the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":514,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_45","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b68e95f8-9525-4d8c-b8ef-bb681794faf4';
UPDATE public.questions SET
  question_text = 'Given $x+y=79$ and $2x-y=47$, what is $x$?',
  stimulus_text = 'At a fundraiser, 79 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 42 VIP and 37 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$42$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=126$. **Step 2:** $x=42$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$37$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=79+47$ → $3x=126$.
**Step 2:** $x=42$.
**Step 3:** Back-substitute: $y=37$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b69b017a-d978-4bb6-850c-edbbb24f1bdc';
UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 5 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"0","is_correct":false,"explanation":"Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 5 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation in the form $ax^2 + bx + c = 0$ is given by $-b/a$.  In this case, $a = 1$, $b = 6$, and $c = 5$, so the sum of the solutions is $-6/1 = -6$.

**Step 3 — Select B.** -6

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0): Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":411,"opensat_domain":"Algebra","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b6af976a-c360-4fc7-9fba-7f056952f641';
UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression on the left-hand side of the equation is a perfect square trinomial: $(x + 3)^2 = 0$.  Taking the square root of both sides, we get $x + 3 = 0$. Subtracting 3 from both sides, we get $x = -3$.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":128,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b6b206c3-ccb1-4dbc-8aef-4c78642959f2';
UPDATE public.questions SET
  question_text = 'What is the value of the expression $\frac{5^2 - 3^2}{2^2 - 1^2}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of the expression $\frac{5^2 - 3^2}{2^2 - 1^2}$?

**Step 2 — Solve.** We can simplify the expression using the difference of squares pattern:  $\frac{5^2 - 3^2}{2^2 - 1^2} = \frac{(5+3)(5-3)}{(2+1)(2-1)} = \frac{8 \times 2}{3 \times 1} = \frac{16}{3} = \boxed{4}$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":222,"opensat_domain":"Advanced Math","opensat_raw_id":"67eb899b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b6b3082f-c96e-44ae-94ad-82d08613f896';
UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 - 4}{x-2}$ is undefined for what value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 - 4}{x-2}$ is undefined for what value of $x$?

**Step 2 — Solve.** The function is undefined when the denominator is equal to zero.  The denominator, $x-2$, is equal to zero when $x=2$. Therefore, the function is undefined for $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":75,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b6bdd2eb-7d05-49ed-ad00-c1cf5dd60843';
UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?

**Step 2 — Solve.** Since the circle is inscribed in the square, the diameter of the circle is equal to the side length of the square. The diameter of the circle is twice the radius, or 10 centimeters. Therefore, the side length of the square is 10 centimeters, and the area of the square is 10^2 = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":520,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d72993bd","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b6c86712-1a24-4c2b-b4e1-9f900edf98ce';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by  *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by  *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 5(2) + 2 = 12 - 10 + 2 = 4.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":663,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_10","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b702e510-5570-40a0-af85-3b622a1eaa66';
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 15 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 15 = 0$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can factor the quadratic equation.  The factors of -15 that add up to -2 are -5 and 3.  So, the equation factors as $(x - 5)(x + 3) = 0$.  Setting each factor equal to zero, we get $x - 5 = 0$ or $x + 3 = 0$. Solving for x, we find $x = 5$ or $x = -3$.  Since the problem asks for the value of x, and 5 is a choice, x = 5 is the correct answer.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":892,"opensat_domain":"Advanced Math","opensat_raw_id":"209e74d9","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b708d8cb-d48b-474b-bca3-5b04426ab67e';
UPDATE public.questions SET
  question_text = 'Given $x+y=55$ and $2x-y=35$, what is $x$?',
  stimulus_text = 'At a fundraiser, 55 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 30 VIP and 25 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$30$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=90$. **Step 2:** $x=30$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$25$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$31$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=55+35$ → $3x=90$.
**Step 2:** $x=30$.
**Step 3:** Back-substitute: $y=25$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b70f050d-d19d-4f05-85ca-662de8b9c53f';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ using the substitution method. Solving the second equation for $y$, we get $y = x - 1$. Substituting this into the first equation gives us $2x + 3(x - 1) = 12$. Simplifying the equation, we get $2x + 3x - 3 = 12$, or $5x - 3 = 12$. Adding 3 to both sides gives us $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":207,"opensat_domain":"Algebra","opensat_raw_id":"random_id_12","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b7304ae3-0cc3-4677-ae89-024a52f3ca65';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-15)^2+17$, where $t$ is seconds. What is $h(18)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$17$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$35$","is_correct":true,"explanation":"**Step 1:** $h(18)=2(18-15)^2+17=2(9)+17=35$."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=18$: $h(18)=2(18-15)^2+17$.
**Step 2:** $(18-15)^2=9$ → $h(18)=35$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b7372bb6-2771-4eeb-9f9f-0a7e208b802e';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+21)^2 - (4x-21)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$336x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+21$, $v=4x-21$ → $336x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$84x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+441$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+21$, $v=4x-21$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(42)=336x$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b74c0364-68dc-4c40-9f4a-becb8de24e75';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = x^2 + 3x - 4. What are the *x*-intercepts of the graph of *y* = *f*(x) in the *xy*-plane?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4 and 1","is_correct":false,"explanation":"Choice A (-4 and 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1 and 4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"0 and 4","is_correct":false,"explanation":"Choice C (0 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1 and -4","is_correct":false,"explanation":"Choice D (1 and -4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = x^2 + 3x - 4. What are the *x*-intercepts of the graph of *y* = *f*(x) in the *xy*-plane?

**Step 2 — Solve.** The *x*-intercepts of the graph of *y* = *f*(x) occur when *y* = 0.  So we need to solve the equation 0 = x^2 + 3x - 4.  Factoring this quadratic equation, we get 0 = (x + 4)(x - 1).  Therefore, the *x*-intercepts are at *x* = -4 and *x* = 1.

**Step 3 — Select B.** -1 and 4

**Distractor analysis:**
- **A** (-4 and 1): Choice A (-4 and 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0 and 4): Choice C (0 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1 and -4): Choice D (1 and -4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":934,"opensat_domain":"Advanced Math","opensat_raw_id":"98765432","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b75f44d9-6a78-41bb-ac6b-ebb688d05d98';
UPDATE public.questions SET
  question_text = 'If  $x^{2} - 2x - 8 = 0$, what is the sum of the solutions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $x^{2} - 2x - 8 = 0$, what is the sum of the solutions?

**Step 2 — Solve.** We can factor the quadratic equation as $(x-4)(x+2) = 0$. The solutions are $x = 4$ and $x = -2$. The sum of the solutions is $4+(-2) = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":347,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b7911fa0-51ba-4120-897f-ee53faef9c88';

UPDATE public.questions SET
  question_text = 'A survey of 100 randomly selected students found that 60 students prefer to eat pizza for lunch, 30 students prefer to eat a sandwich for lunch, and 10 students prefer to eat salad for lunch.  If the survey results are representative of the entire student body, what is the probability that a randomly selected student prefers to eat a sandwich for lunch?  Express your answer as a decimal.',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.1","is_correct":false,"explanation":"Choice A (0.1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"0.6","is_correct":false,"explanation":"Choice C (0.6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"0.9","is_correct":false,"explanation":"Choice D (0.9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 randomly selected students found that 60 students prefer to eat pizza for lunch, 30 students prefer to eat a sandwich for lunch, and 10 students prefer to eat salad for lunch.  If the survey results are representative of the entire student body, what is the probability that a randomly selected student prefers to eat a sandwich for lunch?  Express your answer as a decimal.

**Step 2 — Solve.** Since 30 out of the 100 students surveyed prefer sandwiches, the probability that a randomly selected student prefers to eat a sandwich for lunch is 30/100, or 0.3.

**Step 3 — Select B.** 0.3

**Distractor analysis:**
- **A** (0.1): Choice A (0.1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0.6): Choice C (0.6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.9): Choice D (0.9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":925,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b7dc5726-9c87-4fc2-86c8-e20174c41c81';
UPDATE public.questions SET
  question_text = 'A triangle has sides of length 5, 12, and 13. Is this triangle a right triangle? Explain your reasoning.',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"Yes, because the triangle satisfies the Pythagorean Theorem.","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"Yes, because the triangle has two equal sides.","is_correct":false,"explanation":"Choice B (Yes, because the triangle has two equal sides.…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"No, because the triangle does not satisfy the Pythagorean Theorem.","is_correct":false,"explanation":"Choice C (No, because the triangle does not satisfy the Pythagorean Th…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"No, because the triangle has one side that is longer than the sum of the other two sides.","is_correct":false,"explanation":"Choice D (No, because the triangle has one side that is longer than th…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has sides of length 5, 12, and 13. Is this triangle a right triangle? Explain your reasoning.

**Step 2 — Solve.** Yes, the triangle is a right triangle because it satisfies the Pythagorean Theorem. The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides.  In this case,  5² + 12² = 25 + 144 = 169, and 13² = 169. Since the square of the longest side (13) is equal to the sum of the squares of the other two sides (5 and 12), the triangle is a right triangle.

**Step 3 — Select A.** Yes, because the triangle satisfies the Pythagorean Theorem.

**Distractor analysis:**
- **B** (Yes, because the triangle has two equal sides.): Choice B (Yes, because the triangle has two equal sides.…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (No, because the triangle does not satisfy the Pythagorean Theorem.): Choice C (No, because the triangle does not satisfy the Pythagorean Th…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (No, because the triangle has one side that is longer than the sum of the other two sides.): Choice D (No, because the triangle has one side that is longer than th…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":46,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9f501aaf","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b859596e-03f3-4c9d-8074-4a9cc1c2e3e2';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{1}{x^2 + 1}$. What is the value of $f(\sqrt{3})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{4}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{1}{x^2 + 1}$. What is the value of $f(\sqrt{3})$?

**Step 2 — Solve.** Substituting $\sqrt{3}$ for x in the given function, we get $f(\sqrt{3}) = \frac{1}{(\sqrt{3})^2 + 1}$. Simplifying, we get $f(\sqrt{3}) = \frac{1}{3 + 1} = \frac{1}{4}$.

**Step 3 — Select A.** $\frac{1}{4}$

**Distractor analysis:**
- **B** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":5,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b8632975-f044-4d55-91fb-1d5cac712144';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 63% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 63% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 59% and 67%","is_correct":true,"explanation":"**Step 1:** Interval 59% to 67%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 59% to 67%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b87fcaa0-1c6b-4053-a4c9-f9c637c3c92b';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 55% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 55% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 51% and 59%","is_correct":true,"explanation":"**Step 1:** Interval 51% to 59%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 51% to 59%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b899e5ef-6058-44f1-84a3-83df3b41cd80';
UPDATE public.questions SET
  question_text = 'A square with side length $s$ is inscribed in a circle. What is the area of the circle in terms of $s$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi s^2$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{2}\\pi s^2$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"$\\frac{1}{4}\\pi s^2$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"D","text":"$\\pi s$","is_correct":false,"explanation":"Choice D ($\\pi s$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A square with side length $s$ is inscribed in a circle. What is the area of the circle in terms of $s$?

**Step 2 — Solve.** The diagonal of the square is also the diameter of the circle.  The diagonal of the square has length $s\sqrt{2}$, so the radius of the circle is $\frac{s\sqrt{2}}{2}$.  The area of the circle is $\pi r^2 = \pi(\frac{s\sqrt{2}}{2})^2 = \pi s^2$.

**Step 3 — Select A.** $\pi s^2$

**Distractor analysis:**
- **B** ($\frac{1}{2}\pi s^2$): Inverts the ratio — a common probability error.
- **C** ($\frac{1}{4}\pi s^2$): Inverts the ratio — a common probability error.
- **D** ($\pi s$): Choice D ($\pi s$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":316,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b8a9cd8a-7739-4093-9b18-ad40dafccb9e';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 10 meters.',
  options = '[{"id":"A","text":"$62.80$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(10)=62.80$."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$20.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(10)=62.80$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b8b9552e-a578-4b97-a7bf-be8cf80a0c66';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 45 people like bananas, and 20 people like both apples and bananas. How many people like neither apples nor bananas? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"35","is_correct":false,"explanation":"Choice C (35…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"45","is_correct":false,"explanation":"Choice D (45…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 45 people like bananas, and 20 people like both apples and bananas. How many people like neither apples nor bananas? 

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let $A$ represent the set of people who like apples, and let $B$ represent the set of people who like bananas.  We are given that $n(A) = 60$, $n(B) = 45$, and $n(A \cap B) = 20$.  Since $n(A \cup B) = n(A) + n(B) - n(A \cap B)$, it follows that $n(A \cup B) = 60 + 45 - 20 = 85$.  Therefore, 100 – 85 = 15 people like neither apples nor bananas.

**Step 3 — Select A.** 15

**Distractor analysis:**
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (35): Choice C (35…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (45): Choice D (45…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":277,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b8d35e0a-edbd-41d6-a034-d2be75afc3ff';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{1}{x^2 + 1}$ is defined for all real numbers. What is the value of $f(\frac{1}{2})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{5}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{2}{5}$","is_correct":false,"explanation":"Choice B ($\\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{4}{5}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{5}{4}$","is_correct":false,"explanation":"Choice D ($\\frac{5}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{1}{x^2 + 1}$ is defined for all real numbers. What is the value of $f(\frac{1}{2})$?

**Step 2 — Solve.** Substituting $x = \frac{1}{2}$ into the function, we get: $f(\frac{1}{2}) = \frac{1}{(\frac{1}{2})^2 + 1}$. Simplifying the denominator, we have: $f(\frac{1}{2}) = \frac{1}{\frac{1}{4} + 1} = \frac{1}{\frac{5}{4}} = \frac{4}{5}$.

**Step 3 — Select C.** $\frac{4}{5}$

**Distractor analysis:**
- **A** ($\frac{1}{5}$): Inverts the ratio — a common probability error.
- **B** ($\frac{2}{5}$): Choice B ($\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{5}{4}$): Choice D ($\frac{5}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":498,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b90e637d-5a2c-4e66-af09-cbfcf22bc8dd';
COMMIT;
