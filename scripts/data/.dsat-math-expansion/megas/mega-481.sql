BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('33114e96-d745-4cc3-b9df-e89ef590565f', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 12 ft from a wall; the top is 19 ft high. The ladder length is 22 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">12 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">19 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">22 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{12}{22}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{19}{22}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=19$, hypotenuse $=22$. **Step 2:** $\\sin\\theta=\\frac{19}{22}≈0.864$."},{"id":"C","text":"$\\frac{22}{19}$","is_correct":false,"explanation":"Choice C ($\\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{12}{19}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=19$, hypotenuse $=22$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{19}{22}$.
**Step 3:** Pythagorean check: $12^2+19^2=22^2$.
**Step 4:** $\cos\theta=\frac{12}{22}$, not the answer.

**Step 3 — Answer B.** $\frac{19}{22}$

**Distractor analysis:**
- **A** ($\frac{12}{22}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{22}{19}$): Choice C ($\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{12}{19}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11e4d813-106f-47ad-92b0-c2a99eb0bd00', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 13 ft from a wall; the top is 20 ft high. The ladder length is 24 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">13 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">20 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">24 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{13}{24}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{20}{24}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=20$, hypotenuse $=24$. **Step 2:** $\\sin\\theta=\\frac{20}{24}≈0.833$."},{"id":"C","text":"$\\frac{24}{20}$","is_correct":false,"explanation":"Choice C ($\\frac{24}{20}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{13}{20}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=20$, hypotenuse $=24$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{20}{24}$.
**Step 3:** Pythagorean check: $13^2+20^2=24^2$.
**Step 4:** $\cos\theta=\frac{13}{24}$, not the answer.

**Step 3 — Answer B.** $\frac{20}{24}$

**Distractor analysis:**
- **A** ($\frac{13}{24}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{24}{20}$): Choice C ($\frac{24}{20}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{13}{20}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c9baf86-3372-4c26-aeec-6f138aba0b79', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 14 ft from a wall; the top is 21 ft high. The ladder length is 25 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">14 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">21 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">25 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{14}{25}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{21}{25}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=21$, hypotenuse $=25$. **Step 2:** $\\sin\\theta=\\frac{21}{25}≈0.840$."},{"id":"C","text":"$\\frac{25}{21}$","is_correct":false,"explanation":"Choice C ($\\frac{25}{21}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{14}{21}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=21$, hypotenuse $=25$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{21}{25}$.
**Step 3:** Pythagorean check: $14^2+21^2=25^2$.
**Step 4:** $\cos\theta=\frac{14}{25}$, not the answer.

**Step 3 — Answer B.** $\frac{21}{25}$

**Distractor analysis:**
- **A** ($\frac{14}{25}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{25}{21}$): Choice C ($\frac{25}{21}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{14}{21}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e5e48b7-2e71-4002-8ed7-14c9f5e48424', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 15 ft from a wall; the top is 22 ft high. The ladder length is 27 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">15 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">22 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">27 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{22}{27}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=22$, hypotenuse $=27$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{22}{27}$.
**Step 3:** Pythagorean check: $15^2+22^2=27^2$.
**Step 4:** $\cos\theta=\frac{15}{27}$, not the answer.

**Step 3 — Answer SPR.** frac{22}{27}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b98ac32-7df4-4045-abd5-f5aa6f9fc9b0', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 16 ft from a wall; the top is 23 ft high. The ladder length is 28 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">16 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">23 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">28 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{16}{28}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{23}{28}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=23$, hypotenuse $=28$. **Step 2:** $\\sin\\theta=\\frac{23}{28}≈0.821$."},{"id":"C","text":"$\\frac{28}{23}$","is_correct":false,"explanation":"Choice C ($\\frac{28}{23}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{16}{23}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=23$, hypotenuse $=28$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{23}{28}$.
**Step 3:** Pythagorean check: $16^2+23^2=28^2$.
**Step 4:** $\cos\theta=\frac{16}{28}$, not the answer.

**Step 3 — Answer B.** $\frac{23}{28}$

**Distractor analysis:**
- **A** ($\frac{16}{28}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{28}{23}$): Choice C ($\frac{28}{23}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{16}{23}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6e758022-9450-4ae0-8d04-0a204a24a27e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 17 ft from a wall; the top is 24 ft high. The ladder length is 29 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">17 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">24 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">29 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{17}{29}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{24}{29}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=24$, hypotenuse $=29$. **Step 2:** $\\sin\\theta=\\frac{24}{29}≈0.828$."},{"id":"C","text":"$\\frac{29}{24}$","is_correct":false,"explanation":"Choice C ($\\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{17}{24}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=24$, hypotenuse $=29$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{24}{29}$.
**Step 3:** Pythagorean check: $17^2+24^2=29^2$.
**Step 4:** $\cos\theta=\frac{17}{29}$, not the answer.

**Step 3 — Answer B.** $\frac{24}{29}$

**Distractor analysis:**
- **A** ($\frac{17}{29}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{29}{24}$): Choice C ($\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{17}{24}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d34145ef-1bad-458b-9136-b81035aa81a3', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 18 ft from a wall; the top is 25 ft high. The ladder length is 31 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">18 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">25 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">31 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{18}{31}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{25}{31}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=25$, hypotenuse $=31$. **Step 2:** $\\sin\\theta=\\frac{25}{31}≈0.806$."},{"id":"C","text":"$\\frac{31}{25}$","is_correct":false,"explanation":"Choice C ($\\frac{31}{25}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{18}{25}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=25$, hypotenuse $=31$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{25}{31}$.
**Step 3:** Pythagorean check: $18^2+25^2=31^2$.
**Step 4:** $\cos\theta=\frac{18}{31}$, not the answer.

**Step 3 — Answer B.** $\frac{25}{31}$

**Distractor analysis:**
- **A** ($\frac{18}{31}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{31}{25}$): Choice C ($\frac{31}{25}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{18}{25}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccd28b11-f53f-496e-9622-79d5f99c3689', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 19 ft from a wall; the top is 26 ft high. The ladder length is 32 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">19 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">26 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">32 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{26}{32}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=26$, hypotenuse $=32$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{26}{32}$.
**Step 3:** Pythagorean check: $19^2+26^2=32^2$.
**Step 4:** $\cos\theta=\frac{19}{32}$, not the answer.

**Step 3 — Answer SPR.** frac{26}{32}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b21318ea-78ab-4bb3-9b23-cc3191cf3431', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 20 ft from a wall; the top is 27 ft high. The ladder length is 34 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">20 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">27 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">34 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{20}{34}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{27}{34}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=27$, hypotenuse $=34$. **Step 2:** $\\sin\\theta=\\frac{27}{34}≈0.794$."},{"id":"C","text":"$\\frac{34}{27}$","is_correct":false,"explanation":"Choice C ($\\frac{34}{27}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{20}{27}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=27$, hypotenuse $=34$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{27}{34}$.
**Step 3:** Pythagorean check: $20^2+27^2=34^2$.
**Step 4:** $\cos\theta=\frac{20}{34}$, not the answer.

**Step 3 — Answer B.** $\frac{27}{34}$

**Distractor analysis:**
- **A** ($\frac{20}{34}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{34}{27}$): Choice C ($\frac{34}{27}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{20}{27}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd15bf7d-1aa9-4cf7-b9b7-490ce6bc5996', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 21 ft from a wall; the top is 28 ft high. The ladder length is 35 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">21 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">28 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">35 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{21}{35}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{28}{35}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=28$, hypotenuse $=35$. **Step 2:** $\\sin\\theta=\\frac{28}{35}≈0.800$."},{"id":"C","text":"$\\frac{35}{28}$","is_correct":false,"explanation":"Choice C ($\\frac{35}{28}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{21}{28}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=28$, hypotenuse $=35$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{28}{35}$.
**Step 3:** Pythagorean check: $21^2+28^2=35^2$.
**Step 4:** $\cos\theta=\frac{21}{35}$, not the answer.

**Step 3 — Answer B.** $\frac{28}{35}$

**Distractor analysis:**
- **A** ($\frac{21}{35}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{35}{28}$): Choice C ($\frac{35}{28}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{21}{28}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0583fd25-c2cd-47d3-a6de-e1ae0b976e39', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 22 ft from a wall; the top is 29 ft high. The ladder length is 36 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">22 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">29 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">36 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{22}{36}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{29}{36}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=29$, hypotenuse $=36$. **Step 2:** $\\sin\\theta=\\frac{29}{36}≈0.806$."},{"id":"C","text":"$\\frac{36}{29}$","is_correct":false,"explanation":"Choice C ($\\frac{36}{29}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{22}{29}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=29$, hypotenuse $=36$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{29}{36}$.
**Step 3:** Pythagorean check: $22^2+29^2=36^2$.
**Step 4:** $\cos\theta=\frac{22}{36}$, not the answer.

**Step 3 — Answer B.** $\frac{29}{36}$

**Distractor analysis:**
- **A** ($\frac{22}{36}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{36}{29}$): Choice C ($\frac{36}{29}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{22}{29}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1eeccdb-6c7f-46d0-883f-f12b68fff207', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 23 ft from a wall; the top is 30 ft high. The ladder length is 38 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">23 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">30 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">38 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{30}{38}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=30$, hypotenuse $=38$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{30}{38}$.
**Step 3:** Pythagorean check: $23^2+30^2=38^2$.
**Step 4:** $\cos\theta=\frac{23}{38}$, not the answer.

**Step 3 — Answer SPR.** frac{30}{38}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
