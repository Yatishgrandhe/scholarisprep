BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c8c6827-3beb-487b-9c49-76cdaa46fca4', 'Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?', NULL, NULL, '[{"id":"A","text":"$-488$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-497$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-493$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-55)=-493$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{77-47}{59-53}=5$.
**Step 2:** Point-slope: $f(-55)=5(-55-53)+(47)$.
**Step 3:** $f(-55)=-493$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-488$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-497$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":10}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97509d28-d3a6-42e2-94e0-6031f0020fc3', 'Linear function $f$ models temperature. $f(54)=48$ and $f(60)=66$. What is $f(-56)$?', NULL, NULL, '[{"id":"A","text":"$-279$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-286$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-282$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-56)=-282$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{66-48}{60-54}=3$.
**Step 2:** Point-slope: $f(-56)=3(-56-54)+(48)$.
**Step 3:** $f(-56)=-282$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-279$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-286$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":11}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7ed08d2-01f9-401a-9f59-26faa860fbdc', 'Linear function $f$ models temperature. $f(55)=49$ and $f(61)=73$. What is $f(-57)$?', NULL, NULL, '[{"id":"A","text":"$-395$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-403$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-399$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-57)=-399$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{73-49}{61-55}=4$.
**Step 2:** Point-slope: $f(-57)=4(-57-55)+(49)$.
**Step 3:** $f(-57)=-399$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-395$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-403$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":12}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db70d6a2-446f-4932-b51c-23ab7c303c37', 'Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$?', NULL, NULL, '[{"id":"A","text":"$-515$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-524$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-520$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-58)=-520$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{80-50}{62-56}=5$.
**Step 2:** Point-slope: $f(-58)=5(-58-56)+(50)$.
**Step 3:** $f(-58)=-520$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-515$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-524$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":13}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('752b3e83-767c-473c-b2ba-f384ac8590df', 'Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?', NULL, NULL, '[{"id":"A","text":"$-294$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-301$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-297$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-59)=-297$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{69-51}{63-57}=3$.
**Step 2:** Point-slope: $f(-59)=3(-59-57)+(51)$.
**Step 3:** $f(-59)=-297$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-294$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-301$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":14}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f07ad8d4-e62a-4517-8f2b-0e8f13bc1681', 'Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?', NULL, NULL, '[{"id":"A","text":"$-416$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-424$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-420$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-60)=-420$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{76-52}{64-58}=4$.
**Step 2:** Point-slope: $f(-60)=4(-60-58)+(52)$.
**Step 3:** $f(-60)=-420$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-416$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-424$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":15}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eac36b9b-5cf7-49f0-9ed8-494f596582cc', 'If the vehicle continues at the same rate, what is $d$ when $t=68$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+58$. At $t=60$, $d=238$.', NULL, '[{"id":"A","text":"$259$","is_correct":false,"explanation":"Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$241$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=68$."},{"id":"C","text":"$262$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(68)+58$. **Step 2:** $d=262$."},{"id":"D","text":"$204$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $3$ mi/h with intercept $58$.
**Step 2:** $d=3(68)+58=262$.
**Step 3:** Cross-check via $(68-60)×3+238=262$.

**Distractor analysis:**
- **A** ($259$): Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($241$): Adds slope once instead of evaluating at $t=68$.
- **D** ($204$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":16}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba33e465-4041-4f6d-bd9e-088d1c3f3824', 'If the vehicle continues at the same rate, what is $d$ when $t=69$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+59$. At $t=61$, $d=303$.', NULL, '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Choice A ($331$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$307$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=69$."},{"id":"C","text":"$335$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(69)+59$. **Step 2:** $d=335$."},{"id":"D","text":"$276$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $4$ mi/h with intercept $59$.
**Step 2:** $d=4(69)+59=335$.
**Step 3:** Cross-check via $(69-61)×4+303=335$.

**Distractor analysis:**
- **A** ($331$): Choice A ($331$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($307$): Adds slope once instead of evaluating at $t=69$.
- **D** ($276$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":17}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
