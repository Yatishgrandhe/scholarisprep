BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('15c6cc19-6f14-4925-924f-9236d6b3e1bd', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 53 by 52 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2756-3^2=2747$. **Step 2:** Volume $=2747×2=5494$."},{"id":"D","text":"$5497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $53×52=2756$.
**Step 2:** Remove corner: $3^2=9$ → base $2747$.
**Step 3:** Volume $=2747×2=5494$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $5494$

**Distractor analysis:**
- **A** ($2756$): Forgot to subtract the removed corner.
- **B** ($2747$): Area of base only, not volume.
- **D** ($5497$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bde586ee-713a-47bb-869a-eb1c151f7c5a', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 130° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">80°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$50°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 50°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 48 = 50°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 48° + 50° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $50°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3855b8b9-a159-418a-91b3-d8be7baa093a', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 140° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">58°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">70°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$40°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 40°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 52 = 40°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 52° + 40° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $40°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('68eb9e9c-2fb5-4c37-af71-1f256f72544d', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 108° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">64°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">60°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$82°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$72°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 72°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 56 = 72°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 56° + 72° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $72°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($82°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('113cfdd9-d068-4eda-85cb-270a2c5647f0', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 118° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">70°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">50°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$62°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 62°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 60 = 62°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 60° + 62° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $62°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($72°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('15d3dcf8-e70a-484e-a671-17d69dd43be0', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 128° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">76°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">40°</text>
</svg>', 'figure', '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 64 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 64° + 52° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $52°$

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2155e867-6fe3-4e45-9134-8f72d7a98a62', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 118° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">50°</text>
</svg>', 'figure', '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$62°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 62°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 48 = 62°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 48° + 62° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $62°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($72°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0b735c20-4183-4a0a-9f26-e5ac989a40c0', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">40°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $52°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0e175756-b033-44ac-b209-d98a4d2bc4ae', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 138° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">72°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$42°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 42°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 56 = 42°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 56° + 42° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $42°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6aec3911-c262-4c9e-b779-61bc274bb679', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 148° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">58°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">62°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$32°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 32°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 60 = 32°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 60° + 32° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $32°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e4577efe-4035-4732-88e1-4d13a5890353', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 116° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">64°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">52°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 64 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 64° + 64° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $64°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9743b604-9ea9-4e65-84a9-f5455fe23a2b', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 106° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">70°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">62°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$84°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$74°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 74°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 48 = 74°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 48° + 74° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $74°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($84°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('90df262e-e3d2-47dc-8eca-f07915a0fa3d', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 116° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">76°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">52°</text>
</svg>', 'figure', '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 52 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 52° + 64° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $64°$

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3d1a5fea-c1c6-4901-bfb0-4645eef21368', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 126° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">42°</text>
</svg>', 'figure', '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$54°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 54°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 56 = 54°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 56° + 54° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $54°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5e2a318e-af69-483d-b39c-9cb16f74d5b9', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 136° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">32°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$44°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 44°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 60 = 44°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 60° + 44° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $44°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0e9d005f-47c0-44a1-9863-40bebe3a0a25', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 146° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">64°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$34°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 34°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 64 = 34°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 64° + 34° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $34°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2d6a3612-ab7a-4169-92d9-6eefa4803027', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 136° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">58°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">74°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$44°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 44°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 48 = 44°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 48° + 44° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $44°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4fbf593d-51fa-426e-8a99-a7b18e44d2e9', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 104° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">64°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">64°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$86°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$76°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 76°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 52 = 76°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 52° + 76° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $76°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($86°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('78e1a5c7-fe22-4d87-8f6a-eef62ac7fb1e', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 114° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">70°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">54°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$76°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$66°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 66°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 56 = 66°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 56° + 66° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $66°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($76°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c45a59e2-5819-4660-8b4d-a9865f6708ad', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 124° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">76°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">44°</text>
</svg>', 'figure', '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$56°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 56°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 60 = 56°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 60° + 56° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $56°$

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e512e381-6600-4067-8f09-91bf9b4365f4', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 134° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">34°</text>
</svg>', 'figure', '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 64 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 64° + 46° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $46°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e9a850ab-ee7c-4f52-ab42-53cda123c646', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 100° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">44°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$90°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$80°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 80°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 48 = 80°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 48° + 80° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $80°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($90°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1d18ddb9-916a-468f-b4e9-2ddc3c77a447', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 110° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">76°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$80°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$70°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 70°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 52 = 70°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 52° + 70° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $70°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($80°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f4f743a4-6138-474c-b2e5-9138c8883aa1', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 120° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">58°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">66°</text>
</svg>', 'figure', '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$70°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$60°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 60°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 56 = 60°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 56° + 60° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $60°$

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($70°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('344ab2e9-be60-40a8-bbff-dd1fc7e60e42', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 130° with side $AB$.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $50°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('39b7e839-1c9d-405b-868f-7e96cdfd7011', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 140° with side $AB$.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $40°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0e5ae46a-0884-4a35-9f5f-46c7fb210216', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 124° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">50°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$56°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 56°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 48 = 56°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 48° + 56° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $56°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('915bf8c3-3a73-43d2-b137-28693935a4e0', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 134° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">40°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 52 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 52° + 46° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $46°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0ea3f7c9-896a-43dd-b1a7-1d1b88fe4cbd', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 144° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">72°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$36°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 36°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 56 = 36°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 56° + 36° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $36°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3d693019-5d75-4ff0-9532-a6c9b7722d25', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 112° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">58°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">62°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$78°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$68°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 68°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 60 = 68°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 60° + 68° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $68°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($78°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d2071722-3596-42f6-ad79-26ef264b97eb', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 122° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">64°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">52°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$68°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$58°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 58°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 64 = 58°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 64° + 58° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $58°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($68°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ddd24240-6664-48e0-af3b-a9b421d5bd35', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 112° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">70°</text>
  <text x="158" y="118" font-size="11" fill="#374151">48°</text>
  <text x="102" y="72" font-size="11" fill="#374151">62°</text>
</svg>', 'figure', '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$78°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$68°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 68°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 48 = 68°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 48° + 68° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $68°$

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($78°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('11d54dec-4ce7-42a0-a932-c904dc182ca6', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 122° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">76°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">52°</text>
</svg>', 'figure', '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$68°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$58°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 58°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 52 = 58°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 52° + 58° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $58°$

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($68°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0d4345b2-6a1f-42fa-aaec-e536dccba72c', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 132° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">42°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$48°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 48°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 56 = 48°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 56° + 48° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $48°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fff42920-c3c6-4ccc-8251-2ca2956cdf42', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 142° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">32°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$48°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$38°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 38°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 60 = 38°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 60° + 38° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $38°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($48°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9d3ccaa6-3630-404a-b06a-3caf63cd1a18', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 152° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">64°</text>
  <text x="102" y="72" font-size="11" fill="#374151">64°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$38°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$28°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 28°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 64 = 28°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 64° + 28° = 180°.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $28°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($38°$): Too large for the triangle angle sum.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN_G","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3fbb4540-960c-43a1-ad8e-df033cd3b958', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 6 ft from a wall; the top is 13 ft high. The ladder length is 14 ft.

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
- **D** ($\frac{6}{13}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f4e4d83c-17cb-4dc8-a8d7-41a5de8bb0aa', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 7 ft from a wall; the top is 14 ft high. The ladder length is 16 ft.

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
- **D** ($\frac{7}{14}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('278e7ce3-c109-419c-bb86-c72a3cc50b50', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 8 ft from a wall; the top is 15 ft high. The ladder length is 17 ft.

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
- **D** ($\frac{8}{15}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d7bf6e0f-e2c4-4abd-85ad-bfb355a1d834', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 9 ft from a wall; the top is 16 ft high. The ladder length is 18 ft.

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
- **D** ($\frac{9}{16}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
