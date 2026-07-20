BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('921d8ed3-594e-46d2-88a7-78ae725996c0', 'How far is half the circumference? (Use $\pi \approx 3.14$.) Enter your answer as a number.', 'A circular track has radius 10 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 16">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 16</text>
</svg>', 'figure', '[{"id":"SPR","text":"31.40","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(10)=62.80$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈31.40$ m.
**Step 3:** Do not confuse with area $πr^2≈314.00$.

**Step 3 — Answer SPR.** 31.40', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f9cfbb1c-79ea-43b1-a790-9bfd6fd9a74e', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 11 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$34.54$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈69.08$. **Step 2:** Half $≈34.54$ m."},{"id":"B","text":"$379.94$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$69.08$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$34.54$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(11)=69.08$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈34.54$ m.
**Step 3:** Do not confuse with area $πr^2≈379.94$.

**Step 3 — Answer A.** $34.54$

**Distractor analysis:**
- **B** ($379.94$): Area formula $\pi r^2$, not arc length.
- **C** ($69.08$): Full circumference, not half.
- **D** ($34.54$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('80f03a5b-e76f-4c5f-a67c-85f10530035c', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 12 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 18">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 18</text>
</svg>', 'figure', '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Step 3 — Answer A.** $37.68$

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0aefca1a-9ffa-4928-a180-9212bd721533', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 13 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$40.82$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈81.64$. **Step 2:** Half $≈40.82$ m."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$81.64$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(13)=81.64$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈40.82$ m.
**Step 3:** Do not confuse with area $πr^2≈530.66$.

**Step 3 — Answer A.** $40.82$

**Distractor analysis:**
- **B** ($530.66$): Area formula $\pi r^2$, not arc length.
- **C** ($81.64$): Full circumference, not half.
- **D** ($40.82$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c41fedc-2079-4d06-8649-8f473a1241d3', 'How far is half the circumference? (Use $\pi \approx 3.14$.) Enter your answer as a number.', 'A circular track has radius 14 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 6">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 6</text>
</svg>', 'figure', '[{"id":"SPR","text":"43.96","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Step 3 — Answer SPR.** 43.96', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7df0a737-7880-458d-b7f7-f533575e8fa1', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 15 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$47.10$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈94.20$. **Step 2:** Half $≈47.10$ m."},{"id":"B","text":"$706.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$94.20$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$47.10$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(15)=94.20$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈47.10$ m.
**Step 3:** Do not confuse with area $πr^2≈706.50$.

**Step 3 — Answer A.** $47.10$

**Distractor analysis:**
- **B** ($706.50$): Area formula $\pi r^2$, not arc length.
- **C** ($94.20$): Full circumference, not half.
- **D** ($47.10$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e347bd19-4b80-4c42-85af-12ca7be7b9c9', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 16 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 8">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 8</text>
</svg>', 'figure', '[{"id":"A","text":"$50.24$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈100.48$. **Step 2:** Half $≈50.24$ m."},{"id":"B","text":"$803.84$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$100.48$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$50.24$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(16)=100.48$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈50.24$ m.
**Step 3:** Do not confuse with area $πr^2≈803.84$.

**Step 3 — Answer A.** $50.24$

**Distractor analysis:**
- **B** ($803.84$): Area formula $\pi r^2$, not arc length.
- **C** ($100.48$): Full circumference, not half.
- **D** ($50.24$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6523958-b048-4850-877f-03ddb492828e', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 17 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$53.38$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈106.76$. **Step 2:** Half $≈53.38$ m."},{"id":"B","text":"$907.46$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$106.76$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$53.38$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(17)=106.76$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈53.38$ m.
**Step 3:** Do not confuse with area $πr^2≈907.46$.

**Step 3 — Answer A.** $53.38$

**Distractor analysis:**
- **B** ($907.46$): Area formula $\pi r^2$, not arc length.
- **C** ($106.76$): Full circumference, not half.
- **D** ($53.38$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5eb966c-ccc0-4580-aada-ba42981dd464', 'How far is half the circumference? (Use $\pi \approx 3.14$.) Enter your answer as a number.', 'A circular track has radius 18 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 10">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 10</text>
</svg>', 'figure', '[{"id":"SPR","text":"56.52","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.

**Step 3 — Answer SPR.** 56.52', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ed82be4-b771-4855-a3f5-e615b36f6978', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 5 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$15.70$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈31.40$. **Step 2:** Half $≈15.70$ m."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$31.40$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(5)=31.40$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈15.70$ m.
**Step 3:** Do not confuse with area $πr^2≈78.50$.

**Step 3 — Answer A.** $15.70$

**Distractor analysis:**
- **B** ($78.50$): Area formula $\pi r^2$, not arc length.
- **C** ($31.40$): Full circumference, not half.
- **D** ($15.70$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('85a58f12-26e5-4bd9-8eb3-7f0a28c44080', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 6 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 12">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 12</text>
</svg>', 'figure', '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.

**Step 3 — Answer A.** $18.84$

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('81d9f56b-7410-4bf5-a177-6c1c60611b37', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 7 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$21.98$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈43.96$. **Step 2:** Half $≈21.98$ m."},{"id":"B","text":"$153.86$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$43.96$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$21.98$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(7)=43.96$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈21.98$ m.
**Step 3:** Do not confuse with area $πr^2≈153.86$.

**Step 3 — Answer A.** $21.98$

**Distractor analysis:**
- **B** ($153.86$): Area formula $\pi r^2$, not arc length.
- **C** ($43.96$): Full circumference, not half.
- **D** ($21.98$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"CIR","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
