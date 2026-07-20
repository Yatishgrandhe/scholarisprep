BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fb7bba5-95ce-4557-928d-f4d2d0b3685c', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 60 ft from a wall; the top is 67 ft high. The ladder length is 90 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">20 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">27 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">34 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{60}{90}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{67}{90}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=67$, hypotenuse $=90$. **Step 2:** $\\sin\\theta=\\frac{67}{90}≈0.744$."},{"id":"C","text":"$\\frac{90}{67}$","is_correct":false,"explanation":"Choice C ($\\frac{90}{67}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{60}{67}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=67$, hypotenuse $=90$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{67}{90}$.
**Step 3:** Pythagorean check: $60^2+67^2=90^2$.
**Step 4:** $\cos\theta=\frac{60}{90}$, not the answer.

**Step 3 — Answer B.** $\frac{67}{90}$

**Distractor analysis:**
- **A** ($\frac{60}{90}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{90}{67}$): Choice C ($\frac{90}{67}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{60}{67}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6eb24a98-5ac7-41e0-a219-76530516d0f5', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 61 ft from a wall; the top is 68 ft high. The ladder length is 91 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">21 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">28 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">35 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{61}{91}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{68}{91}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=68$, hypotenuse $=91$. **Step 2:** $\\sin\\theta=\\frac{68}{91}≈0.747$."},{"id":"C","text":"$\\frac{91}{68}$","is_correct":false,"explanation":"Choice C ($\\frac{91}{68}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{61}{68}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=68$, hypotenuse $=91$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{68}{91}$.
**Step 3:** Pythagorean check: $61^2+68^2=91^2$.
**Step 4:** $\cos\theta=\frac{61}{91}$, not the answer.

**Step 3 — Answer B.** $\frac{68}{91}$

**Distractor analysis:**
- **A** ($\frac{61}{91}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{91}{68}$): Choice C ($\frac{91}{68}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{61}{68}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7bb8e2d7-9dfb-4cb8-a36d-6734d937c1fc', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 62 ft from a wall; the top is 69 ft high. The ladder length is 93 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">22 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">29 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">36 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{62}{93}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{69}{93}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=69$, hypotenuse $=93$. **Step 2:** $\\sin\\theta=\\frac{69}{93}≈0.742$."},{"id":"C","text":"$\\frac{93}{69}$","is_correct":false,"explanation":"Choice C ($\\frac{93}{69}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{62}{69}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=69$, hypotenuse $=93$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{69}{93}$.
**Step 3:** Pythagorean check: $62^2+69^2=93^2$.
**Step 4:** $\cos\theta=\frac{62}{93}$, not the answer.

**Step 3 — Answer B.** $\frac{69}{93}$

**Distractor analysis:**
- **A** ($\frac{62}{93}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{93}{69}$): Choice C ($\frac{93}{69}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{62}{69}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c34508f-6079-4dc9-804a-a9d9581dbffa', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.', 'A ladder''s foot is 63 ft from a wall; the top is 70 ft high. The ladder length is 94 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">23 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">30 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">38 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"SPR","text":"frac{70}{94}","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=70$, hypotenuse $=94$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{70}{94}$.
**Step 3:** Pythagorean check: $63^2+70^2=94^2$.
**Step 4:** $\cos\theta=\frac{63}{94}$, not the answer.

**Step 3 — Answer SPR.** frac{70}{94}', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90f5aa0b-915d-49af-8546-d6546b7eb064', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 64 ft from a wall; the top is 71 ft high. The ladder length is 96 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">24 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">31 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">39 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{64}{96}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{71}{96}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=71$, hypotenuse $=96$. **Step 2:** $\\sin\\theta=\\frac{71}{96}≈0.740$."},{"id":"C","text":"$\\frac{96}{71}$","is_correct":false,"explanation":"Choice C ($\\frac{96}{71}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{64}{71}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=71$, hypotenuse $=96$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{71}{96}$.
**Step 3:** Pythagorean check: $64^2+71^2=96^2$.
**Step 4:** $\cos\theta=\frac{64}{96}$, not the answer.

**Step 3 — Answer B.** $\frac{71}{96}$

**Distractor analysis:**
- **A** ($\frac{64}{96}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{96}{71}$): Choice C ($\frac{96}{71}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{64}{71}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21fbc376-12ef-4bca-bd1d-7fa962f67bc0', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 65 ft from a wall; the top is 72 ft high. The ladder length is 97 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">25 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">32 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">41 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{65}{97}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{72}{97}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=72$, hypotenuse $=97$. **Step 2:** $\\sin\\theta=\\frac{72}{97}≈0.742$."},{"id":"C","text":"$\\frac{97}{72}$","is_correct":false,"explanation":"Choice C ($\\frac{97}{72}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{65}{72}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=72$, hypotenuse $=97$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{72}{97}$.
**Step 3:** Pythagorean check: $65^2+72^2=97^2$.
**Step 4:** $\cos\theta=\frac{65}{97}$, not the answer.

**Step 3 — Answer B.** $\frac{72}{97}$

**Distractor analysis:**
- **A** ($\frac{65}{97}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{97}{72}$): Choice C ($\frac{97}{72}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{65}{72}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0857600a-d937-4b3e-9ade-415302e8124f', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 6 ft from a wall; the top is 13 ft high. The ladder length is 14 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">6 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">13 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">14 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{13}{14}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=13$, hypotenuse $=14$. **Step 2:** $\\sin\\theta=\\frac{13}{14}≈0.929$."},{"id":"C","text":"$\\frac{14}{13}$","is_correct":false,"explanation":"Choice C ($\\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=13$, hypotenuse $=14$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{13}{14}$.
**Step 3:** Pythagorean check: $6^2+13^2=14^2$.
**Step 4:** $\cos\theta=\frac{6}{14}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{13}{14}$

**Distractor analysis:**
- **A** ($\frac{6}{14}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{14}{13}$): Choice C ($\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{6}{13}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a14240f0-2eba-482b-8a36-979af7e644e6', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 7 ft from a wall; the top is 14 ft high. The ladder length is 16 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">7 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">14 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">16 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{7}{16}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{14}{16}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=14$, hypotenuse $=16$. **Step 2:** $\\sin\\theta=\\frac{14}{16}≈0.875$."},{"id":"C","text":"$\\frac{16}{14}$","is_correct":false,"explanation":"Choice C ($\\frac{16}{14}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{7}{14}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=14$, hypotenuse $=16$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{14}{16}$.
**Step 3:** Pythagorean check: $7^2+14^2=16^2$.
**Step 4:** $\cos\theta=\frac{7}{16}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{14}{16}$

**Distractor analysis:**
- **A** ($\frac{7}{16}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{16}{14}$): Choice C ($\frac{16}{14}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{7}{14}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08f56042-62a4-4bb0-8d70-d172b9028daa', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 8 ft from a wall; the top is 15 ft high. The ladder length is 17 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">8 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">15 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">17 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{8}{17}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{15}{17}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=15$, hypotenuse $=17$. **Step 2:** $\\sin\\theta=\\frac{15}{17}≈0.882$."},{"id":"C","text":"$\\frac{17}{15}$","is_correct":false,"explanation":"Choice C ($\\frac{17}{15}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{8}{15}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=15$, hypotenuse $=17$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{15}{17}$.
**Step 3:** Pythagorean check: $8^2+15^2=17^2$.
**Step 4:** $\cos\theta=\frac{8}{17}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{15}{17}$

**Distractor analysis:**
- **A** ($\frac{8}{17}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{17}{15}$): Choice C ($\frac{17}{15}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{8}{15}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e84936dd-528f-4bb2-8a5a-99bc59988585', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 9 ft from a wall; the top is 16 ft high. The ladder length is 18 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">9 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">16 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">18 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{9}{18}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{16}{18}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=16$, hypotenuse $=18$. **Step 2:** $\\sin\\theta=\\frac{16}{18}≈0.889$."},{"id":"C","text":"$\\frac{18}{16}$","is_correct":false,"explanation":"Choice C ($\\frac{18}{16}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{9}{16}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=16$, hypotenuse $=18$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{16}{18}$.
**Step 3:** Pythagorean check: $9^2+16^2=18^2$.
**Step 4:** $\cos\theta=\frac{9}{18}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{16}{18}$

**Distractor analysis:**
- **A** ($\frac{9}{18}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{18}{16}$): Choice C ($\frac{18}{16}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{9}{16}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34b4ae6c-303e-4199-ac79-4fbbb1a83d45', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 10 ft from a wall; the top is 17 ft high. The ladder length is 20 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">10 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">17 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">20 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{10}{20}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{17}{20}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=17$, hypotenuse $=20$. **Step 2:** $\\sin\\theta=\\frac{17}{20}≈0.850$."},{"id":"C","text":"$\\frac{20}{17}$","is_correct":false,"explanation":"Choice C ($\\frac{20}{17}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{10}{17}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=17$, hypotenuse $=20$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{17}{20}$.
**Step 3:** Pythagorean check: $10^2+17^2=20^2$.
**Step 4:** $\cos\theta=\frac{10}{20}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{17}{20}$

**Distractor analysis:**
- **A** ($\frac{10}{20}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{20}{17}$): Choice C ($\frac{20}{17}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{10}{17}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a83e0e2f-a3ac-4696-90a3-fedb67109e71', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 11 ft from a wall; the top is 18 ft high. The ladder length is 21 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">11 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">18 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">21 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{11}{21}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{18}{21}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=18$, hypotenuse $=21$. **Step 2:** $\\sin\\theta=\\frac{18}{21}≈0.857$."},{"id":"C","text":"$\\frac{21}{18}$","is_correct":false,"explanation":"Choice C ($\\frac{21}{18}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{11}{18}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=18$, hypotenuse $=21$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{18}{21}$.
**Step 3:** Pythagorean check: $11^2+18^2=21^2$.
**Step 4:** $\cos\theta=\frac{11}{21}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{18}{21}$

**Distractor analysis:**
- **A** ($\frac{11}{21}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{21}{18}$): Choice C ($\frac{21}{18}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{11}{18}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
