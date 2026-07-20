BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0b3704bb-4b99-40f9-a19e-e8788d7ba08f', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 10 ft from a wall; the top is 17 ft high. The ladder length is 20 ft.

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
- **D** ($\frac{10}{17}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1691d2cc-9deb-4eff-b490-65571d2e260d', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 11 ft from a wall; the top is 18 ft high. The ladder length is 21 ft.

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
- **D** ($\frac{11}{18}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7842e14d-740e-45f1-a1bb-3cc4bb914aec', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 12 ft from a wall; the top is 19 ft high. The ladder length is 22 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{19}{22}$

**Distractor analysis:**
- **A** ($\frac{12}{22}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{22}{19}$): Choice C ($\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{12}{19}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('be06e523-d44f-4d5d-aab0-de8663c06b0e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 13 ft from a wall; the top is 20 ft high. The ladder length is 24 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{20}{24}$

**Distractor analysis:**
- **A** ($\frac{13}{24}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{24}{20}$): Choice C ($\frac{24}{20}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{13}{20}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3c15d11c-eed3-4493-af23-ebe674eaf614', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 14 ft from a wall; the top is 21 ft high. The ladder length is 25 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{21}{25}$

**Distractor analysis:**
- **A** ($\frac{14}{25}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{25}{21}$): Choice C ($\frac{25}{21}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{14}{21}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9bb3da82-7fbc-4f03-9899-9674f7261410', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 15 ft from a wall; the top is 22 ft high. The ladder length is 27 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">15 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">22 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">27 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{15}{27}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{22}{27}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=22$, hypotenuse $=27$. **Step 2:** $\\sin\\theta=\\frac{22}{27}≈0.815$."},{"id":"C","text":"$\\frac{27}{22}$","is_correct":false,"explanation":"Choice C ($\\frac{27}{22}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{15}{22}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=22$, hypotenuse $=27$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{22}{27}$.
**Step 3:** Pythagorean check: $15^2+22^2=27^2$.
**Step 4:** $\cos\theta=\frac{15}{27}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{22}{27}$

**Distractor analysis:**
- **A** ($\frac{15}{27}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{27}{22}$): Choice C ($\frac{27}{22}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{15}{22}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('93b894c9-1442-436f-8f97-645fb1a3c1a3', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 16 ft from a wall; the top is 23 ft high. The ladder length is 28 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{23}{28}$

**Distractor analysis:**
- **A** ($\frac{16}{28}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{28}{23}$): Choice C ($\frac{28}{23}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{16}{23}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0f4dfe61-24df-4172-a662-92e948d6e2c1', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 17 ft from a wall; the top is 24 ft high. The ladder length is 29 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{24}{29}$

**Distractor analysis:**
- **A** ($\frac{17}{29}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{29}{24}$): Choice C ($\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{17}{24}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('40956aa8-6bb9-462a-9edf-b8a81511d2cc', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 18 ft from a wall; the top is 25 ft high. The ladder length is 31 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{25}{31}$

**Distractor analysis:**
- **A** ($\frac{18}{31}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{31}{25}$): Choice C ($\frac{31}{25}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{18}{25}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6d6be38f-ee02-4a5f-b918-c786a9821d4a', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 19 ft from a wall; the top is 26 ft high. The ladder length is 32 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">19 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">26 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">32 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{19}{32}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{26}{32}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=26$, hypotenuse $=32$. **Step 2:** $\\sin\\theta=\\frac{26}{32}≈0.813$."},{"id":"C","text":"$\\frac{32}{26}$","is_correct":false,"explanation":"Choice C ($\\frac{32}{26}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{19}{26}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=26$, hypotenuse $=32$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{26}{32}$.
**Step 3:** Pythagorean check: $19^2+26^2=32^2$.
**Step 4:** $\cos\theta=\frac{19}{32}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{26}{32}$

**Distractor analysis:**
- **A** ($\frac{19}{32}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{32}{26}$): Choice C ($\frac{32}{26}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{19}{26}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('35d60fc3-8c0e-41d2-9b9e-5ae37a0f990a', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 20 ft from a wall; the top is 27 ft high. The ladder length is 34 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{27}{34}$

**Distractor analysis:**
- **A** ($\frac{20}{34}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{34}{27}$): Choice C ($\frac{34}{27}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{20}{27}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('beef7366-3334-458b-b838-c9225acc110c', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 21 ft from a wall; the top is 28 ft high. The ladder length is 35 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{28}{35}$

**Distractor analysis:**
- **A** ($\frac{21}{35}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{35}{28}$): Choice C ($\frac{35}{28}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{21}{28}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('39c4d07f-9c20-45ac-8bc9-5fe88cf996b6', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 22 ft from a wall; the top is 29 ft high. The ladder length is 36 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{29}{36}$

**Distractor analysis:**
- **A** ($\frac{22}{36}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{36}{29}$): Choice C ($\frac{36}{29}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{22}{29}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('652830ee-85b1-4c15-b0a2-1c41f11c5902', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 23 ft from a wall; the top is 30 ft high. The ladder length is 38 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">23 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">30 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">38 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{23}{38}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{30}{38}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=30$, hypotenuse $=38$. **Step 2:** $\\sin\\theta=\\frac{30}{38}≈0.789$."},{"id":"C","text":"$\\frac{38}{30}$","is_correct":false,"explanation":"Choice C ($\\frac{38}{30}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{23}{30}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=30$, hypotenuse $=38$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{30}{38}$.
**Step 3:** Pythagorean check: $23^2+30^2=38^2$.
**Step 4:** $\cos\theta=\frac{23}{38}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{30}{38}$

**Distractor analysis:**
- **A** ($\frac{23}{38}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{38}{30}$): Choice C ($\frac{38}{30}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{23}{30}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('562e0320-9d46-4ac7-a970-6a288f8a4e2e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 24 ft from a wall; the top is 31 ft high. The ladder length is 39 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{31}{39}$

**Distractor analysis:**
- **A** ($\frac{24}{39}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{39}{31}$): Choice C ($\frac{39}{31}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{24}{31}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2b0bbf3a-f65e-486b-acec-4b4b6e23229b', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 25 ft from a wall; the top is 32 ft high. The ladder length is 41 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{32}{41}$

**Distractor analysis:**
- **A** ($\frac{25}{41}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{41}{32}$): Choice C ($\frac{41}{32}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{25}{32}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5c46d458-c3e1-4815-b230-7bde0c4fe4de', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 26 ft from a wall; the top is 33 ft high. The ladder length is 42 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{33}{42}$

**Distractor analysis:**
- **A** ($\frac{26}{42}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{42}{33}$): Choice C ($\frac{42}{33}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{26}{33}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0f932798-91be-4316-b7c6-c17969496fa3', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 27 ft from a wall; the top is 34 ft high. The ladder length is 43 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">27 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">34 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">43 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{27}{43}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{34}{43}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=34$, hypotenuse $=43$. **Step 2:** $\\sin\\theta=\\frac{34}{43}≈0.791$."},{"id":"C","text":"$\\frac{43}{34}$","is_correct":false,"explanation":"Choice C ($\\frac{43}{34}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{27}{34}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=34$, hypotenuse $=43$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{34}{43}$.
**Step 3:** Pythagorean check: $27^2+34^2=43^2$.
**Step 4:** $\cos\theta=\frac{27}{43}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{34}{43}$

**Distractor analysis:**
- **A** ($\frac{27}{43}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{43}{34}$): Choice C ($\frac{43}{34}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{27}{34}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7703a1f4-fd6b-49c8-a143-55cd39178bdd', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 28 ft from a wall; the top is 35 ft high. The ladder length is 45 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{35}{45}$

**Distractor analysis:**
- **A** ($\frac{28}{45}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{45}{35}$): Choice C ($\frac{45}{35}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{28}{35}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9a69a251-0ac2-48bf-a66c-db8a879ac27f', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 29 ft from a wall; the top is 36 ft high. The ladder length is 46 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{36}{46}$

**Distractor analysis:**
- **A** ($\frac{29}{46}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{46}{36}$): Choice C ($\frac{46}{36}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{29}{36}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('eef9a59b-0407-4544-b320-c258953cdbd4', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 30 ft from a wall; the top is 37 ft high. The ladder length is 48 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{37}{48}$

**Distractor analysis:**
- **A** ($\frac{30}{48}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{48}{37}$): Choice C ($\frac{48}{37}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{30}{37}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('226ba945-513c-43c7-8a1e-ad18dba89270', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 31 ft from a wall; the top is 38 ft high. The ladder length is 49 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">31 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">38 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">49 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{31}{49}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{38}{49}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=38$, hypotenuse $=49$. **Step 2:** $\\sin\\theta=\\frac{38}{49}≈0.776$."},{"id":"C","text":"$\\frac{49}{38}$","is_correct":false,"explanation":"Choice C ($\\frac{49}{38}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{31}{38}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=38$, hypotenuse $=49$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{38}{49}$.
**Step 3:** Pythagorean check: $31^2+38^2=49^2$.
**Step 4:** $\cos\theta=\frac{31}{49}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{38}{49}$

**Distractor analysis:**
- **A** ($\frac{31}{49}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{49}{38}$): Choice C ($\frac{49}{38}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{31}{38}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('49dbd8ab-7e76-4fb1-8ab5-15a5f274c766', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 32 ft from a wall; the top is 39 ft high. The ladder length is 50 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{39}{50}$

**Distractor analysis:**
- **A** ($\frac{32}{50}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{50}{39}$): Choice C ($\frac{50}{39}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{32}{39}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('51d4d378-16b6-46f3-b2b2-335fe1cc4ed4', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 33 ft from a wall; the top is 40 ft high. The ladder length is 52 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{40}{52}$

**Distractor analysis:**
- **A** ($\frac{33}{52}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{52}{40}$): Choice C ($\frac{52}{40}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{33}{40}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5150d869-5b07-4f36-9d98-23c72628ff2a', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 34 ft from a wall; the top is 41 ft high. The ladder length is 53 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{41}{53}$

**Distractor analysis:**
- **A** ($\frac{34}{53}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{53}{41}$): Choice C ($\frac{53}{41}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{34}{41}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('70dddaa1-15f1-46d4-90dc-0c690bd0c841', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 35 ft from a wall; the top is 42 ft high. The ladder length is 55 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">35 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">42 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">55 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{35}{55}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{42}{55}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=42$, hypotenuse $=55$. **Step 2:** $\\sin\\theta=\\frac{42}{55}≈0.764$."},{"id":"C","text":"$\\frac{55}{42}$","is_correct":false,"explanation":"Choice C ($\\frac{55}{42}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{35}{42}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=42$, hypotenuse $=55$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{42}{55}$.
**Step 3:** Pythagorean check: $35^2+42^2=55^2$.
**Step 4:** $\cos\theta=\frac{35}{55}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{42}{55}$

**Distractor analysis:**
- **A** ($\frac{35}{55}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{55}{42}$): Choice C ($\frac{55}{42}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{35}{42}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('81982b4d-abb4-4790-b735-f70c2090e846', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 36 ft from a wall; the top is 43 ft high. The ladder length is 56 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">36 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">43 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">56 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{36}{56}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{43}{56}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=43$, hypotenuse $=56$. **Step 2:** $\\sin\\theta=\\frac{43}{56}≈0.768$."},{"id":"C","text":"$\\frac{56}{43}$","is_correct":false,"explanation":"Choice C ($\\frac{56}{43}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{36}{43}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=43$, hypotenuse $=56$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{43}{56}$.
**Step 3:** Pythagorean check: $36^2+43^2=56^2$.
**Step 4:** $\cos\theta=\frac{36}{56}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{43}{56}$

**Distractor analysis:**
- **A** ($\frac{36}{56}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{56}{43}$): Choice C ($\frac{56}{43}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{36}{43}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('91f6d58f-ce78-4fee-81cf-0008e36af3e2', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 37 ft from a wall; the top is 44 ft high. The ladder length is 57 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">37 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">44 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">57 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{37}{57}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{44}{57}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=44$, hypotenuse $=57$. **Step 2:** $\\sin\\theta=\\frac{44}{57}≈0.772$."},{"id":"C","text":"$\\frac{57}{44}$","is_correct":false,"explanation":"Choice C ($\\frac{57}{44}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{37}{44}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=44$, hypotenuse $=57$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{44}{57}$.
**Step 3:** Pythagorean check: $37^2+44^2=57^2$.
**Step 4:** $\cos\theta=\frac{37}{57}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{44}{57}$

**Distractor analysis:**
- **A** ($\frac{37}{57}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{57}{44}$): Choice C ($\frac{57}{44}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{37}{44}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('90fe2924-955d-4b5d-8a44-d95534733152', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 38 ft from a wall; the top is 45 ft high. The ladder length is 59 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">38 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">45 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">59 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{38}{59}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{45}{59}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=45$, hypotenuse $=59$. **Step 2:** $\\sin\\theta=\\frac{45}{59}≈0.763$."},{"id":"C","text":"$\\frac{59}{45}$","is_correct":false,"explanation":"Choice C ($\\frac{59}{45}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{38}{45}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=45$, hypotenuse $=59$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{45}{59}$.
**Step 3:** Pythagorean check: $38^2+45^2=59^2$.
**Step 4:** $\cos\theta=\frac{38}{59}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{45}{59}$

**Distractor analysis:**
- **A** ($\frac{38}{59}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{59}{45}$): Choice C ($\frac{59}{45}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{38}{45}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('44eab637-59d6-4203-b37e-996bdd9b7f81', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 39 ft from a wall; the top is 46 ft high. The ladder length is 60 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">39 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">46 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">60 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{39}{60}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{46}{60}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=46$, hypotenuse $=60$. **Step 2:** $\\sin\\theta=\\frac{46}{60}≈0.767$."},{"id":"C","text":"$\\frac{60}{46}$","is_correct":false,"explanation":"Choice C ($\\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{39}{46}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=46$, hypotenuse $=60$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{46}{60}$.
**Step 3:** Pythagorean check: $39^2+46^2=60^2$.
**Step 4:** $\cos\theta=\frac{39}{60}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{46}{60}$

**Distractor analysis:**
- **A** ($\frac{39}{60}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{60}{46}$): Choice C ($\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{39}{46}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bb771168-1cc6-42a5-a2de-d9d101bd3cad', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 40 ft from a wall; the top is 47 ft high. The ladder length is 62 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">40 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">47 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">62 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{40}{62}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{47}{62}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=47$, hypotenuse $=62$. **Step 2:** $\\sin\\theta=\\frac{47}{62}≈0.758$."},{"id":"C","text":"$\\frac{62}{47}$","is_correct":false,"explanation":"Choice C ($\\frac{62}{47}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{40}{47}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=47$, hypotenuse $=62$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{47}{62}$.
**Step 3:** Pythagorean check: $40^2+47^2=62^2$.
**Step 4:** $\cos\theta=\frac{40}{62}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{47}{62}$

**Distractor analysis:**
- **A** ($\frac{40}{62}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{62}{47}$): Choice C ($\frac{62}{47}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{40}{47}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('597c7932-6622-47b8-aa09-f6cb18c39a64', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 41 ft from a wall; the top is 48 ft high. The ladder length is 63 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">41 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">48 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">63 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{41}{63}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{48}{63}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=48$, hypotenuse $=63$. **Step 2:** $\\sin\\theta=\\frac{48}{63}≈0.762$."},{"id":"C","text":"$\\frac{63}{48}$","is_correct":false,"explanation":"Choice C ($\\frac{63}{48}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{41}{48}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=48$, hypotenuse $=63$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{48}{63}$.
**Step 3:** Pythagorean check: $41^2+48^2=63^2$.
**Step 4:** $\cos\theta=\frac{41}{63}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{48}{63}$

**Distractor analysis:**
- **A** ($\frac{41}{63}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{63}{48}$): Choice C ($\frac{63}{48}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{41}{48}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8aacdffc-f1e8-4e8f-abbb-208b73a6b992', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 42 ft from a wall; the top is 49 ft high. The ladder length is 65 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">42 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">49 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">65 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{42}{65}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{49}{65}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=49$, hypotenuse $=65$. **Step 2:** $\\sin\\theta=\\frac{49}{65}≈0.754$."},{"id":"C","text":"$\\frac{65}{49}$","is_correct":false,"explanation":"Choice C ($\\frac{65}{49}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{42}{49}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=49$, hypotenuse $=65$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{49}{65}$.
**Step 3:** Pythagorean check: $42^2+49^2=65^2$.
**Step 4:** $\cos\theta=\frac{42}{65}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{49}{65}$

**Distractor analysis:**
- **A** ($\frac{42}{65}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{65}{49}$): Choice C ($\frac{65}{49}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{42}{49}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('45136232-dc1d-4442-bc32-54558ed72b76', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 43 ft from a wall; the top is 50 ft high. The ladder length is 66 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">43 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">50 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">66 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{43}{66}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{50}{66}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=50$, hypotenuse $=66$. **Step 2:** $\\sin\\theta=\\frac{50}{66}≈0.758$."},{"id":"C","text":"$\\frac{66}{50}$","is_correct":false,"explanation":"Choice C ($\\frac{66}{50}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{43}{50}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=50$, hypotenuse $=66$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{50}{66}$.
**Step 3:** Pythagorean check: $43^2+50^2=66^2$.
**Step 4:** $\cos\theta=\frac{43}{66}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{50}{66}$

**Distractor analysis:**
- **A** ($\frac{43}{66}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{66}{50}$): Choice C ($\frac{66}{50}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{43}{50}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f7f497a6-ddff-42c9-8347-c6cd112a1d6d', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 44 ft from a wall; the top is 51 ft high. The ladder length is 67 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">44 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">51 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">67 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{44}{67}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{51}{67}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=51$, hypotenuse $=67$. **Step 2:** $\\sin\\theta=\\frac{51}{67}≈0.761$."},{"id":"C","text":"$\\frac{67}{51}$","is_correct":false,"explanation":"Choice C ($\\frac{67}{51}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{44}{51}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=51$, hypotenuse $=67$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{51}{67}$.
**Step 3:** Pythagorean check: $44^2+51^2=67^2$.
**Step 4:** $\cos\theta=\frac{44}{67}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{51}{67}$

**Distractor analysis:**
- **A** ($\frac{44}{67}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{67}{51}$): Choice C ($\frac{67}{51}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{44}{51}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('de06a356-4708-474b-8aa8-ae8cbd8de2c7', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 45 ft from a wall; the top is 52 ft high. The ladder length is 69 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">45 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">52 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">69 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{45}{69}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{52}{69}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=52$, hypotenuse $=69$. **Step 2:** $\\sin\\theta=\\frac{52}{69}≈0.754$."},{"id":"C","text":"$\\frac{69}{52}$","is_correct":false,"explanation":"Choice C ($\\frac{69}{52}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{45}{52}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=52$, hypotenuse $=69$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{52}{69}$.
**Step 3:** Pythagorean check: $45^2+52^2=69^2$.
**Step 4:** $\cos\theta=\frac{45}{69}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{52}{69}$

**Distractor analysis:**
- **A** ($\frac{45}{69}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{69}{52}$): Choice C ($\frac{69}{52}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{45}{52}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3329d276-2608-4497-9223-51c7edc012cd', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 46 ft from a wall; the top is 53 ft high. The ladder length is 70 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">6 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">13 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">14 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{46}{70}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{53}{70}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=53$, hypotenuse $=70$. **Step 2:** $\\sin\\theta=\\frac{53}{70}≈0.757$."},{"id":"C","text":"$\\frac{70}{53}$","is_correct":false,"explanation":"Choice C ($\\frac{70}{53}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{46}{53}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=53$, hypotenuse $=70$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{53}{70}$.
**Step 3:** Pythagorean check: $46^2+53^2=70^2$.
**Step 4:** $\cos\theta=\frac{46}{70}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{53}{70}$

**Distractor analysis:**
- **A** ($\frac{46}{70}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{70}{53}$): Choice C ($\frac{70}{53}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{46}{53}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cafbc8b8-ae63-4b98-9bfc-36944d6525ce', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 47 ft from a wall; the top is 54 ft high. The ladder length is 72 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">7 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">14 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">16 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{47}{72}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{54}{72}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=54$, hypotenuse $=72$. **Step 2:** $\\sin\\theta=\\frac{54}{72}≈0.750$."},{"id":"C","text":"$\\frac{72}{54}$","is_correct":false,"explanation":"Choice C ($\\frac{72}{54}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{47}{54}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=54$, hypotenuse $=72$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{54}{72}$.
**Step 3:** Pythagorean check: $47^2+54^2=72^2$.
**Step 4:** $\cos\theta=\frac{47}{72}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{54}{72}$

**Distractor analysis:**
- **A** ($\frac{47}{72}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{72}{54}$): Choice C ($\frac{72}{54}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{47}{54}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('58d9249f-39f5-407e-a461-afc001f3b290', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 48 ft from a wall; the top is 55 ft high. The ladder length is 73 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{55}{73}$

**Distractor analysis:**
- **A** ($\frac{48}{73}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{73}{55}$): Choice C ($\frac{73}{55}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{48}{55}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3ee32e27-06ac-4214-9631-4198602df1de', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 49 ft from a wall; the top is 56 ft high. The ladder length is 74 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{56}{74}$

**Distractor analysis:**
- **A** ($\frac{49}{74}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{74}{56}$): Choice C ($\frac{74}{56}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{49}{56}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
