BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e650f430-c1d2-49ed-a80a-b84037da48ad', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(13,50)$ and $(21,82)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{82-50}{21-13}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=82$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{82}{21}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=82$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{82}{21}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":90}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8f838589-095a-4b35-a3b4-560388be31de', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(14,54)$ and $(22,86)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{86-54}{22-14}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=86$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{86}{22}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=86$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{86}{22}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":91}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('995e45aa-4140-4086-bb3f-ba300e813cd3', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(15,58)$ and $(23,90)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{90-58}{23-15}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=90$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{90}{23}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=90$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{90}{23}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":92}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38e06714-cd92-4ece-969a-e2363bd49bef', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(16,62)$ and $(24,94)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{94-62}{24-16}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=94$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{94}{24}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=94$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{94}{24}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":93}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4cf7d4cf-b2bf-4fdb-a4bb-9429795c7cff', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(17,66)$ and $(25,98)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{98-66}{25-17}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=98$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{98}{25}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=98$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{98}{25}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":94}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0eb6ec9f-05a9-4411-9703-b745b4473587', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(18,70)$ and $(26,102)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{102-70}{26-18}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=102$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{102}{26}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=102$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{102}{26}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":95}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27f6d28c-18c0-4d48-ac79-3937631a3c1c', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 24 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{28}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{28}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 28. **Step 2:** P $=\\frac{4}{28}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 4 red left, 28 total.
**Step 2:** Conditional probability $=\frac{4}{28}$.
**Step 3:** Do not use $\frac{5}{29}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{29}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{28}$): Uses original count in numerator.
- **C** ($\frac{5}{29}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PRO","insert_index":96}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dd23c75-cee0-44fa-ae52-64d78caf19e0', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 25 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{6}{31}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{30}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{31}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{30}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 30. **Step 2:** P $=\\frac{5}{30}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 5 red left, 30 total.
**Step 2:** Conditional probability $=\frac{5}{30}$.
**Step 3:** Do not use $\frac{6}{31}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{31}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{30}$): Uses original count in numerator.
- **C** ($\frac{6}{31}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":97}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
