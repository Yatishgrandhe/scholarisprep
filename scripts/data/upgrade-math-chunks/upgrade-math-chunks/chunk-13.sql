BEGIN;
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 15 by 14 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$210$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$206$","is_correct":true,"explanation":"**Step 1:** Full area $210$. **Step 2:** Subtract $2^2$ → $206$."},{"id":"D","text":"$208$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $15×14=210$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $210-4=206$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '106e712d-d7a5-4d5f-8319-02c2dde426b4';

UPDATE public.questions SET
  question_text = 'A regular hexagon has a side length of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon has a side length of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon has six equal sides.  Therefore, the perimeter is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":309,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '107646cb-e9ff-4c6c-ae3e-76716798c20f';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"30","is_correct":false,"explanation":"Choice D (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem. Draw two overlapping circles, one for apples and one for oranges.  The overlap represents people who like both. Since 20 people liked both, we can fill in the overlap with 20. Since 60 people liked apples total, and 20 liked both, then 60-20 = 40 people liked only apples. Similarly, 40-20 = 20 people liked only oranges. This gives us a total of 40 + 20 + 20 = 80 people who liked at least one of the fruits.  Therefore, 100-80 = 20 people liked neither apples nor oranges.

**Step 3 — Select C.** 20

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (30): Choice D (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":749,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"6a12b9d6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10941e80-c8f3-488b-9d2b-56d531887e33';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 41, 45, 49, 53, and one score $x$ is missing. The mean is 45.4.',
  options = '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$39$","is_correct":true,"explanation":"**Step 1:** Sum needed $=45.4×5=227$. **Step 2:** $x=227-188=39$."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=45.4×5=227$.
**Step 2:** $x=227-188=39$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10a75be3-dc79-43b2-a220-9ba9bb669364';

UPDATE public.questions SET
  question_text = 'If $x^2 - 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"0","is_correct":false,"explanation":"Choice D (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression $x^2 - 6x + 9$ is a perfect square trinomial: $(x-3)^2 = 0$. Taking the square root of both sides gives $x-3 = 0$, or $x = 3$.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0): Choice D (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1021,"opensat_domain":"Advanced Math","opensat_raw_id":"25a57533","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10a84d97-d1b8-4965-bfdf-7a4f456c773b';

UPDATE public.questions SET
  question_text = 'If  $x + y = 5$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $x + y = 5$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $2x = 6$. Dividing both sides by 2, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":253,"opensat_domain":"Algebra","opensat_raw_id":"a9d72d33","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '10eab99c-8e66-4f85-b719-35af0a4e048f';

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

COMMIT;
