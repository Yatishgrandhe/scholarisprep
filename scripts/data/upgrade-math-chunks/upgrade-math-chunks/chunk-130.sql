BEGIN;
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

COMMIT;
