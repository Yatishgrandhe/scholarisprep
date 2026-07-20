BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc7665ba-66f4-4196-8142-363e861f0ebc', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 48 by 47 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2256$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2247$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2256-3^2=2247$. **Step 2:** Volume $=2247×2=4494$."},{"id":"D","text":"$4497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $48×47=2256$.
**Step 2:** Remove corner: $3^2=9$ → base $2247$.
**Step 3:** Volume $=2247×2=4494$ cu in.

**Distractor analysis:**
- **A** ($2256$): Forgot to subtract the removed corner.
- **B** ($2247$): Area of base only, not volume.
- **D** ($4497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":122}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84fbe56f-3ddb-4255-b7e7-f12fcb95e047', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 49 by 48 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2352$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2343$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4686$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2352-3^2=2343$. **Step 2:** Volume $=2343×2=4686$."},{"id":"D","text":"$4689$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $49×48=2352$.
**Step 2:** Remove corner: $3^2=9$ → base $2343$.
**Step 3:** Volume $=2343×2=4686$ cu in.

**Distractor analysis:**
- **A** ($2352$): Forgot to subtract the removed corner.
- **B** ($2343$): Area of base only, not volume.
- **D** ($4689$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":123}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ad24c533-1615-481f-aad6-285289e9abd8', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 50 by 49 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2450$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2441$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4882$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2450-3^2=2441$. **Step 2:** Volume $=2441×2=4882$."},{"id":"D","text":"$4885$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $50×49=2450$.
**Step 2:** Remove corner: $3^2=9$ → base $2441$.
**Step 3:** Volume $=2441×2=4882$ cu in.

**Distractor analysis:**
- **A** ($2450$): Forgot to subtract the removed corner.
- **B** ($2441$): Area of base only, not volume.
- **D** ($4885$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":124}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5d37792-11e3-45b8-806b-f5802bf1aaff', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 51 by 50 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2550$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2541$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5082$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2550-3^2=2541$. **Step 2:** Volume $=2541×2=5082$."},{"id":"D","text":"$5085$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $51×50=2550$.
**Step 2:** Remove corner: $3^2=9$ → base $2541$.
**Step 3:** Volume $=2541×2=5082$ cu in.

**Distractor analysis:**
- **A** ($2550$): Forgot to subtract the removed corner.
- **B** ($2541$): Area of base only, not volume.
- **D** ($5085$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":125}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3087e9ee-297e-465d-9676-654a49686a50', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 52 by 51 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2652$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2643$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5286$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2652-3^2=2643$. **Step 2:** Volume $=2643×2=5286$."},{"id":"D","text":"$5289$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $52×51=2652$.
**Step 2:** Remove corner: $3^2=9$ → base $2643$.
**Step 3:** Volume $=2643×2=5286$ cu in.

**Distractor analysis:**
- **A** ($2652$): Forgot to subtract the removed corner.
- **B** ($2643$): Area of base only, not volume.
- **D** ($5289$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":126}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c521aea-d2b2-438b-a7d8-b3c67ced9ff1', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 53 by 52 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2756-3^2=2747$. **Step 2:** Volume $=2747×2=5494$."},{"id":"D","text":"$5497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $53×52=2756$.
**Step 2:** Remove corner: $3^2=9$ → base $2747$.
**Step 3:** Volume $=2747×2=5494$ cu in.

**Distractor analysis:**
- **A** ($2756$): Forgot to subtract the removed corner.
- **B** ($2747$): Area of base only, not volume.
- **D** ($5497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":127}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('68341ecf-e14c-4d2f-8dcb-f3aed58ec6e4', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 148° with side $AB$.', NULL, '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$32°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 32°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 60 = 32°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 60° + 32° = 180°.

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":128}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e57c5a12-129b-425a-ac58-b9eb5f3a432d', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 116° with side $AB$.', NULL, '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 64 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 64° + 64° = 180°.

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":129}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
