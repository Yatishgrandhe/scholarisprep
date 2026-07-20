BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8216ede7-adcc-4254-aabb-b4b5ff94be90', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 50 ft from a wall; the top is 57 ft high. The ladder length is 76 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{57}{76}$

**Distractor analysis:**
- **A** ($\frac{50}{76}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{76}{57}$): Choice C ($\frac{76}{57}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{50}{57}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('04a00873-d67d-45ed-b67a-7d3751877120', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 51 ft from a wall; the top is 58 ft high. The ladder length is 77 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">11 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">18 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">21 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{51}{77}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{58}{77}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=58$, hypotenuse $=77$. **Step 2:** $\\sin\\theta=\\frac{58}{77}≈0.753$."},{"id":"C","text":"$\\frac{77}{58}$","is_correct":false,"explanation":"Choice C ($\\frac{77}{58}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{51}{58}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=58$, hypotenuse $=77$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{58}{77}$.
**Step 3:** Pythagorean check: $51^2+58^2=77^2$.
**Step 4:** $\cos\theta=\frac{51}{77}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{58}{77}$

**Distractor analysis:**
- **A** ($\frac{51}{77}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{77}{58}$): Choice C ($\frac{77}{58}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{51}{58}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8566cbc5-aaa3-41df-8afe-f26e08cab668', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 52 ft from a wall; the top is 59 ft high. The ladder length is 79 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{59}{79}$

**Distractor analysis:**
- **A** ($\frac{52}{79}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{79}{59}$): Choice C ($\frac{79}{59}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{52}{59}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d0c267bf-ced8-4159-8e59-28b58e484567', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 53 ft from a wall; the top is 60 ft high. The ladder length is 80 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{60}{80}$

**Distractor analysis:**
- **A** ($\frac{53}{80}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{80}{60}$): Choice C ($\frac{80}{60}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{53}{60}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9e683239-389d-4a79-a07d-6213a7f7fe1c', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 5 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$15.70$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈31.40$. **Step 2:** Half $≈15.70$ m."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$31.40$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(5)=31.40$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈15.70$ m.
**Step 3:** Do not confuse with area $πr^2≈78.50$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $15.70$

**Distractor analysis:**
- **B** ($78.50$): Area formula $\pi r^2$, not arc length.
- **C** ($31.40$): Full circumference, not half.
- **D** ($15.70$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2ec630cc-f29c-4c2f-b767-2d15f40bd5a8', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 6 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 6">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 6</text>
</svg>', 'figure', '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $18.84$

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('94aea4eb-4047-4a0d-9012-c9d0bfb1397d', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 7 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$21.98$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈43.96$. **Step 2:** Half $≈21.98$ m."},{"id":"B","text":"$153.86$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$43.96$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$21.98$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(7)=43.96$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈21.98$ m.
**Step 3:** Do not confuse with area $πr^2≈153.86$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $21.98$

**Distractor analysis:**
- **B** ($153.86$): Area formula $\pi r^2$, not arc length.
- **C** ($43.96$): Full circumference, not half.
- **D** ($21.98$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('00da8cfc-780c-47f9-b88e-97d81acb4126', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 8 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 8">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 8</text>
</svg>', 'figure', '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $25.12$

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ba380dad-2b1c-4086-bbc8-2b0a6e5af7eb', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 9 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$28.26$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈56.52$. **Step 2:** Half $≈28.26$ m."},{"id":"B","text":"$254.34$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$56.52$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$28.26$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(9)=56.52$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈28.26$ m.
**Step 3:** Do not confuse with area $πr^2≈254.34$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $28.26$

**Distractor analysis:**
- **B** ($254.34$): Area formula $\pi r^2$, not arc length.
- **C** ($56.52$): Full circumference, not half.
- **D** ($28.26$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('733fce20-e42a-4c1f-a04c-1befa8847aa3', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 10 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 10">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 10</text>
</svg>', 'figure', '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈62.80$. **Step 2:** Half $≈31.40$ m."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$62.80$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(10)=62.80$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈31.40$ m.
**Step 3:** Do not confuse with area $πr^2≈314.00$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $31.40$

**Distractor analysis:**
- **B** ($314.00$): Area formula $\pi r^2$, not arc length.
- **C** ($62.80$): Full circumference, not half.
- **D** ($31.40$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f020a50a-75c7-4e2a-8aa5-0bc421874275', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 11 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$34.54$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈69.08$. **Step 2:** Half $≈34.54$ m."},{"id":"B","text":"$379.94$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$69.08$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$34.54$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(11)=69.08$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈34.54$ m.
**Step 3:** Do not confuse with area $πr^2≈379.94$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $34.54$

**Distractor analysis:**
- **B** ($379.94$): Area formula $\pi r^2$, not arc length.
- **C** ($69.08$): Full circumference, not half.
- **D** ($34.54$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d1796bcd-9620-4abd-8242-afa9307da1d8', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 12 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 12">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 12</text>
</svg>', 'figure', '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $37.68$

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d12c4c1d-4d02-47be-baaa-03cd80c952c6', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 13 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$40.82$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈81.64$. **Step 2:** Half $≈40.82$ m."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$81.64$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(13)=81.64$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈40.82$ m.
**Step 3:** Do not confuse with area $πr^2≈530.66$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $40.82$

**Distractor analysis:**
- **B** ($530.66$): Area formula $\pi r^2$, not arc length.
- **C** ($81.64$): Full circumference, not half.
- **D** ($40.82$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ebfa0c50-9c18-447e-b3d2-5a6a5cba37d6', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 14 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 14">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 14</text>
</svg>', 'figure', '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $43.96$

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ca45ff9e-dcc1-404e-a08b-a5069fba5e77', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 15 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$47.10$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈94.20$. **Step 2:** Half $≈47.10$ m."},{"id":"B","text":"$706.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$94.20$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$47.10$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(15)=94.20$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈47.10$ m.
**Step 3:** Do not confuse with area $πr^2≈706.50$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $47.10$

**Distractor analysis:**
- **B** ($706.50$): Area formula $\pi r^2$, not arc length.
- **C** ($94.20$): Full circumference, not half.
- **D** ($47.10$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('91097123-ba08-43da-9e21-784cd238bcf4', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 16 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 16">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 16</text>
</svg>', 'figure', '[{"id":"A","text":"$50.24$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈100.48$. **Step 2:** Half $≈50.24$ m."},{"id":"B","text":"$803.84$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$100.48$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$50.24$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(16)=100.48$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈50.24$ m.
**Step 3:** Do not confuse with area $πr^2≈803.84$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $50.24$

**Distractor analysis:**
- **B** ($803.84$): Area formula $\pi r^2$, not arc length.
- **C** ($100.48$): Full circumference, not half.
- **D** ($50.24$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7b593984-bbca-4f36-baf5-827405bca417', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 17 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$53.38$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈106.76$. **Step 2:** Half $≈53.38$ m."},{"id":"B","text":"$907.46$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$106.76$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$53.38$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(17)=106.76$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈53.38$ m.
**Step 3:** Do not confuse with area $πr^2≈907.46$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $53.38$

**Distractor analysis:**
- **B** ($907.46$): Area formula $\pi r^2$, not arc length.
- **C** ($106.76$): Full circumference, not half.
- **D** ($53.38$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4c277b53-0430-4db5-a40d-207d7d7b017d', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 18 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 18">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 18</text>
</svg>', 'figure', '[{"id":"A","text":"$56.52$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈113.04$. **Step 2:** Half $≈56.52$ m."},{"id":"B","text":"$1017.36$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$113.04$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$56.52$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $56.52$

**Distractor analysis:**
- **B** ($1017.36$): Area formula $\pi r^2$, not arc length.
- **C** ($113.04$): Full circumference, not half.
- **D** ($56.52$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Algebra', NULL, 'math', NULL, 'CIR', 'CIR', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('555a0d1e-2677-44c4-90b1-9744837089d3', 'For what value of $k$ does $7(x-3)+2k = 356$ have solution $x=53$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=53$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$53$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-3)+2k = 356$ have solution $x=53$?

**Step 2 — Solve.** **Step 1:** Substitute $x=53$: $7(53-k)+2k=356$.
**Step 2:** Expand: $371-7k+2k=356$ → $371+-5k=356$.
**Step 3:** Isolate: $-5k=-15$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($53$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4a486bb4-8287-4ea2-ba45-45670b6cca6f', 'Linear function $f$ models temperature. $f(51)=45$ and $f(57)=63$. What is $f(-53)$?', NULL, NULL, '[{"id":"A","text":"$-264$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-271$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-267$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-53)=-267$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(51)=45$ and $f(57)=63$. What is $f(-53)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{63-45}{57-51}=3$.
**Step 2:** Point-slope: $f(-53)=3(-53-51)+(45)$.
**Step 3:** $f(-53)=-267$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-267$

**Distractor analysis:**
- **A** ($-264$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-271$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('53ee433b-ecd1-458e-8cd4-37c0aa0117f8', 'If the vehicle continues at the same rate, what is $d$ when $t=60$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+50$. At $t=52$, $d=206$.', 'passage', '[{"id":"A","text":"$227$","is_correct":false,"explanation":"Choice A ($227$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$209$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=60$."},{"id":"C","text":"$230$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(60)+50$. **Step 2:** $d=230$."},{"id":"D","text":"$180$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=60$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $50$.
**Step 2:** $d=3(60)+50=230$.
**Step 3:** Cross-check via $(60-52)×3+206=230$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $230$

**Distractor analysis:**
- **A** ($227$): Choice A ($227$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($209$): Adds slope once instead of evaluating at $t=60$.
- **D** ($180$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a3fd7a3c-5047-4aae-b47f-ce746c744f2c', 'Given $x+y=113$ and $3x-y=73$, what is $x$?', 'At an event, 113 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=73$.', 'passage', '[{"id":"A","text":"$62$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=248$. **Step 2:** $x=62$."},{"id":"B","text":"$61$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$63$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=113$ and $3x-y=73$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=113+73$ → $4x=248$.
**Step 2:** $x=62$.
**Step 3:** Back-substitute: $y=51$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $62$

**Distractor analysis:**
- **B** ($61$): One less than the solution.
- **C** ($51$): Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($63$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8bfc4511-6d69-4ec7-909c-1c254f653bb8', 'Which integer value of $x$ satisfies $3x + 5 > 193$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 193 but stay at most 209 to trigger an alert.', 'passage', '[{"id":"A","text":"$61$","is_correct":false,"explanation":"Choice A ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$62$","is_correct":false,"explanation":"Choice B ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$64$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 62.67$. **Step 2:** Smallest integer: 64."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 193$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 188$.
**Step 2:** $x > 62.67$.
**Step 3:** Among choices, $64$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $64$

**Distractor analysis:**
- **A** ($61$): Choice A ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($62$): Choice B ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($63$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1d71dedc-5218-44f2-b1eb-5dcf08f4649f', 'What is the average rate of change of $h$ from $t=47$ to $t=54$?', 'Projectile height $h(t)=2(t-50)^2+52$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(47)=70$, $h(54)=84$. **Step 2:** $\\frac{84-70}{54-47}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=47$ to $t=54$?

**Step 2 — Solve.** **Step 1:** $h(47)=2(47-50)^2+52=70$.
**Step 2:** $h(54)=2(54-50)^2+52=84$.
**Step 3:** Avg rate $=\frac{84-70}{54-47}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($84$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('14d789e0-a9a5-42a1-a7f9-f203e1c5060c', 'Which expression is equivalent to $(3x+53)^2 - (3x-53)^2$?', NULL, NULL, '[{"id":"A","text":"$636x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+53$, $v=3x-53$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$212x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2809$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+53)^2 - (3x-53)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+53$, $v=3x-53$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(106)=636x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $636x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($212x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2809$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1dcf4fb8-f666-4877-b38c-82cd312a847a', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 52 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$619$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$622$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$624$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×52×(4+10)=2184$. **Step 2:** A''s share $\\frac{4}{14}×2184=624$."},{"id":"D","text":"$2184$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×52×(4+10)=2184$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×2184=624$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $624$

**Distractor analysis:**
- **A** ($619$): Underestimates A''s share of the total.
- **B** ($622$): Close but ratio arithmetic is off.
- **D** ($2184$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9b98415e-4d44-4e7f-9ae4-e6c082c0c732', 'If the original price is $840$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$893$","is_correct":true,"explanation":"Correct (A). **Step 1:** $840×1.25=1050$. **Step 2:** $1050×0.85=893$."},{"id":"B","text":"$840$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1050$","is_correct":false,"explanation":"Choice C ($1050$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$924$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $840$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $840×(1+25/100)=1050$.
**Step 2:** Discount on new price: $1050×(1-15/100)=893$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $893$

**Distractor analysis:**
- **B** ($840$): Ignores both percent changes.
- **C** ($1050$): Choice C ($1050$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($924$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5ca3cf11-a493-4b80-a6a9-56250016ae0b', 'What is the missing score $x$?', 'Five test scores: 55, 59, 63, 67, and one score $x$ is unknown. The mean is 59.2.

| Student | Score |
| --- | --- |
| S1 | 20 |
| S2 | 23 |
| S3 | 26 |
| S4 | 29 |', 'table', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$52$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=59.2×5=296$. **Step 2:** $x=52$."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$59$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=59.2×5=296$.
**Step 2:** Known sum $=244$.
**Step 3:** $x=296-244=52$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $52$

**Distractor analysis:**
- **A** ($49$): Pulls the mean down too far.
- **C** ($55$): Too high for the given mean.
- **D** ($59$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fd4b3e0b-c830-4aa9-9681-b641d8839084', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(51,202)$ and $(59,234)$.

| Units | Cost ($) |
| --- | --- |
| 9 | 34 |
| 11 | 42 |
| 13 | 50 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{234-202}{59-51}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=234$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{234}{59}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=234$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{234}{59}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4e1960a5-0942-4602-b923-373e78b72fb5', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 56 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{61}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{60}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{61}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{60}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 60. **Step 2:** P $=\\frac{4}{60}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 60 total.
**Step 2:** Conditional probability $=\frac{4}{60}$.
**Step 3:** Do not use $\frac{5}{61}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{4}{60}$

**Distractor analysis:**
- **A** ($\frac{5}{61}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{60}$): Uses original count in numerator.
- **C** ($\frac{5}{61}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3a1a6979-2389-47b7-818e-92d25f7a65b0', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 54 by 53 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2862$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2853$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5706$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2862-3^2=2853$. **Step 2:** Volume $=2853×2=5706$."},{"id":"D","text":"$5709$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $54×53=2862$.
**Step 2:** Remove corner: $3^2=9$ → base $2853$.
**Step 3:** Volume $=2853×2=5706$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $5706$

**Distractor analysis:**
- **A** ($2862$): Forgot to subtract the removed corner.
- **B** ($2853$): Area of base only, not volume.
- **D** ($5709$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('aed2cc95-6095-406b-abe1-63529310fc7a', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 54 ft from a wall; the top is 61 ft high. The ladder length is 81 ft.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{61}{81}$

**Distractor analysis:**
- **A** ($\frac{54}{81}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{81}{61}$): Choice C ($\frac{81}{61}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{54}{61}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e03963d2-50b8-44e2-86c6-ee6f0767ba74', 'For what value of $k$ does $8(x-4)+2k = 408$ have solution $x=54$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=54$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$54$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-4)+2k = 408$ have solution $x=54$?

**Step 2 — Solve.** **Step 1:** Substitute $x=54$: $8(54-k)+2k=408$.
**Step 2:** Expand: $432-8k+2k=408$ → $432+-6k=408$.
**Step 3:** Isolate: $-6k=-24$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($54$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f6613c2a-8618-42bd-b53b-53104f8245c2', 'Linear function $f$ models temperature. $f(52)=46$ and $f(58)=70$. What is $f(-54)$?', NULL, NULL, '[{"id":"A","text":"$-374$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-382$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-378$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-54)=-378$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(52)=46$ and $f(58)=70$. What is $f(-54)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{70-46}{58-52}=4$.
**Step 2:** Point-slope: $f(-54)=4(-54-52)+(46)$.
**Step 3:** $f(-54)=-378$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-378$

**Distractor analysis:**
- **A** ($-374$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-382$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d18bbf15-9b29-41eb-92b3-c00f41d01e46', 'If the vehicle continues at the same rate, what is $d$ when $t=61$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+51$. At $t=53$, $d=263$.', 'passage', '[{"id":"A","text":"$291$","is_correct":false,"explanation":"Choice A ($291$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$267$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=61$."},{"id":"C","text":"$295$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(61)+51$. **Step 2:** $d=295$."},{"id":"D","text":"$244$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=61$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $51$.
**Step 2:** $d=4(61)+51=295$.
**Step 3:** Cross-check via $(61-53)×4+263=295$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $295$

**Distractor analysis:**
- **A** ($291$): Choice A ($291$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($267$): Adds slope once instead of evaluating at $t=61$.
- **D** ($244$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e9b694e3-721d-4c22-a52d-41ed1e978e26', 'Given $x+y=115$ and $4x-y=74$, what is $x$?', 'At an event, 115 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=74$.', 'passage', '[{"id":"A","text":"$63$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=315$. **Step 2:** $x=63$."},{"id":"B","text":"$62$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Choice C ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=115$ and $4x-y=74$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=115+74$ → $5x=315$.
**Step 2:** $x=63$.
**Step 3:** Back-substitute: $y=52$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $63$

**Distractor analysis:**
- **B** ($62$): One less than the solution.
- **C** ($52$): Choice C ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($64$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0e1228ec-d44c-4cdb-b474-cc2be623f824', 'Which integer value of $x$ satisfies $4x + 6 > 262$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 262 but stay at most 278 to trigger an alert.', 'passage', '[{"id":"A","text":"$62$","is_correct":false,"explanation":"Choice A ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$65$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 64.00$. **Step 2:** Smallest integer: 65."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 262$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 256$.
**Step 2:** $x > 64.00$.
**Step 3:** Among choices, $65$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $65$

**Distractor analysis:**
- **A** ($62$): Choice A ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b1978018-c9d4-4584-bd39-20210f911f18', 'What is the average rate of change of $h$ from $t=48$ to $t=55$?', 'Projectile height $h(t)=3(t-51)^2+53$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(48)=80$, $h(55)=101$. **Step 2:** $\\frac{101-80}{55-48}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$101$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=48$ to $t=55$?

**Step 2 — Solve.** **Step 1:** $h(48)=3(48-51)^2+53=80$.
**Step 2:** $h(55)=3(55-51)^2+53=101$.
**Step 3:** Avg rate $=\frac{101-80}{55-48}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($101$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c6448bf2-dc28-4bf0-b5b6-b8e4e0b4e395', 'Which expression is equivalent to $(4x+54)^2 - (4x-54)^2$?', NULL, NULL, '[{"id":"A","text":"$864x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+54$, $v=4x-54$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$216x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2916$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+54)^2 - (4x-54)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+54$, $v=4x-54$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(108)=864x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $864x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($216x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2916$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('eb0d0b51-6ae2-4800-8664-fd450c37bdea', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:11$ over 53 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1055$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1058$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1060$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×53×(5+11)=3392$. **Step 2:** A''s share $\\frac{5}{16}×3392=1060$."},{"id":"D","text":"$3392$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×53×(5+11)=3392$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×3392=1060$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1060$

**Distractor analysis:**
- **A** ($1055$): Underestimates A''s share of the total.
- **B** ($1058$): Close but ratio arithmetic is off.
- **D** ($3392$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
