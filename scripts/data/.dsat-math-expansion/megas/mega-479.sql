BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b20b0315-bf82-456c-80cd-89b776399e0c', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 48 ft from a wall; the top is 55 ft high. The ladder length is 73 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">28 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">35 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">45 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{48}{73}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{55}{73}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=55$, hypotenuse $=73$. **Step 2:** $\\sin\\theta=\\frac{55}{73}≈0.753$."},{"id":"C","text":"$\\frac{73}{55}$","is_correct":false,"explanation":"Choice C ($\\frac{73}{55}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{48}{55}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=55$, hypotenuse $=73$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{55}{73}$.
**Step 3:** Pythagorean check: $48^2+55^2=73^2$.
**Step 4:** $\cos\theta=\frac{48}{73}$, not the answer.

**Step 3 — Answer B.** $\frac{55}{73}$

**Distractor analysis:**
- **A** ($\frac{48}{73}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{73}{55}$): Choice C ($\frac{73}{55}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{48}{55}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4b7b47d-ed35-42b5-9147-1d258dead1b2', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 49 ft from a wall; the top is 56 ft high. The ladder length is 74 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">29 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">36 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">46 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{49}{74}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{56}{74}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=56$, hypotenuse $=74$. **Step 2:** $\\sin\\theta=\\frac{56}{74}≈0.757$."},{"id":"C","text":"$\\frac{74}{56}$","is_correct":false,"explanation":"Choice C ($\\frac{74}{56}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{49}{56}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=56$, hypotenuse $=74$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{56}{74}$.
**Step 3:** Pythagorean check: $49^2+56^2=74^2$.
**Step 4:** $\cos\theta=\frac{49}{74}$, not the answer.

**Step 3 — Answer B.** $\frac{56}{74}$

**Distractor analysis:**
- **A** ($\frac{49}{74}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{74}{56}$): Choice C ($\frac{74}{56}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{49}{56}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e4bdd5d1-e012-4cc0-9e15-de6c0f003ef0', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 50 ft from a wall; the top is 57 ft high. The ladder length is 76 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">30 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">37 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">48 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{50}{76}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{57}{76}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=57$, hypotenuse $=76$. **Step 2:** $\\sin\\theta=\\frac{57}{76}≈0.750$."},{"id":"C","text":"$\\frac{76}{57}$","is_correct":false,"explanation":"Choice C ($\\frac{76}{57}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{50}{57}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=57$, hypotenuse $=76$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{57}{76}$.
**Step 3:** Pythagorean check: $50^2+57^2=76^2$.
**Step 4:** $\cos\theta=\frac{50}{76}$, not the answer.

**Step 3 — Answer B.** $\frac{57}{76}$

**Distractor analysis:**
- **A** ($\frac{50}{76}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{76}{57}$): Choice C ($\frac{76}{57}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{50}{57}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('300eed30-dbde-4171-881e-fc3b3051d5ff', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 51 ft from a wall; the top is 58 ft high. The ladder length is 77 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">31 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">38 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">49 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{58}{77}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=58$, hypotenuse $=77$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{58}{77}$.
**Step 3:** Pythagorean check: $51^2+58^2=77^2$.
**Step 4:** $\cos\theta=\frac{51}{77}$, not the answer.

**Step 3 — Answer SPR.** frac{58}{77}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('22ceeef8-01da-4c59-9e6c-16908d78abbf', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 52 ft from a wall; the top is 59 ft high. The ladder length is 79 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">32 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">39 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">50 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{52}{79}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{59}{79}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=59$, hypotenuse $=79$. **Step 2:** $\\sin\\theta=\\frac{59}{79}≈0.747$."},{"id":"C","text":"$\\frac{79}{59}$","is_correct":false,"explanation":"Choice C ($\\frac{79}{59}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{52}{59}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=59$, hypotenuse $=79$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{59}{79}$.
**Step 3:** Pythagorean check: $52^2+59^2=79^2$.
**Step 4:** $\cos\theta=\frac{52}{79}$, not the answer.

**Step 3 — Answer B.** $\frac{59}{79}$

**Distractor analysis:**
- **A** ($\frac{52}{79}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{79}{59}$): Choice C ($\frac{79}{59}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{52}{59}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0aeb5616-51ca-423b-bab8-6efe87e4863d', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 53 ft from a wall; the top is 60 ft high. The ladder length is 80 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">33 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">40 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">52 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{53}{80}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{60}{80}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=60$, hypotenuse $=80$. **Step 2:** $\\sin\\theta=\\frac{60}{80}≈0.750$."},{"id":"C","text":"$\\frac{80}{60}$","is_correct":false,"explanation":"Choice C ($\\frac{80}{60}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{53}{60}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=60$, hypotenuse $=80$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{60}{80}$.
**Step 3:** Pythagorean check: $53^2+60^2=80^2$.
**Step 4:** $\cos\theta=\frac{53}{80}$, not the answer.

**Step 3 — Answer B.** $\frac{60}{80}$

**Distractor analysis:**
- **A** ($\frac{53}{80}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{80}{60}$): Choice C ($\frac{80}{60}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{53}{60}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f28d3e9-04ff-4a07-8e3c-f10dd87b7db9', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 54 ft from a wall; the top is 61 ft high. The ladder length is 81 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">34 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">41 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">53 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{54}{81}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{61}{81}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=61$, hypotenuse $=81$. **Step 2:** $\\sin\\theta=\\frac{61}{81}≈0.753$."},{"id":"C","text":"$\\frac{81}{61}$","is_correct":false,"explanation":"Choice C ($\\frac{81}{61}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{54}{61}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=61$, hypotenuse $=81$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{61}{81}$.
**Step 3:** Pythagorean check: $54^2+61^2=81^2$.
**Step 4:** $\cos\theta=\frac{54}{81}$, not the answer.

**Step 3 — Answer B.** $\frac{61}{81}$

**Distractor analysis:**
- **A** ($\frac{54}{81}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{81}{61}$): Choice C ($\frac{81}{61}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{54}{61}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb6869b1-1e7c-4494-93d2-a40ad361d9fa', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 55 ft from a wall; the top is 62 ft high. The ladder length is 83 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">35 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">42 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">55 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{62}{83}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=62$, hypotenuse $=83$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{62}{83}$.
**Step 3:** Pythagorean check: $55^2+62^2=83^2$.
**Step 4:** $\cos\theta=\frac{55}{83}$, not the answer.

**Step 3 — Answer SPR.** frac{62}{83}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a117ba41-e199-4be4-9f3a-4057926eb888', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 56 ft from a wall; the top is 63 ft high. The ladder length is 84 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">36 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">43 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">56 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{56}{84}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{63}{84}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=63$, hypotenuse $=84$. **Step 2:** $\\sin\\theta=\\frac{63}{84}≈0.750$."},{"id":"C","text":"$\\frac{84}{63}$","is_correct":false,"explanation":"Choice C ($\\frac{84}{63}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{56}{63}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=63$, hypotenuse $=84$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{63}{84}$.
**Step 3:** Pythagorean check: $56^2+63^2=84^2$.
**Step 4:** $\cos\theta=\frac{56}{84}$, not the answer.

**Step 3 — Answer B.** $\frac{63}{84}$

**Distractor analysis:**
- **A** ($\frac{56}{84}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{84}{63}$): Choice C ($\frac{84}{63}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{56}{63}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6c3e006-6aaf-454c-ab00-585641a046bf', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 57 ft from a wall; the top is 64 ft high. The ladder length is 86 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">37 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">44 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">57 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{57}{86}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{64}{86}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=64$, hypotenuse $=86$. **Step 2:** $\\sin\\theta=\\frac{64}{86}≈0.744$."},{"id":"C","text":"$\\frac{86}{64}$","is_correct":false,"explanation":"Choice C ($\\frac{86}{64}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{57}{64}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=64$, hypotenuse $=86$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{64}{86}$.
**Step 3:** Pythagorean check: $57^2+64^2=86^2$.
**Step 4:** $\cos\theta=\frac{57}{86}$, not the answer.

**Step 3 — Answer B.** $\frac{64}{86}$

**Distractor analysis:**
- **A** ($\frac{57}{86}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{86}{64}$): Choice C ($\frac{86}{64}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{57}{64}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ede2a9f4-7507-4e81-b978-2d61cd48172e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 58 ft from a wall; the top is 65 ft high. The ladder length is 87 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">38 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">45 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">59 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{58}{87}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{65}{87}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=65$, hypotenuse $=87$. **Step 2:** $\\sin\\theta=\\frac{65}{87}≈0.747$."},{"id":"C","text":"$\\frac{87}{65}$","is_correct":false,"explanation":"Choice C ($\\frac{87}{65}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{58}{65}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=65$, hypotenuse $=87$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{65}{87}$.
**Step 3:** Pythagorean check: $58^2+65^2=87^2$.
**Step 4:** $\cos\theta=\frac{58}{87}$, not the answer.

**Step 3 — Answer B.** $\frac{65}{87}$

**Distractor analysis:**
- **A** ($\frac{58}{87}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{87}{65}$): Choice C ($\frac{87}{65}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{58}{65}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('287b9dd6-49af-4ad5-a91f-3d932bedded3', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 59 ft from a wall; the top is 66 ft high. The ladder length is 89 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">39 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">46 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">60 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{66}{89}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=66$, hypotenuse $=89$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{66}{89}$.
**Step 3:** Pythagorean check: $59^2+66^2=89^2$.
**Step 4:** $\cos\theta=\frac{59}{89}$, not the answer.

**Step 3 — Answer SPR.** frac{66}{89}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
