BEGIN;
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 30 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-5)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-6)=0$.
**Step 2:** Roots $x=5$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4eacf167-db3e-4f3e-9151-62120af69b15';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x<sup>2</sup> - 5x + 2. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x<sup>2</sup> - 5x + 2. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)<sup>2</sup> - 5(2) + 2 = 3(4) - 10 + 2 = 12 - 8 = 4. Therefore, *f*(2) = 4.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":586,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4eb568bc-4499-427d-894b-1d57cf0202e0';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x<sup>2</sup> + 3x - 1. What is the value of *f*(-2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x<sup>2</sup> + 3x - 1. What is the value of *f*(-2)?

**Step 2 — Solve.** Substituting -2 for *x* in the function *f*(x) = 2x<sup>2</sup> + 3x - 1, we get *f*(-2) = 2(-2)<sup>2</sup> + 3(-2) - 1 = 8 - 6 - 1 = 1. Therefore, the value of *f*(-2) is -9.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":287,"opensat_domain":"Advanced Math","opensat_raw_id":"f1326ef1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4ebeb071-1e49-46bc-84a5-d7e7dc397c57';

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

COMMIT;
