BEGIN;
UPDATE public.questions SET
  question_text = 'What is the solution to the equation $2x + 5 = 17$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-11","is_correct":false,"explanation":"Choice C (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":false,"explanation":"Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $2x + 5 = 17$?

**Step 2 — Solve.** To solve for x, we first subtract 5 from both sides of the equation: $2x + 5 - 5 = 17 - 5$, which simplifies to $2x = 12$.  Then we divide both sides of the equation by 2: $2x/2 = 12/2$, which gives us $x = 6$.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-11): Choice C (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (11): Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":747,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ed1bc33-4c0a-4854-afcf-d83bf8b435ed';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 28 ft from the wall and the top is 35 ft high.',
  options = '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$45$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{28^2+35^2}=45$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 28 and 35.
**Step 2:** $c=\sqrt{28^2+35^2}=45$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4f0c26ee-4465-49c2-8019-f17e147f4341';
UPDATE public.questions SET
  question_text = 'A group of 20 students took a test. The average score on the test was 75.  If 10 students scored an average of 80 on the test, what was the average score of the other 10 students?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"65","is_correct":false,"explanation":"Choice A (65…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"70","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"75","is_correct":false,"explanation":"Choice C (75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 20 students took a test. The average score on the test was 75.  If 10 students scored an average of 80 on the test, what was the average score of the other 10 students?

**Step 2 — Solve.** The total score for all 20 students is 20 * 75 = 1500. The total score for the 10 students who scored an average of 80 is 10 * 80 = 800.  The total score for the other 10 students is 1500 – 800 = 700. Therefore, the average score for the other 10 students is 700/10 = 70.

**Step 3 — Select B.** 70

**Distractor analysis:**
- **A** (65): Choice A (65…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (75): Choice C (75…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":681,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f29e588f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4f53a272-7ba4-474e-af73-d0df49d81cc9';
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly. The total cost of the trip is \$2,400. If there are 6 friends, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$400$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\$450$","is_correct":false,"explanation":"Choice B ($\\$450$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$500$","is_correct":false,"explanation":"Choice C ($\\$500$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$600$","is_correct":false,"explanation":"Choice D ($\\$600$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly. The total cost of the trip is \$2,400. If there are 6 friends, how much will each friend pay?

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost by the number of friends: $2,400 / 6 = $400$.

**Step 3 — Select A.** $\$400$

**Distractor analysis:**
- **B** ($\$450$): Choice B ($\$450$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$500$): Choice C ($\$500$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$600$): Choice D ($\$600$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":426,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4fc413fc-5ef0-41d6-bd4e-b992b99724e1';
UPDATE public.questions SET
  question_text = 'Data set A: 5, 5, 9, 5, 5, 5, 5, 5, 5, 5
Data set B: 5, 5, 9, 5, 5, 5, 5, 5, 10, 100
Which of the following statements about the means and medians of data set A and data set B is true?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"Only the means are different.","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"Only the medians are different.","is_correct":false,"explanation":"Choice B (Only the medians are different.…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"Both the means and the medians are different.","is_correct":false,"explanation":"Choice C (Both the means and the medians are different.…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"Neither the means nor the medians are different.","is_correct":false,"explanation":"Choice D (Neither the means nor the medians are different.…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** Data set A: 5, 5, 9, 5, 5, 5, 5, 5, 5, 5
Data set B: 5, 5, 9, 5, 5, 5, 5, 5, 10, 100
Which of the following statements about the means and medians of data set A and data set B is true?

**Step 2 — Solve.** The mean of a data set is the sum of the values divided by the number of values. The mean of data set A is 45/9, or 5. The mean of data set B is 145/10, or 14.5. Thus, the means are different. The median of a data set is the middle value when the values are ordered from least to greatest. The medians of data sets A and B are both 5. Therefore, the medians are the same, so only the means are different.

**Step 3 — Select A.** Only the means are different.

**Distractor analysis:**
- **B** (Only the medians are different.): Choice B (Only the medians are different.…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (Both the means and the medians are different.): Choice C (Both the means and the medians are different.…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (Neither the means nor the medians are different.): Choice D (Neither the means nor the medians are different.…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":836,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9110c120","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4fd99e9f-02b1-4bb1-9cbc-5a5c2d12ab39';

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

UPDATE public.questions SET
  question_text = 'The area of a circle is $16\pi$ square inches.  What is the circumference of the circle, in inches?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4\\pi","is_correct":false,"explanation":"Choice A (4\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"16\\pi","is_correct":false,"explanation":"Choice C (16\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"64\\pi","is_correct":false,"explanation":"Choice D (64\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The area of a circle is $16\pi$ square inches.  What is the circumference of the circle, in inches?

**Step 2 — Solve.** The area of a circle is given by $A = \pi r^2$, where $r$ is the radius of the circle.  We are given that the area is $16\pi$ square inches, so $16\pi = \pi r^2$. Dividing both sides by $\pi$ gives $16 = r^2$, so $r = 4$. The circumference of a circle is given by $C = 2\pi r$, so $C = 2\pi (4) = 8\pi$.

**Step 3 — Select B.** 8\pi

**Distractor analysis:**
- **A** (4\pi): Choice A (4\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (16\pi): Choice C (16\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64\pi): Choice D (64\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":972,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"4c9664d4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '51a5eb73-f69c-4867-80cd-c569b0bc31b2';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $5x + 5 > 52$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 52 grams but at most 65 grams to ship.',
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Too small: $5(7)+5=40$."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Still below threshold 52."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$10$","is_correct":true,"explanation":"**Step 1:** $5x > 47$. **Step 2:** $x > 9.4$. Smallest integer choice: 10."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $5x > 47$.
**Step 2:** $x > 9.40$.
**Step 3:** Among choices, $10$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '51bf85df-e71b-4ae8-9cfb-8c7cc607691e';
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 9x + 18 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$9$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-3)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-3)(x-6)=0$.
**Step 2:** Roots $x=3$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '52bc03cf-36ad-4dc0-ac5c-b4ad80c70153';
UPDATE public.questions SET
  question_text = 'If $3x + 5 = 26$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"9","is_correct":false,"explanation":"Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":false,"explanation":"Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $3x + 5 = 26$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we subtract 5 from both sides of the equation: $3x + 5 - 5 = 26 - 5$. This gives us $3x = 21$.  Dividing both sides by 3, we get $x = 7$.

**Step 3 — Select A.** 7

**Distractor analysis:**
- **B** (9): Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (21): Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":841,"opensat_domain":"Algebra","opensat_raw_id":"e54712ac","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '52fda01c-320a-4123-bad2-4846bac22b66';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 10. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60\\sqrt{3}","is_correct":false,"explanation":"Choice C (60\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120\\sqrt{3}","is_correct":false,"explanation":"Choice D (120\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 10. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side length of each equilateral triangle is equal to the radius of the circle, which is 10.  Thus, the perimeter of the hexagon is 6 * 10 = 60.

**Step 3 — Select B.** 60

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60\sqrt{3}): Choice C (60\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120\sqrt{3}): Choice D (120\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":394,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"e9ff8933","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5306b990-2ee5-4903-8088-f5baded07209';
UPDATE public.questions SET
  question_text = 'A group of students are planning a trip. They need to rent a van that costs \$60 per day. The students also need to pay a one-time fee of \$100 for insurance. Which of the following equations represents the total cost, *C*, in dollars, of renting the van for *d* days?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"C = 60d + 100","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"C = 100d + 60","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"C = 60(d + 100)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"C = 100(d + 60)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of students are planning a trip. They need to rent a van that costs \$60 per day. The students also need to pay a one-time fee of \$100 for insurance. Which of the following equations represents the total cost, *C*, in dollars, of renting the van for *d* days?

**Step 2 — Solve.** The total cost is the daily rental cost times the number of days plus the insurance fee.  This can be represented by the equation C = 60d + 100.

**Step 3 — Select A.** C = 60d + 100

**Distractor analysis:**
- **B** (C = 100d + 60): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (C = 60(d + 100)): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (C = 100(d + 60)): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":73,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '532a1160-3487-4029-9535-7f019dee6e0d';
UPDATE public.questions SET
  question_text = 'If 2x + 3 = 11, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If 2x + 3 = 11, what is the value of x?

**Step 2 — Solve.** To solve for x, we subtract 3 from both sides of the equation: 2x + 3 - 3 = 11 - 3. This gives us 2x = 8. Dividing both sides by 2, we get x = 8/2, or x = 4.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":1019,"opensat_domain":"Algebra","opensat_raw_id":"random_id_15","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5352f9c0-c7cd-4f47-82c7-f1b3a27e7767';
UPDATE public.questions SET
  question_text = 'A rectangle has a length of 10 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 10 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying the length and width.  Therefore, the area of this rectangle is 10 * 5 = 50 square centimeters.

**Step 3 — Select C.** 50

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":628,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '53b2a2d2-6c5a-4fe4-b819-3b88bc6e5045';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? (Express your answer in terms of *pi*)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5*pi","is_correct":false,"explanation":"Choice A (5*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10*pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25*pi","is_correct":false,"explanation":"Choice C (25*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50*pi","is_correct":false,"explanation":"Choice D (50*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? (Express your answer in terms of *pi*)

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2 * pi * r, where r is the radius.  Substituting 5 for r, we get C = 2 * pi * 5 = 10*pi.

**Step 3 — Select B.** 10*pi

**Distractor analysis:**
- **A** (5*pi): Choice A (5*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25*pi): Choice C (25*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50*pi): Choice D (50*pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":950,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d7546482","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '53d3f11c-733b-461e-9c6f-dd968999b2a5';
UPDATE public.questions SET
  question_text = 'If $x+y = 5$ and $x-y=1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x+y = 5$ and $x-y=1$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(x+y) + (x-y) = 5+1$, or $2x = 6$. Dividing both sides by 2 gives $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":984,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5449ca3a-5479-43a2-a6db-ccf6d2219b47';
UPDATE public.questions SET
  question_text = 'The graph of the function $y = (x-2)^2 + 3$ intersects the y-axis at point $(0,a)$. What is the value of $a$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The graph of the function $y = (x-2)^2 + 3$ intersects the y-axis at point $(0,a)$. What is the value of $a$?

**Step 2 — Solve.** The y-intercept of a graph is the point where the graph intersects the y-axis.  This occurs when $x=0$. Substituting 0 for x in the equation $y = (x-2)^2 + 3$ gives us $y = (0-2)^2 + 3 = 4 + 3 = 7$. Therefore, the y-intercept is $(0,7)$, and the value of a is 7.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":211,"opensat_domain":"Advanced Math","opensat_raw_id":"a218e3c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5493a30a-5b0b-43d5-a58e-1ffaee5858fa';
UPDATE public.questions SET
  question_text = 'A store sells apples for $\$1.25$ each and oranges for $\$0.75$ each.  If a customer buys 3 apples and 5 oranges, how much does the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$6.25$","is_correct":false,"explanation":"Choice A ($\\$6.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$7.50$","is_correct":false,"explanation":"Choice B ($\\$7.50$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$8.75$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\$10.00$","is_correct":false,"explanation":"Choice D ($\\$10.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $\$1.25$ each and oranges for $\$0.75$ each.  If a customer buys 3 apples and 5 oranges, how much does the customer spend in total?

**Step 2 — Solve.** The customer spends $\$1.25 \times 3 = $\$3.75$ on apples and $\$0.75 \times 5 = $\$3.75$ on oranges.  The total cost is $\$3.75 + $\$3.75 = $\$8.75$.

**Step 3 — Select C.** $\$8.75$

**Distractor analysis:**
- **A** ($\$6.25$): Choice A ($\$6.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\$7.50$): Choice B ($\$7.50$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$10.00$): Choice D ($\$10.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":63,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '550656a3-92d6-45b6-892a-3be0e081a24a';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \sqrt{x} + 4$.  What value of $x$ satisfies the equation $f(x) = 12$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"64","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \sqrt{x} + 4$.  What value of $x$ satisfies the equation $f(x) = 12$?

**Step 2 — Solve.** To solve for x, we first subtract 4 from both sides of the equation to get $\sqrt{x} = 8$. Then, we square both sides of the equation to get $(\sqrt{x})^2 = 8^2$, or $x = 64$. Therefore, the value of $x$ is 64.

**Step 3 — Select C.** 64

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":1009,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '550739b6-7db4-40e5-8626-74ef72bf5c90';
UPDATE public.questions SET
  question_text = 'If $f(x) = \frac{x^2 + 3x}{x+4}$ for all positive values of $x$, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \frac{x^2 + 3x}{x+4}$ for all positive values of $x$, what is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for $x$ in the expression for $f(x)$: $f(2) = \frac{2^2 + 3(2)}{2+4} = \frac{4+6}{6} = \frac{10}{6} = \frac{5}{3}$.  However, none of the answer choices represent  $\frac{5}{3}$.  The answer choices likely represent errors made when evaluating the expression.  Note that $\frac{5}{3}$ can be represented as 1.666, 1.667, or $1\frac{2}{3}$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":561,"opensat_domain":"Advanced Math","opensat_raw_id":"4c90f53e","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5532a8f5-4dc8-433c-857c-a9244266f31f';
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the value of $x$?

**Step 2 — Solve.** We can solve this quadratic equation by factoring. The equation can be factored as $(x-4)(x+2)=0$. Therefore, the solutions are $x=4$ and $x=-2$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":546,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '553c8198-532d-4721-9f39-86615d5dd362';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 158°.',
  options = '[{"id":"A","text":"$158°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$22°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-158=22°$."},{"id":"C","text":"$32°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-158°=22°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '553e94d4-6c69-40af-a9ee-2073dbb623e2';

UPDATE public.questions SET
  question_text = 'A store is having a sale on all items, with a discount of 20%. If a customer buys an item originally priced at $150, how much will they save?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$15","is_correct":false,"explanation":"Choice A ($15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$30","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$60","is_correct":false,"explanation":"Choice C ($60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$75","is_correct":false,"explanation":"Choice D ($75…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store is having a sale on all items, with a discount of 20%. If a customer buys an item originally priced at $150, how much will they save?

**Step 2 — Solve.** A 20% discount on a $150 item is equivalent to 0.20 * $150 = $30.

**Step 3 — Select B.** $30

**Distractor analysis:**
- **A** ($15): Choice A ($15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($60): Choice C ($60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($75): Choice D ($75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":880,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '55444c1f-44f8-4a98-984b-4a35c7cc178e';
UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they prefer apples or oranges. 60 people said they prefer apples, and 40 people said they prefer oranges. What is the ratio of the number of people who prefer apples to the number of people who prefer oranges, expressed in simplest form?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3:2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2:3","is_correct":false,"explanation":"Choice B (2:3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3:4","is_correct":false,"explanation":"Choice C (3:4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4:3","is_correct":false,"explanation":"Choice D (4:3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they prefer apples or oranges. 60 people said they prefer apples, and 40 people said they prefer oranges. What is the ratio of the number of people who prefer apples to the number of people who prefer oranges, expressed in simplest form?

**Step 2 — Solve.** The ratio of people who prefer apples to the number of people who prefer oranges is 60:40. Dividing both sides of this ratio by 20 gives the equivalent ratio 3:2.

**Step 3 — Select A.** 3:2

**Distractor analysis:**
- **B** (2:3): Choice B (2:3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3:4): Choice C (3:4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4:3): Choice D (4:3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":927,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '555aed28-ca87-4579-a8f1-8e6914195080';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $3:5$ to make 312 milliliters of solution.',
  options = '[{"id":"A","text":"$114$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$116$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$117$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{3}{8}$. **Step 2:** $\\frac{3}{8}×312=117$."},{"id":"D","text":"$312$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{3}{8}$ of 312.
**Step 2:** $\frac{3}{8}×312=117$ mL.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '55aaa96a-251a-45df-96d0-bdcf04ab5f88';
UPDATE public.questions SET
  question_text = 'A group of 10 friends went to a restaurant and ordered 5 pizzas, each cut into 12 slices. If each friend ate the same number of slices, how many slices did each friend eat?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of 10 friends went to a restaurant and ordered 5 pizzas, each cut into 12 slices. If each friend ate the same number of slices, how many slices did each friend eat?

**Step 2 — Solve.** The 5 pizzas have a total of 5 * 12 = 60 slices. If each of the 10 friends ate the same number of slices, each friend ate 60 / 10 = 6 slices.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":275,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"a32b1c8e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '55d297dd-afa0-4007-8b35-01fa55eaa321';
UPDATE public.questions SET
  question_text = 'The function f is defined by $f(x) = \frac{1}{2}x - 3$. What is the value of $f^{-1}(5)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"14","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f is defined by $f(x) = \frac{1}{2}x - 3$. What is the value of $f^{-1}(5)$?

**Step 2 — Solve.** To find the inverse function, $f^{-1}(x)$, we first swap $x$ and $y$ in the equation $y = f(x)$: $x = \frac{1}{2}y - 3$.  Solving for $y$, we get $2x + 6 = y$. Thus, $f^{-1}(x) = 2x + 6$.  Substituting 5 for $x$ in this equation gives $f^{-1}(5) = 2(5) + 6$, or $f^{-1}(5) = 16$.

**Step 3 — Select D.** 14

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":137,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '55e877cc-c86d-4f0d-9c48-37266e707170';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 4 > 176$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 176 grams but at most 189 grams to ship.',
  options = '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Too small: $7(22)+4=158$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Still below threshold 176."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$25$","is_correct":true,"explanation":"**Step 1:** $7x > 172$. **Step 2:** $x > 24.571428571428573$. Smallest integer choice: 25."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 172$.
**Step 2:** $x > 24.57$.
**Step 3:** Among choices, $25$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '560c69d5-7850-436b-8f19-f564273b31f5';
COMMIT;
