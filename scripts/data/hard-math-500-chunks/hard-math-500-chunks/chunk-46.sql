BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('42f204c6-65b4-4f3f-94dd-e3b0b9590e56', 'If the vehicle continues at the same rate, what is $d$ when $t=70$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+60$. At $t=62$, $d=370$.', NULL, '[{"id":"A","text":"$405$","is_correct":false,"explanation":"Choice A ($405$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$375$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=70$."},{"id":"C","text":"$410$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(70)+60$. **Step 2:** $d=410$."},{"id":"D","text":"$350$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $5$ mi/h with intercept $60$.
**Step 2:** $d=5(70)+60=410$.
**Step 3:** Cross-check via $(70-62)×5+370=410$.

**Distractor analysis:**
- **A** ($405$): Choice A ($405$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($375$): Adds slope once instead of evaluating at $t=70$.
- **D** ($350$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":18}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c0729e05-e3ff-4058-bebf-045444498c6e', 'If the vehicle continues at the same rate, what is $d$ when $t=71$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+61$. At $t=63$, $d=439$.', NULL, '[{"id":"A","text":"$481$","is_correct":false,"explanation":"Choice A ($481$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$445$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=71$."},{"id":"C","text":"$487$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(71)+61$. **Step 2:** $d=487$."},{"id":"D","text":"$426$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $6$ mi/h with intercept $61$.
**Step 2:** $d=6(71)+61=487$.
**Step 3:** Cross-check via $(71-63)×6+439=487$.

**Distractor analysis:**
- **A** ($481$): Choice A ($481$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($445$): Adds slope once instead of evaluating at $t=71$.
- **D** ($426$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":19}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59a47dcb-f5ca-4cb0-873a-be636c311bb0', 'If the vehicle continues at the same rate, what is $d$ when $t=12$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+2$. At $t=4$, $d=14$.', NULL, '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=12$."},{"id":"C","text":"$38$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(12)+2$. **Step 2:** $d=38$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $3$ mi/h with intercept $2$.
**Step 2:** $d=3(12)+2=38$.
**Step 3:** Cross-check via $(12-4)×3+14=38$.

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Adds slope once instead of evaluating at $t=12$.
- **D** ($36$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":20}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50b28121-edd7-400b-b90f-90f7817b59bf', 'If the vehicle continues at the same rate, what is $d$ when $t=13$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+3$. At $t=5$, $d=23$.', NULL, '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=13$."},{"id":"C","text":"$55$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(13)+3$. **Step 2:** $d=55$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $4$ mi/h with intercept $3$.
**Step 2:** $d=4(13)+3=55$.
**Step 3:** Cross-check via $(13-5)×4+23=55$.

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Adds slope once instead of evaluating at $t=13$.
- **D** ($52$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":21}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af30238e-d7b6-4e03-9047-db55c3878ea7', 'If the vehicle continues at the same rate, what is $d$ when $t=14$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+4$. At $t=6$, $d=34$.', NULL, '[{"id":"A","text":"$69$","is_correct":false,"explanation":"Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=14$."},{"id":"C","text":"$74$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(14)+4$. **Step 2:** $d=74$."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $5$ mi/h with intercept $4$.
**Step 2:** $d=5(14)+4=74$.
**Step 3:** Cross-check via $(14-6)×5+34=74$.

**Distractor analysis:**
- **A** ($69$): Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Adds slope once instead of evaluating at $t=14$.
- **D** ($70$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":22}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c897f985-d3f5-4d3d-9ec6-12b96fbfde4e', 'If the vehicle continues at the same rate, what is $d$ when $t=15$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+5$. At $t=7$, $d=47$.', NULL, '[{"id":"A","text":"$89$","is_correct":false,"explanation":"Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=15$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(15)+5$. **Step 2:** $d=95$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $6$ mi/h with intercept $5$.
**Step 2:** $d=6(15)+5=95$.
**Step 3:** Cross-check via $(15-7)×6+47=95$.

**Distractor analysis:**
- **A** ($89$): Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Adds slope once instead of evaluating at $t=15$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"LEQ","insert_index":23}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('934cac3b-21d3-43fe-be27-a2ede33c8499', 'Given $x+y=20$ and $3x-y=19$, what is $x$?', 'At an event, 20 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=19$.', NULL, '[{"id":"A","text":"$13$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=52$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=20+19$ → $4x=52$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($12$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":24}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0bf0247f-9d7c-435a-b6b3-cb5388828af0', 'Given $x+y=22$ and $4x-y=20$, what is $x$?', 'At an event, 22 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=20$.', NULL, '[{"id":"A","text":"$14$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=70$. **Step 2:** $x=14$."},{"id":"B","text":"$13$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$15$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=22+20$ → $5x=70$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($13$): One less than the solution.
- **C** ($8$): Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":25}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
