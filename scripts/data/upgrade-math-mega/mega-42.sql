BEGIN;
UPDATE public.questions SET
  question_text = 'A function  is defined as \(f(x) = \frac{x^2 - 4}{x - 2}\) for $x \neq 2$.  What is the value of \(f(5)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"9","is_correct":false,"explanation":"Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A function  is defined as \(f(x) = \frac{x^2 - 4}{x - 2}\) for $x \neq 2$.  What is the value of \(f(5)\)?

**Step 2 — Solve.** To find the value of f(5), we substitute 5 for x in the function. This gives us f(5) = (5^2 - 4)/(5 - 2) = (25 - 4)/3 = 21/3 = 7.

**Step 3 — Select A.** 7

**Distractor analysis:**
- **B** (9): Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":237,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7c9e8e1a-7ed2-449c-9469-c174690a2ec9';
UPDATE public.questions SET
  question_text = 'In the figure below, right triangle $ABC$ has a right angle at $C$, and $AC = 6$ and $BC = 8$. What is the length of the hypotenuse $AB$?  [asy] draw((0,0)--(8,0)--(0,6)--cycle); draw((0,0)--(8,0),EndArrow); draw((0,0)--(0,6),EndArrow); label("A",(0,0),SW); label("B",(8,0),SE); label("C",(0,6),NW); label("6",(0,3),W); label("8",(4,0),S); [/asy]',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"14","is_correct":false,"explanation":"Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In the figure below, right triangle $ABC$ has a right angle at $C$, and $AC = 6$ and $BC = 8$. What is the length of the hypotenuse $AB$?  [asy] draw((0,0)--(8,0)--(0,6)--cycle); draw((0,0)--(8,0),EndArrow); draw((0,0)--(0,6),EndArrow); label("A",(0,0),SW); label("B",(8,0),SE); label("C",(0,6),NW); label("6",(0,3),W); label("8",(4,0),S); [/asy]

**Step 2 — Solve.** Triangle $ABC$ is a right triangle, so we can use the Pythagorean Theorem to find the length of the hypotenuse. The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides. In this case, we have $AB^2 = AC^2 + BC^2$, so $AB^2 = 6^2 + 8^2 = 36 + 64 = 100$. Taking the square root of both sides, we get $AB = \sqrt{100}$, or $AB = 10$.

**Step 3 — Select A.** 10

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (14): Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":930,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7d597d40-562d-47e4-934f-b878de0ca574';
UPDATE public.questions SET
  question_text = 'If $x^2 + 2x + 1 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x + 1 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression on the left side of the equation is a perfect square trinomial: $(x + 1)^2$.  Taking the square root of both sides, we get $x + 1 = 0$.  Subtracting 1 from both sides gives us $x = -1$.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":398,"opensat_domain":"Advanced Math","opensat_raw_id":"f4a9fd2e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7d912013-a6ff-4a66-9f4c-55125af3e5c4';
UPDATE public.questions SET
  question_text = 'A rectangle has a length of 10 centimeters and a width of 6 centimeters. What is the area, in square centimeters, of the rectangle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"16","is_correct":false,"explanation":"Choice A (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"32","is_correct":false,"explanation":"Choice B (32…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"106","is_correct":false,"explanation":"Choice D (106…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 10 centimeters and a width of 6 centimeters. What is the area, in square centimeters, of the rectangle? 

**Step 2 — Solve.** The area of a rectangle is equal to the product of its length and its width. So, the area of this rectangle is 10 centimeters * 6 centimeters = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (16): Choice A (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (32): Choice B (32…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (106): Choice D (106…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":593,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '7d946a07-133a-4a1e-af60-26192a842a79';
UPDATE public.questions SET
  question_text = 'Which of the following is equivalent to the expression $(x^2+1)(x^2-1)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^4 - 1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x^4 + 1","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"x^4 + 2x^2 + 1","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"x^4 - 2x^2 + 1","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** Which of the following is equivalent to the expression $(x^2+1)(x^2-1)$?

**Step 2 — Solve.** This expression is in the form of the difference of squares: (a + b)(a - b) = a^2 - b^2. In this case, a = x^2 and b = 1.  Therefore, (x^2 + 1)(x^2 - 1) = (x^2)^2 - 1^2 = x^4 - 1.

**Step 3 — Select A.** x^4 - 1

**Distractor analysis:**
- **B** (x^4 + 1): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (x^4 + 2x^2 + 1): May result from squaring when you should multiply or add.
- **D** (x^4 - 2x^2 + 1): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":459,"opensat_domain":"Advanced Math","opensat_raw_id":"8d3b424f","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '7dc01d6e-a876-4ade-8df9-e210b6066b0d';

UPDATE public.questions SET
  question_text = 'If the original price is $470$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 25%.',
  options = '[{"id":"A","text":"$423$","is_correct":true,"explanation":"**Step 1:** $470×1.2=564$. **Step 2:** $564×0.75=423$."},{"id":"B","text":"$470$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$564$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$433$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $470×(1+20/100)=564$.
**Step 2:** Discount: $564×(1-25/100)=423$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '7e08d5ba-d929-447d-86b6-b31aa2c59b55';
UPDATE public.questions SET
  question_text = 'The equation $2x + 3y = 12$ represents a line in the xy-plane.  What is the y-intercept of the line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation $2x + 3y = 12$ represents a line in the xy-plane.  What is the y-intercept of the line?

**Step 2 — Solve.** To find the y-intercept of a line, we set $x$ equal to 0 and solve for $y$.  Substituting 0 for $x$ in the equation $2x + 3y = 12$, we get $3y = 12$. Dividing both sides by 3, we find $y = 4$.  Therefore, the y-intercept of the line is (0, 4).  The y-intercept is -4, which is the y-value when $x$ is equal to 0.

**Step 3 — Select A.** -4

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":717,"opensat_domain":"Algebra","opensat_raw_id":"7777777","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7ec43330-5368-4858-8120-ec600a51bbdc';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-9)^2+11$, where $t$ is seconds. What is $h(12)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$11$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$29$","is_correct":true,"explanation":"**Step 1:** $h(12)=2(12-9)^2+11=2(9)+11=29$."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=12$: $h(12)=2(12-9)^2+11$.
**Step 2:** $(12-9)^2=9$ → $h(12)=29$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7ed869be-8350-4a48-acb2-60df24e7f6a8';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x - 2}$. For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-2","is_correct":false,"explanation":"Choice C (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2 and -2","is_correct":false,"explanation":"Choice D (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x - 2}$. For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator of the fraction is equal to zero. In this case, the denominator is $x-2$. Solving the equation $x-2 = 0$, we find that $x = 2$. Therefore, $f(x)$ is undefined when $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-2): Choice C (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2 and -2): Choice D (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":867,"opensat_domain":"Advanced Math","opensat_raw_id":"2c31ff5c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7ee6f0f4-1b4c-4515-a22f-30e8f9dc0a8a';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{1}{x-2} + 3$. What is the vertical asymptote of the graph of $y = f(x)$ in the xy-plane?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = -2","is_correct":false,"explanation":"Choice A (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = 2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = -3","is_correct":false,"explanation":"Choice C (x = -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 3","is_correct":false,"explanation":"Choice D (x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{1}{x-2} + 3$. What is the vertical asymptote of the graph of $y = f(x)$ in the xy-plane?

**Step 2 — Solve.** A vertical asymptote occurs where the denominator of a rational function equals zero.  The denominator of $f(x)$ is $x-2$, which equals zero when $x = 2$. Therefore, the vertical asymptote of the graph of $y = f(x)$ is $x = 2$.

**Step 3 — Select B.** x = 2

**Distractor analysis:**
- **A** (x = -2): Choice A (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -3): Choice C (x = -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 3): Choice D (x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":31,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7f20a621-2440-4c83-a13d-7f6feeabceaa';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 8 ft from the wall and the top is 15 ft high.',
  options = '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$17$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{8^2+15^2}=17$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 8 and 15.
**Step 2:** $c=\sqrt{8^2+15^2}=17$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7f2e119c-4e0c-4dcc-9ad5-777c715898ba';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $3:7$ to make 132 milliliters of solution.',
  options = '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$40$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{3}{10}$. **Step 2:** $\\frac{3}{10}×132=40$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{3}{10}$ of 132.
**Step 2:** $\frac{3}{10}×132=40$ mL.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '7f53c60a-0367-4968-aec5-b98b5195bd87';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 50 people like bananas, and 20 people like both apples and bananas. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 50 people like bananas, and 20 people like both apples and bananas. How many people like only apples?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem. Let  represent the set of people who like apples, and  represent the set of people who like bananas. We know that . The problem states that 20 people like both apples and bananas, so . To find the number of people who like only apples, we subtract the number of people who like both apples and bananas from the number of people who like apples. So, the number of people who like only apples is .

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":3,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9f6f8f8f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7f64dbab-bb1b-4596-8901-ad9b427ca9ba';

UPDATE public.questions SET
  question_text = 'A group of 100 students were surveyed about their favorite type of music. 60 students said they like pop music, 45 students said they like rock music, and 20 students said they like both pop and rock music. How many students like only pop music?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 100 students were surveyed about their favorite type of music. 60 students said they like pop music, 45 students said they like rock music, and 20 students said they like both pop and rock music. How many students like only pop music?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let the circle labeled "Pop" represent all students who like pop music, and let the circle labeled "Rock" represent all students who like rock music. Since 20 students like both pop and rock music, we write "20" in the overlapping section of the circles. Since 60 students like pop music, and 20 of those also like rock music, 60 – 20 = 40 students like only pop music. Thus, the answer is 40.

**Step 3 — Select B.** 40

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":62,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_21","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7f74a51d-d012-4ddb-b34c-2abcb144606b';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 64% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"**Step 1:** Interval 60% to 68%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7f80f4d2-3cab-493d-9053-8aa1002133b2';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"17","is_correct":false,"explanation":"Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":false,"explanation":"Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of the triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is  $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select A.** 13

**Distractor analysis:**
- **B** (17): Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (19): Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":983,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f1d7a634","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7f9059c8-3a9b-456c-92c0-39c232a07c68';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '7fb26f1b-2169-40c9-9e92-d905852c962d';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $3(x-6)+2k = 18$ have solution $x=8$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=8$."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Expand: $3x-18+2k=18$ → $3x=24$ → $x=8$ when $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=8$: $3(8-k)+2k=18$.
**Step 2:** Simplify: $24-3k+2k=18$ → $24+-1k=18$.
**Step 3:** Solve for $k$: $-1k=-6$ → $k=6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7fc84ecb-f780-472d-9369-3500f4232bf7';
UPDATE public.questions SET
  question_text = 'After $t=25$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+22$.',
  options = '[{"id":"A","text":"$94$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=25$."},{"id":"B","text":"$97$","is_correct":true,"explanation":"**Step 1:** Substitute $t=25$. **Step 2:** $d=3(25)+22=97$."},{"id":"C","text":"$98$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$25$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=25$: $d=3(25)+22$.
**Step 2:** Compute: $d=97$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7fe307a4-bfa8-43f0-88bf-d6323bad508b';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle?  (Use $\pi \approx 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle?  (Use $\pi \approx 3.14$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $A \approx 3.14 \cdot 5^2 \approx 3.14 \cdot 25 \approx 78.5$.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":501,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '802a55af-1552-4e12-b5e3-960655f2f444';
UPDATE public.questions SET
  question_text = 'If the original price is $290$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$296$","is_correct":true,"explanation":"**Step 1:** $290×1.2=348$. **Step 2:** $348×0.85=296$."},{"id":"B","text":"$290$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$348$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $290×(1+20/100)=348$.
**Step 2:** Discount: $348×(1-15/100)=296$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8083025f-bcfd-40dd-974a-d1218a2d57cc';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the expression for *f*(x). This gives us *f*(2) = 3(2)^2 - 2(2) + 1 = 3(4) - 4 + 1 = 12 - 4 + 1 = 9.

**Step 3 — Select A.** 9

**Distractor analysis:**
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":12,"opensat_domain":"Advanced Math","opensat_raw_id":"79802835","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '80d94a40-ded8-45bc-b3f2-13b724388785';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+50)^2 - (3x-50)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$600x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+50$, $v=3x-50$ → $600x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$200x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2500$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+50$, $v=3x-50$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(100)=600x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '80fcc709-9879-4279-87dc-cb8a3a6cc967';
UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10. What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20\\pi","is_correct":false,"explanation":"Choice C (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10. What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius. Since the diameter is 10, the radius is 5.  Therefore, the circumference is C = 2\pi (5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20\pi): Choice C (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":641,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '810e92e5-2b3d-4824-8ea7-f0a7c56d6910';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the radius of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where C is the circumference and r is the radius.  We are given that C = 12\pi. Substituting 12\pi for C in the formula gives 12\pi = 2\pi r.  Dividing both sides of this equation by 2\pi gives 6 = r. Therefore, the radius of the circle is 6.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":753,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"4534957f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8134f9e3-d5db-4b39-bb44-59bbdb6caf7f';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 158°.',
  options = '[{"id":"A","text":"$158°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$22°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-158=22°$."},{"id":"C","text":"$32°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-158°=22°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '814cc53f-b827-4781-b017-59711a6d2c19';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 6 > 395$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 395 grams but at most 408 grams to ship.',
  options = '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Too small: $7(53)+6=377$."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Still below threshold 395."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$56$","is_correct":true,"explanation":"**Step 1:** $7x > 389$. **Step 2:** $x > 55.57142857142857$. Smallest integer choice: 56."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 389$.
**Step 2:** $x > 55.57$.
**Step 3:** Among choices, $56$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '81515946-58f0-4c78-b69e-cb8462822386';
UPDATE public.questions SET
  question_text = 'If $x = 3$ and $y = 2$, what is the value of $3x + 2y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x = 3$ and $y = 2$, what is the value of $3x + 2y$?

**Step 2 — Solve.** Substituting $x = 3$ and $y = 2$ into the expression, we get $3(3) + 2(2) = 9 + 4 = 13$.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":362,"opensat_domain":"Algebra","opensat_raw_id":"4231c004","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '817aeabc-0e45-4442-9a83-c213f98cb83c';
UPDATE public.questions SET
  question_text = 'A store sells apples and oranges. The price of an apple is $\$1.25$ and the price of an orange is $\$0.75$.  If a customer buys 3 apples and 2 oranges, how much will the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$5.00$","is_correct":false,"explanation":"Choice A ($\\$5.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$5.25$","is_correct":false,"explanation":"Choice B ($\\$5.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$6.00$","is_correct":false,"explanation":"Choice C ($\\$6.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$6.25$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples and oranges. The price of an apple is $\$1.25$ and the price of an orange is $\$0.75$.  If a customer buys 3 apples and 2 oranges, how much will the customer spend in total?

**Step 2 — Solve.** The cost of 3 apples is $3 \times $1.25 = $\$3.75$.  The cost of 2 oranges is $2 \times $0.75 = $\$1.50$.  The total cost is $\$3.75 + $1.50 = $\$5.25$.

**Step 3 — Select D.** $\$6.25$

**Distractor analysis:**
- **A** ($\$5.00$): Choice A ($\$5.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\$5.25$): Choice B ($\$5.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$6.00$): Choice C ($\$6.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":462,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '81a179bc-4a9a-45db-a6ac-c5def58ba1ef';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(31,92)$ and $(37,110)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{110-92}{37-31}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$110$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '81c2999e-754a-4964-9b25-85541ce57458';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for x by using elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we find $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":249,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '81fcd7b4-080a-48f0-8cfe-51b20ec60ce7';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 50 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 50 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let the number of people who liked only apples be x.  The number of people who liked only oranges is 50-20=30.  The total number of people in the survey is x + 20 + 30 = 100.  Solving for x, we get x = 50.  Therefore, 50 people liked only apples.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":181,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"7d6c67e3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '820f7d1b-9595-451d-a915-67cf4666b7df';
UPDATE public.questions SET
  question_text = 'A group of 200 people were surveyed about their favorite type of music. 120 people said they prefer pop music, 80 people said they prefer classical music, and 50 people said they prefer jazz music. What percentage of the people surveyed prefer jazz music?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15%","is_correct":false,"explanation":"Choice A (15%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20%","is_correct":false,"explanation":"Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"40%","is_correct":false,"explanation":"Choice D (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of 200 people were surveyed about their favorite type of music. 120 people said they prefer pop music, 80 people said they prefer classical music, and 50 people said they prefer jazz music. What percentage of the people surveyed prefer jazz music?

**Step 2 — Solve.** The percentage of people who prefer jazz music is calculated by dividing the number of people who prefer jazz music by the total number of people surveyed and then multiplying by 100%.  So, the percentage of people who prefer jazz music is (50/200) * 100% = 25%.

**Step 3 — Select C.** 25%

**Distractor analysis:**
- **A** (15%): Choice A (15%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20%): Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40%): Choice D (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":676,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '82441e2c-2c43-43d0-b630-1d22674bd5fe';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 4 meters.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(4)=25.12$."},{"id":"B","text":"$50.24$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$8.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$12.56$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(4)=25.12$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '825cbd2a-dc38-4acb-bc7a-76768f1180d6';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 142°.',
  options = '[{"id":"A","text":"$142°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$38°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-142=38°$."},{"id":"C","text":"$48°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-142°=38°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8266f6d0-714f-43c5-ae5f-acad6315f6a4';
COMMIT;
