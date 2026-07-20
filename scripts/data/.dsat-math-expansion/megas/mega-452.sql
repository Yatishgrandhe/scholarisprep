BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f442ed03-4c49-4ba1-adbc-2841c58891ad', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 130° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">64°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">56°</text>
</svg>', 'figure', '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$50°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 50°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 60 = 50°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 60° + 50° = 180°.

**Step 3 — Answer D.** $50°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('33d4f3fb-e9de-485b-903a-fc12577d6801', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 140° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">70°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">46°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$40°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 40°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 64 = 40°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 64° + 40° = 180°.

**Step 3 — Answer D.** $40°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2d86e2e-0f78-4c78-9dba-3b77d8e6cfc5', 'What is $m\angle C$? Enter your answer as a number.', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 130° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">76°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">56°</text>
</svg>', 'figure', '[{"id":"SPR","text":"50°","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $m\angle C$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 48 = 50°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 48° + 50° = 180°.

**Step 3 — Answer SPR.** 50°', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60dcb7e6-ab11-47b1-996a-c34f2c356a9b', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 140° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">46°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$40°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 40°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 52 = 40°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 52° + 40° = 180°.

**Step 3 — Answer D.** $40°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a7db2d7-e854-4d41-9d04-89952571bd5e', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 108° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">36°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$82°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$72°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 72°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 56 = 72°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 56° + 72° = 180°.

**Step 3 — Answer D.** $72°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($82°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13306bee-8759-4191-9add-f993e59db3b4', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 118° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">68°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$62°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 62°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 60 = 62°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 60° + 62° = 180°.

**Step 3 — Answer D.** $62°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($72°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8948fe5d-5161-4ba6-a301-7fbc912a5dd0', 'What is $m\angle C$? Enter your answer as a number.', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 128° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">58°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">58°</text>
</svg>', 'figure', '[{"id":"SPR","text":"52°","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $m\angle C$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 64 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 64° + 52° = 180°.

**Step 3 — Answer SPR.** 52°', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a73dbd5-e165-4631-b260-709520a9c862', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 118° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">64°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">68°</text>
</svg>', 'figure', '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$62°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 62°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 48 = 62°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 48° + 62° = 180°.

**Step 3 — Answer D.** $62°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($72°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f247cc7a-5c1e-40dd-9424-9c9b84a5c4ca', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">70°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">58°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.

**Step 3 — Answer D.** $52°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d0c9972-2a93-4f94-868d-1ae1821dc11a', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 138° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">76°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">48°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$42°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 42°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 56 = 42°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 56° + 42° = 180°.

**Step 3 — Answer D.** $42°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3634cebe-e6c2-4ba8-993b-9a04afcdec1e', 'What is $m\angle C$? Enter your answer as a number.', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 148° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">38°</text>
</svg>', 'figure', '[{"id":"SPR","text":"32°","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is $m\angle C$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 60 = 32°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 60° + 32° = 180°.

**Step 3 — Answer SPR.** 32°', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36b6dae3-bc87-4a14-ae8b-a08ba5484d6c', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 116° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">28°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 64 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 64° + 64° = 180°.

**Step 3 — Answer D.** $64°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
