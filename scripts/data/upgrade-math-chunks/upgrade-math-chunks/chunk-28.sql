BEGIN;
UPDATE public.questions SET
  question_text = 'A group of 100 students were surveyed about their favorite type of music. 60 students like pop music, 50 students like rock music, and 20 students like both pop and rock music. How many students like neither pop nor rock music?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of 100 students were surveyed about their favorite type of music. 60 students like pop music, 50 students like rock music, and 20 students like both pop and rock music. How many students like neither pop nor rock music?

**Step 2 — Solve.** We can use a Venn Diagram to visualize the situation. Let P represent the set of students who like pop music and R represent the set of students who like rock music. We know that  |P ∩ R| = 20, |P| = 60, and |R| = 50. Since |P ∪ R| = |P| + |R| - |P ∩ R|, we have |P ∪ R| = 60 + 50 - 20 = 90. This means that 90 students like pop music, rock music, or both.  Therefore, 100 - 90 = 10 students like neither pop nor rock music.

**Step 3 — Select A.** 10

**Distractor analysis:**
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1024,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '24556fc7-02b4-4a58-ab94-0b9a39e6f39e';

UPDATE public.questions SET
  question_text = 'A group of 10 friends are deciding who will drive on a trip. They decide to pick a driver randomly from those who have a valid driver''s license.  3 of the friends do not have a valid driver''s license. What is the probability that the first friend chosen at random will be a valid driver?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1/3","is_correct":false,"explanation":"Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3/10","is_correct":false,"explanation":"Choice B (3/10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7/10","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7/3","is_correct":false,"explanation":"Choice D (7/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of 10 friends are deciding who will drive on a trip. They decide to pick a driver randomly from those who have a valid driver''s license.  3 of the friends do not have a valid driver''s license. What is the probability that the first friend chosen at random will be a valid driver?

**Step 2 — Solve.** Since 3 of the 10 friends do not have a valid driver''s license, 7 do have a valid driver''s license.  Therefore, the probability that the first friend chosen will be a valid driver is 7/10.

**Step 3 — Select C.** 7/10

**Distractor analysis:**
- **A** (1/3): Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3/10): Choice B (3/10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7/3): Choice D (7/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":335,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9e9f61f3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '24764cd8-a419-4caa-a0d0-7fa84d67d072';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+36)^2 - (4x-36)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$576x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+36$, $v=4x-36$ → $576x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$144x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1296$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+36$, $v=4x-36$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(72)=576x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2479c03c-7a04-45cb-b631-cf9319e3c4f0';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 39 ft from the wall and the top is 46 ft high.',
  options = '[{"id":"A","text":"$58$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$85$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$60$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{39^2+46^2}=60$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 39 and 46.
**Step 2:** $c=\sqrt{39^2+46^2}=60$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '24993cf6-778c-426d-945d-4f1f030cace3';

UPDATE public.questions SET
  question_text = 'A survey of 200 high school students found that 120 students prefer to take math classes in the morning, and 80 students prefer to take math classes in the afternoon. What percentage of the students surveyed prefer to take math classes in the morning? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":false,"explanation":"Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"80%","is_correct":false,"explanation":"Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120%","is_correct":false,"explanation":"Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 high school students found that 120 students prefer to take math classes in the morning, and 80 students prefer to take math classes in the afternoon. What percentage of the students surveyed prefer to take math classes in the morning? 

**Step 2 — Solve.** To find the percentage of students who prefer morning math classes, we divide the number who prefer morning classes by the total number of students surveyed and multiply by 100%:  (120 students / 200 students) * 100% = 60%.

**Step 3 — Select B.** 60%

**Distractor analysis:**
- **A** (40%): Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80%): Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120%): Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":1030,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c6","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '24fb534b-74fc-4dd7-b9ee-52e73944ae9a';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 meters and a width of 5 meters.  What is the area, in square meters, of the rectangle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"125","is_correct":false,"explanation":"Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 meters and a width of 5 meters.  What is the area, in square meters, of the rectangle? 

**Step 2 — Solve.** The area of a rectangle is the product of its length and its width.  The area of the rectangle is 12 meters * 5 meters = 60 square meters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (125): Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":644,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '251c40cf-68b7-47e7-9b54-71ba0d044368';

UPDATE public.questions SET
  question_text = 'In the figure above, quadrilateral ABCD is a rectangle.  The length of diagonal is $\sqrt{20}$ units.  What is the area of the rectangle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In the figure above, quadrilateral ABCD is a rectangle.  The length of diagonal is $\sqrt{20}$ units.  What is the area of the rectangle? 

**Step 2 — Solve.** The diagonal of a rectangle divides the rectangle into two congruent right triangles.  Since the diagonal is the hypotenuse of each of these right triangles, the Pythagorean Theorem gives us $a^2 + b^2 = (\sqrt{20})^2$, or $a^2 + b^2 = 20$, where $a$ and $b$ are the length and width of the rectangle, respectively.  Since ABCD is a rectangle, the area is $ab$. Since the area is a product of two sides, the area will be a factor of 20.  Of the choices, 10 is the only factor of 20, and the area of the rectangle is $ab = (2)(5) = 10$.

**Step 3 — Select C.** 10

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":8,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d45a749b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '25638145-eda1-4ace-ab02-b630b61b0223';

UPDATE public.questions SET
  question_text = 'What is the value of $x$ in the equation $x^2 - 9 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-3 or 3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ in the equation $x^2 - 9 = 0$?

**Step 2 — Solve.** To solve for $x$, we can add 9 to both sides of the equation: $x^2 = 9$. Taking the square root of both sides gives us $x = \pm 3$. Therefore, the solutions are $x = -3$ or $x = 3$.

**Step 3 — Select C.** -3 or 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":470,"opensat_domain":"Advanced Math","opensat_raw_id":"5a67db99","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '256918f2-eed2-4572-85cf-9b21d4551f0d';

COMMIT;
