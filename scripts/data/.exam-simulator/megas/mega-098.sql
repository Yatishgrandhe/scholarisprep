BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('738b451f-fe99-4d6e-ac6b-8266cece246c', 'If the cyclist continues at the same rate, what is $d$ when $t=24$?', 'A cyclist''s distance $d$ (miles) after $t$ hours is $d=3t+14$. At $t=16$, $d=62$.', 'passage', '[{"id":"A","text":"$83$","is_correct":false,"explanation":"Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=24$."},{"id":"C","text":"$86$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(24)+14$. **Step 2:** $d=86$."},{"id":"D","text":"$72$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=24$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $14$.
**Step 2:** $d=3(24)+14=86$.
**Step 3:** Cross-check via $(24-16)×3+62=86$.

**Step 3 — Answer C.** $86$

**Distractor analysis:**
- **A** ($83$): Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Adds slope once instead of evaluating at $t=24$.
- **D** ($72$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_2_hard","slot":21,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
