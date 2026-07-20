BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ff77119-0c0b-4e77-9a50-ec2d259d25f0', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 24 ft from a wall; the top is 31 ft high. The ladder length is 39 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">24 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">31 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">39 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{24}{39}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{31}{39}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=31$, hypotenuse $=39$. **Step 2:** $\\sin\\theta=\\frac{31}{39}≈0.795$."},{"id":"C","text":"$\\frac{39}{31}$","is_correct":false,"explanation":"Choice C ($\\frac{39}{31}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{24}{31}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=31$, hypotenuse $=39$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{31}{39}$.
**Step 3:** Pythagorean check: $24^2+31^2=39^2$.
**Step 4:** $\cos\theta=\frac{24}{39}$, not the answer.

**Step 3 — Answer B.** $\frac{31}{39}$

**Distractor analysis:**
- **A** ($\frac{24}{39}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{39}{31}$): Choice C ($\frac{39}{31}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{24}{31}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31400a85-621f-4502-b8c1-fbf6e1a30340', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 25 ft from a wall; the top is 32 ft high. The ladder length is 41 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">25 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">32 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">41 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{25}{41}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{32}{41}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=32$, hypotenuse $=41$. **Step 2:** $\\sin\\theta=\\frac{32}{41}≈0.780$."},{"id":"C","text":"$\\frac{41}{32}$","is_correct":false,"explanation":"Choice C ($\\frac{41}{32}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{25}{32}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=32$, hypotenuse $=41$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{32}{41}$.
**Step 3:** Pythagorean check: $25^2+32^2=41^2$.
**Step 4:** $\cos\theta=\frac{25}{41}$, not the answer.

**Step 3 — Answer B.** $\frac{32}{41}$

**Distractor analysis:**
- **A** ($\frac{25}{41}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{41}{32}$): Choice C ($\frac{41}{32}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{25}{32}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0d843be-dcd2-4aec-b386-eb30e735fb35', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 26 ft from a wall; the top is 33 ft high. The ladder length is 42 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">26 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">33 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">42 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{26}{42}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{33}{42}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=33$, hypotenuse $=42$. **Step 2:** $\\sin\\theta=\\frac{33}{42}≈0.786$."},{"id":"C","text":"$\\frac{42}{33}$","is_correct":false,"explanation":"Choice C ($\\frac{42}{33}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{26}{33}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=33$, hypotenuse $=42$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{33}{42}$.
**Step 3:** Pythagorean check: $26^2+33^2=42^2$.
**Step 4:** $\cos\theta=\frac{26}{42}$, not the answer.

**Step 3 — Answer B.** $\frac{33}{42}$

**Distractor analysis:**
- **A** ($\frac{26}{42}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{42}{33}$): Choice C ($\frac{42}{33}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{26}{33}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('196548f2-eff9-4992-bf6d-7d3febba2100', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 27 ft from a wall; the top is 34 ft high. The ladder length is 43 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">27 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">34 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">43 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{34}{43}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=34$, hypotenuse $=43$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{34}{43}$.
**Step 3:** Pythagorean check: $27^2+34^2=43^2$.
**Step 4:** $\cos\theta=\frac{27}{43}$, not the answer.

**Step 3 — Answer SPR.** frac{34}{43}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cdadfbc4-c232-41b1-936c-ca218e2dc645', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 28 ft from a wall; the top is 35 ft high. The ladder length is 45 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">28 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">35 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">45 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{28}{45}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{35}{45}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=35$, hypotenuse $=45$. **Step 2:** $\\sin\\theta=\\frac{35}{45}≈0.778$."},{"id":"C","text":"$\\frac{45}{35}$","is_correct":false,"explanation":"Choice C ($\\frac{45}{35}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{28}{35}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=35$, hypotenuse $=45$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{35}{45}$.
**Step 3:** Pythagorean check: $28^2+35^2=45^2$.
**Step 4:** $\cos\theta=\frac{28}{45}$, not the answer.

**Step 3 — Answer B.** $\frac{35}{45}$

**Distractor analysis:**
- **A** ($\frac{28}{45}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{45}{35}$): Choice C ($\frac{45}{35}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{28}{35}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('187994e2-6200-48a8-8cba-2abff5dce84a', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 29 ft from a wall; the top is 36 ft high. The ladder length is 46 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">29 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">36 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">46 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{29}{46}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{36}{46}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=36$, hypotenuse $=46$. **Step 2:** $\\sin\\theta=\\frac{36}{46}≈0.783$."},{"id":"C","text":"$\\frac{46}{36}$","is_correct":false,"explanation":"Choice C ($\\frac{46}{36}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{29}{36}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=36$, hypotenuse $=46$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{36}{46}$.
**Step 3:** Pythagorean check: $29^2+36^2=46^2$.
**Step 4:** $\cos\theta=\frac{29}{46}$, not the answer.

**Step 3 — Answer B.** $\frac{36}{46}$

**Distractor analysis:**
- **A** ($\frac{29}{46}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{46}{36}$): Choice C ($\frac{46}{36}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{29}{36}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('89eeb452-8e1f-44fe-a39c-9ce66c496f4a', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 30 ft from a wall; the top is 37 ft high. The ladder length is 48 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">30 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">37 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">48 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{30}{48}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{37}{48}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=37$, hypotenuse $=48$. **Step 2:** $\\sin\\theta=\\frac{37}{48}≈0.771$."},{"id":"C","text":"$\\frac{48}{37}$","is_correct":false,"explanation":"Choice C ($\\frac{48}{37}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{30}{37}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=37$, hypotenuse $=48$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{37}{48}$.
**Step 3:** Pythagorean check: $30^2+37^2=48^2$.
**Step 4:** $\cos\theta=\frac{30}{48}$, not the answer.

**Step 3 — Answer B.** $\frac{37}{48}$

**Distractor analysis:**
- **A** ($\frac{30}{48}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{48}{37}$): Choice C ($\frac{48}{37}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{30}{37}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82cf1384-d7ff-4ce5-b9f0-78652349fbda', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 31 ft from a wall; the top is 38 ft high. The ladder length is 49 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">31 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">38 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">49 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{38}{49}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=38$, hypotenuse $=49$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{38}{49}$.
**Step 3:** Pythagorean check: $31^2+38^2=49^2$.
**Step 4:** $\cos\theta=\frac{31}{49}$, not the answer.

**Step 3 — Answer SPR.** frac{38}{49}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c9638a9-51a1-44de-b5e3-ac2e8e4e4f13', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 32 ft from a wall; the top is 39 ft high. The ladder length is 50 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">32 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">39 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">50 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{32}{50}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{39}{50}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=39$, hypotenuse $=50$. **Step 2:** $\\sin\\theta=\\frac{39}{50}≈0.780$."},{"id":"C","text":"$\\frac{50}{39}$","is_correct":false,"explanation":"Choice C ($\\frac{50}{39}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{32}{39}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=39$, hypotenuse $=50$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{39}{50}$.
**Step 3:** Pythagorean check: $32^2+39^2=50^2$.
**Step 4:** $\cos\theta=\frac{32}{50}$, not the answer.

**Step 3 — Answer B.** $\frac{39}{50}$

**Distractor analysis:**
- **A** ($\frac{32}{50}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{50}{39}$): Choice C ($\frac{50}{39}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{32}{39}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('abb67664-10f6-4a3f-a66f-ad2bc3aa7f50', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 33 ft from a wall; the top is 40 ft high. The ladder length is 52 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">33 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">40 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">52 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{33}{52}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{40}{52}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=40$, hypotenuse $=52$. **Step 2:** $\\sin\\theta=\\frac{40}{52}≈0.769$."},{"id":"C","text":"$\\frac{52}{40}$","is_correct":false,"explanation":"Choice C ($\\frac{52}{40}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{33}{40}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=40$, hypotenuse $=52$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{40}{52}$.
**Step 3:** Pythagorean check: $33^2+40^2=52^2$.
**Step 4:** $\cos\theta=\frac{33}{52}$, not the answer.

**Step 3 — Answer B.** $\frac{40}{52}$

**Distractor analysis:**
- **A** ($\frac{33}{52}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{52}{40}$): Choice C ($\frac{52}{40}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{33}{40}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f94970ee-78d8-49c8-8fe1-7da879bf9a89', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 34 ft from a wall; the top is 41 ft high. The ladder length is 53 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">34 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">41 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">53 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{34}{53}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{41}{53}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=41$, hypotenuse $=53$. **Step 2:** $\\sin\\theta=\\frac{41}{53}≈0.774$."},{"id":"C","text":"$\\frac{53}{41}$","is_correct":false,"explanation":"Choice C ($\\frac{53}{41}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{34}{41}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=41$, hypotenuse $=53$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{41}{53}$.
**Step 3:** Pythagorean check: $34^2+41^2=53^2$.
**Step 4:** $\cos\theta=\frac{34}{53}$, not the answer.

**Step 3 — Answer B.** $\frac{41}{53}$

**Distractor analysis:**
- **A** ($\frac{34}{53}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{53}{41}$): Choice C ($\frac{53}{41}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{34}{41}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21e253e0-91fc-4f97-9e83-73660188e47e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 35 ft from a wall; the top is 42 ft high. The ladder length is 55 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">35 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">42 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">55 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{42}{55}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=42$, hypotenuse $=55$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{42}{55}$.
**Step 3:** Pythagorean check: $35^2+42^2=55^2$.
**Step 4:** $\cos\theta=\frac{35}{55}$, not the answer.

**Step 3 — Answer SPR.** frac{42}{55}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
