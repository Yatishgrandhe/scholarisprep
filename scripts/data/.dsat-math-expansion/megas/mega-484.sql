BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc1fd3d6-9c16-4518-bf25-4a666ddf1c0b', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 48 ft from a wall; the top is 55 ft high. The ladder length is 73 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">8 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">15 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">17 ft</text>
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
- **D** ($\frac{48}{55}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('77e421bd-2c2d-4aa9-870f-792393007294', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 49 ft from a wall; the top is 56 ft high. The ladder length is 74 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">9 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">16 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">18 ft</text>
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
- **D** ($\frac{49}{56}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2803f863-60e2-4fdd-9519-d35750d5bbd6', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 50 ft from a wall; the top is 57 ft high. The ladder length is 76 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">10 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">17 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">20 ft</text>
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
- **D** ($\frac{50}{57}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c9feb03a-4e5c-47f5-8abe-1d4fd46d55a2', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 51 ft from a wall; the top is 58 ft high. The ladder length is 77 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">11 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">18 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">21 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{58}{77}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=58$, hypotenuse $=77$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{58}{77}$.
**Step 3:** Pythagorean check: $51^2+58^2=77^2$.
**Step 4:** $\cos\theta=\frac{51}{77}$, not the answer.

**Step 3 — Answer SPR.** frac{58}{77}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4a0ad37-1776-43bc-a7b6-d396456c4133', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 52 ft from a wall; the top is 59 ft high. The ladder length is 79 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">12 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">19 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">22 ft</text>
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
- **D** ($\frac{52}{59}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c314717-1b70-4f3f-be72-cd8bdb8c1583', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 53 ft from a wall; the top is 60 ft high. The ladder length is 80 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">13 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">20 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">24 ft</text>
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
- **D** ($\frac{53}{60}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de79c080-30d4-42d5-862a-6b34a157d6d5', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 54 ft from a wall; the top is 61 ft high. The ladder length is 81 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">14 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">21 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">25 ft</text>
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
- **D** ($\frac{54}{61}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('875fd788-acc5-478a-b8c7-c841d83bab29', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 55 ft from a wall; the top is 62 ft high. The ladder length is 83 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">15 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">22 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">27 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{62}{83}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=62$, hypotenuse $=83$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{62}{83}$.
**Step 3:** Pythagorean check: $55^2+62^2=83^2$.
**Step 4:** $\cos\theta=\frac{55}{83}$, not the answer.

**Step 3 — Answer SPR.** frac{62}{83}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('67981f7a-b160-43bf-a236-cd829f23ea0e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 56 ft from a wall; the top is 63 ft high. The ladder length is 84 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">16 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">23 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">28 ft</text>
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
- **D** ($\frac{56}{63}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3bac167-9452-4db8-a38b-b420f97bedef', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 57 ft from a wall; the top is 64 ft high. The ladder length is 86 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">17 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">24 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">29 ft</text>
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
VALUES ('a8c713d0-7358-4db8-ba98-e205b3a5bf7f', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 58 ft from a wall; the top is 65 ft high. The ladder length is 87 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">18 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">25 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">31 ft</text>
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
VALUES ('4567ed96-3ddc-4714-afd5-ca82558fffe4', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 59 ft from a wall; the top is 66 ft high. The ladder length is 89 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">19 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">26 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">32 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{66}{89}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=66$, hypotenuse $=89$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{66}{89}$.
**Step 3:** Pythagorean check: $59^2+66^2=89^2$.
**Step 4:** $\cos\theta=\frac{59}{89}$, not the answer.

**Step 3 — Answer SPR.** frac{66}{89}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
