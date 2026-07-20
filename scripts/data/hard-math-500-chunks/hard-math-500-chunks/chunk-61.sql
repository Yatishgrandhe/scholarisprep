BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a44aa014-5b00-45ab-9e77-8b05e39ca45e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 64 ft from a wall; the top is 71 ft high. The ladder length is 96 ft.', NULL, '[{"id":"A","text":"$\\frac{64}{96}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{71}{96}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=71$, hypotenuse $=96$. **Step 2:** $\\sin\\theta=\\frac{71}{96}≈0.740$."},{"id":"C","text":"$\\frac{96}{71}$","is_correct":false,"explanation":"Choice C ($\\frac{96}{71}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{64}{71}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=71$, hypotenuse $=96$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{71}{96}$.
**Step 3:** Pythagorean check: $64^2+71^2=96^2$.
**Step 4:** $\cos\theta=\frac{64}{96}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{64}{96}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{96}{71}$): Choice C ($\frac{96}{71}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{64}{71}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":138}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6acf10e4-717c-4a19-aafb-906284b73edf', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 65 ft from a wall; the top is 72 ft high. The ladder length is 97 ft.', NULL, '[{"id":"A","text":"$\\frac{65}{97}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{72}{97}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=72$, hypotenuse $=97$. **Step 2:** $\\sin\\theta=\\frac{72}{97}≈0.742$."},{"id":"C","text":"$\\frac{97}{72}$","is_correct":false,"explanation":"Choice C ($\\frac{97}{72}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{65}{72}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=72$, hypotenuse $=97$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{72}{97}$.
**Step 3:** Pythagorean check: $65^2+72^2=97^2$.
**Step 4:** $\cos\theta=\frac{65}{97}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{65}{97}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{97}{72}$): Choice C ($\frac{97}{72}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{65}{72}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":139}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('260785fa-d651-4422-93be-984f3315c130', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 6 ft from a wall; the top is 13 ft high. The ladder length is 14 ft.', NULL, '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{13}{14}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=13$, hypotenuse $=14$. **Step 2:** $\\sin\\theta=\\frac{13}{14}≈0.929$."},{"id":"C","text":"$\\frac{14}{13}$","is_correct":false,"explanation":"Choice C ($\\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=13$, hypotenuse $=14$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{13}{14}$.
**Step 3:** Pythagorean check: $6^2+13^2=14^2$.
**Step 4:** $\cos\theta=\frac{6}{14}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{6}{14}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{14}{13}$): Choice C ($\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{6}{13}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":140}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a4dd268-851c-43ce-bade-d03e541f9474', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 7 ft from a wall; the top is 14 ft high. The ladder length is 16 ft.', NULL, '[{"id":"A","text":"$\\frac{7}{16}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{14}{16}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=14$, hypotenuse $=16$. **Step 2:** $\\sin\\theta=\\frac{14}{16}≈0.875$."},{"id":"C","text":"$\\frac{16}{14}$","is_correct":false,"explanation":"Choice C ($\\frac{16}{14}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{7}{14}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=14$, hypotenuse $=16$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{14}{16}$.
**Step 3:** Pythagorean check: $7^2+14^2=16^2$.
**Step 4:** $\cos\theta=\frac{7}{16}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{7}{16}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{16}{14}$): Choice C ($\frac{16}{14}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{7}{14}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":141}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a83a7747-2e39-4d66-acfa-cc7f67fb9b55', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 8 ft from a wall; the top is 15 ft high. The ladder length is 17 ft.', NULL, '[{"id":"A","text":"$\\frac{8}{17}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{15}{17}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=15$, hypotenuse $=17$. **Step 2:** $\\sin\\theta=\\frac{15}{17}≈0.882$."},{"id":"C","text":"$\\frac{17}{15}$","is_correct":false,"explanation":"Choice C ($\\frac{17}{15}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{8}{15}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=15$, hypotenuse $=17$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{15}{17}$.
**Step 3:** Pythagorean check: $8^2+15^2=17^2$.
**Step 4:** $\cos\theta=\frac{8}{17}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{8}{17}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{17}{15}$): Choice C ($\frac{17}{15}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{8}{15}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":142}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9acb6a27-604c-4f6f-8d1c-3f6f4dbf918c', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 8 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":143}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('098d4242-15f5-4003-96e2-670d0ef491d4', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 9 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$28.26$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈56.52$. **Step 2:** Half $≈28.26$ m."},{"id":"B","text":"$254.34$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$56.52$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$28.26$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(9)=56.52$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈28.26$ m.
**Step 3:** Do not confuse with area $πr^2≈254.34$.

**Distractor analysis:**
- **B** ($254.34$): Area formula $\pi r^2$, not arc length.
- **C** ($56.52$): Full circumference, not half.
- **D** ($28.26$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":144}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0611fc8-3639-4754-beaa-5f82a4e4d801', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 10 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈62.80$. **Step 2:** Half $≈31.40$ m."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$62.80$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(10)=62.80$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈31.40$ m.
**Step 3:** Do not confuse with area $πr^2≈314.00$.

**Distractor analysis:**
- **B** ($314.00$): Area formula $\pi r^2$, not arc length.
- **C** ($62.80$): Full circumference, not half.
- **D** ($31.40$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":145}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
