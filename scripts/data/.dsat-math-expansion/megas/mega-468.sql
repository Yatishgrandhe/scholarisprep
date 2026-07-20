BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a819803-677f-492b-840c-9cbbbc8b54ae', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 36 ft from a wall; the top is 43 ft high. The ladder length is 56 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">16 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">23 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">28 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{36}{56}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{43}{56}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=43$, hypotenuse $=56$. **Step 2:** $\\sin\\theta=\\frac{43}{56}≈0.768$."},{"id":"C","text":"$\\frac{56}{43}$","is_correct":false,"explanation":"Choice C ($\\frac{56}{43}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{36}{43}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=43$, hypotenuse $=56$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{43}{56}$.
**Step 3:** Pythagorean check: $36^2+43^2=56^2$.
**Step 4:** $\cos\theta=\frac{36}{56}$, not the answer.

**Step 3 — Answer B.** $\frac{43}{56}$

**Distractor analysis:**
- **A** ($\frac{36}{56}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{56}{43}$): Choice C ($\frac{56}{43}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{36}{43}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cabe3537-619d-4d2b-bb50-c0bcbbc96037', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 37 ft from a wall; the top is 44 ft high. The ladder length is 57 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">17 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">24 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">29 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{37}{57}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{44}{57}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=44$, hypotenuse $=57$. **Step 2:** $\\sin\\theta=\\frac{44}{57}≈0.772$."},{"id":"C","text":"$\\frac{57}{44}$","is_correct":false,"explanation":"Choice C ($\\frac{57}{44}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{37}{44}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=44$, hypotenuse $=57$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{44}{57}$.
**Step 3:** Pythagorean check: $37^2+44^2=57^2$.
**Step 4:** $\cos\theta=\frac{37}{57}$, not the answer.

**Step 3 — Answer B.** $\frac{44}{57}$

**Distractor analysis:**
- **A** ($\frac{37}{57}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{57}{44}$): Choice C ($\frac{57}{44}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{37}{44}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aec20ea6-4144-492c-be92-f8deffab088f', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 38 ft from a wall; the top is 45 ft high. The ladder length is 59 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">18 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">25 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">31 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{38}{59}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{45}{59}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=45$, hypotenuse $=59$. **Step 2:** $\\sin\\theta=\\frac{45}{59}≈0.763$."},{"id":"C","text":"$\\frac{59}{45}$","is_correct":false,"explanation":"Choice C ($\\frac{59}{45}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{38}{45}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=45$, hypotenuse $=59$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{45}{59}$.
**Step 3:** Pythagorean check: $38^2+45^2=59^2$.
**Step 4:** $\cos\theta=\frac{38}{59}$, not the answer.

**Step 3 — Answer B.** $\frac{45}{59}$

**Distractor analysis:**
- **A** ($\frac{38}{59}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{59}{45}$): Choice C ($\frac{59}{45}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{38}{45}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30fccfe6-e114-444e-8b70-d4da75e5c15c', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 39 ft from a wall; the top is 46 ft high. The ladder length is 60 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">19 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">26 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">32 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{46}{60}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=46$, hypotenuse $=60$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{46}{60}$.
**Step 3:** Pythagorean check: $39^2+46^2=60^2$.
**Step 4:** $\cos\theta=\frac{39}{60}$, not the answer.

**Step 3 — Answer SPR.** frac{46}{60}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f3d45f6-0698-44ee-8603-fede05e285ee', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 40 ft from a wall; the top is 47 ft high. The ladder length is 62 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">20 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">27 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">34 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{40}{62}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{47}{62}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=47$, hypotenuse $=62$. **Step 2:** $\\sin\\theta=\\frac{47}{62}≈0.758$."},{"id":"C","text":"$\\frac{62}{47}$","is_correct":false,"explanation":"Choice C ($\\frac{62}{47}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{40}{47}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=47$, hypotenuse $=62$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{47}{62}$.
**Step 3:** Pythagorean check: $40^2+47^2=62^2$.
**Step 4:** $\cos\theta=\frac{40}{62}$, not the answer.

**Step 3 — Answer B.** $\frac{47}{62}$

**Distractor analysis:**
- **A** ($\frac{40}{62}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{62}{47}$): Choice C ($\frac{62}{47}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{40}{47}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02f8ee3e-dd18-4f33-a652-fd3a1ddbeaae', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 41 ft from a wall; the top is 48 ft high. The ladder length is 63 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">21 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">28 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">35 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{41}{63}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{48}{63}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=48$, hypotenuse $=63$. **Step 2:** $\\sin\\theta=\\frac{48}{63}≈0.762$."},{"id":"C","text":"$\\frac{63}{48}$","is_correct":false,"explanation":"Choice C ($\\frac{63}{48}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{41}{48}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=48$, hypotenuse $=63$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{48}{63}$.
**Step 3:** Pythagorean check: $41^2+48^2=63^2$.
**Step 4:** $\cos\theta=\frac{41}{63}$, not the answer.

**Step 3 — Answer B.** $\frac{48}{63}$

**Distractor analysis:**
- **A** ($\frac{41}{63}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{63}{48}$): Choice C ($\frac{63}{48}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{41}{48}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5675337-4c4d-400f-9e24-91cf8b59dcde', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 42 ft from a wall; the top is 49 ft high. The ladder length is 65 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">22 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">29 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">36 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{42}{65}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{49}{65}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=49$, hypotenuse $=65$. **Step 2:** $\\sin\\theta=\\frac{49}{65}≈0.754$."},{"id":"C","text":"$\\frac{65}{49}$","is_correct":false,"explanation":"Choice C ($\\frac{65}{49}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{42}{49}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=49$, hypotenuse $=65$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{49}{65}$.
**Step 3:** Pythagorean check: $42^2+49^2=65^2$.
**Step 4:** $\cos\theta=\frac{42}{65}$, not the answer.

**Step 3 — Answer B.** $\frac{49}{65}$

**Distractor analysis:**
- **A** ($\frac{42}{65}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{65}{49}$): Choice C ($\frac{65}{49}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{42}{49}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ede87f3b-4d66-4bcb-a28f-ae43924ef9a4', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 43 ft from a wall; the top is 50 ft high. The ladder length is 66 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">23 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">30 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">38 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{50}{66}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=50$, hypotenuse $=66$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{50}{66}$.
**Step 3:** Pythagorean check: $43^2+50^2=66^2$.
**Step 4:** $\cos\theta=\frac{43}{66}$, not the answer.

**Step 3 — Answer SPR.** frac{50}{66}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4e14318e-612b-4c57-b369-6bd186f18249', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 44 ft from a wall; the top is 51 ft high. The ladder length is 67 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">24 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">31 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">39 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{44}{67}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{51}{67}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=51$, hypotenuse $=67$. **Step 2:** $\\sin\\theta=\\frac{51}{67}≈0.761$."},{"id":"C","text":"$\\frac{67}{51}$","is_correct":false,"explanation":"Choice C ($\\frac{67}{51}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{44}{51}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=51$, hypotenuse $=67$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{51}{67}$.
**Step 3:** Pythagorean check: $44^2+51^2=67^2$.
**Step 4:** $\cos\theta=\frac{44}{67}$, not the answer.

**Step 3 — Answer B.** $\frac{51}{67}$

**Distractor analysis:**
- **A** ($\frac{44}{67}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{67}{51}$): Choice C ($\frac{67}{51}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{44}{51}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('beedb076-bb03-4640-82f5-a910e598caf1', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 45 ft from a wall; the top is 52 ft high. The ladder length is 69 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">25 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">32 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">41 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{45}{69}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{52}{69}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=52$, hypotenuse $=69$. **Step 2:** $\\sin\\theta=\\frac{52}{69}≈0.754$."},{"id":"C","text":"$\\frac{69}{52}$","is_correct":false,"explanation":"Choice C ($\\frac{69}{52}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{45}{52}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=52$, hypotenuse $=69$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{52}{69}$.
**Step 3:** Pythagorean check: $45^2+52^2=69^2$.
**Step 4:** $\cos\theta=\frac{45}{69}$, not the answer.

**Step 3 — Answer B.** $\frac{52}{69}$

**Distractor analysis:**
- **A** ($\frac{45}{69}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{69}{52}$): Choice C ($\frac{69}{52}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{45}{52}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('740a102b-9f0d-4094-87b3-5359a7d6e4cd', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 46 ft from a wall; the top is 53 ft high. The ladder length is 70 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">26 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">33 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">42 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{46}{70}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{53}{70}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=53$, hypotenuse $=70$. **Step 2:** $\\sin\\theta=\\frac{53}{70}≈0.757$."},{"id":"C","text":"$\\frac{70}{53}$","is_correct":false,"explanation":"Choice C ($\\frac{70}{53}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{46}{53}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=53$, hypotenuse $=70$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{53}{70}$.
**Step 3:** Pythagorean check: $46^2+53^2=70^2$.
**Step 4:** $\cos\theta=\frac{46}{70}$, not the answer.

**Step 3 — Answer B.** $\frac{53}{70}$

**Distractor analysis:**
- **A** ($\frac{46}{70}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{70}{53}$): Choice C ($\frac{70}{53}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{46}{53}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e11d4d3-fb30-4012-b8cc-90158f2be778', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 47 ft from a wall; the top is 54 ft high. The ladder length is 72 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">27 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">34 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">43 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{54}{72}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=54$, hypotenuse $=72$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{54}{72}$.
**Step 3:** Pythagorean check: $47^2+54^2=72^2$.
**Step 4:** $\cos\theta=\frac{47}{72}$, not the answer.

**Step 3 — Answer SPR.** frac{54}{72}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
