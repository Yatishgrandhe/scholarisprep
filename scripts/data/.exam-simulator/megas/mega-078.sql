BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58a576b2-0889-422a-ab45-e1159461bb7d', 'How many cubic inches does the storage bin hold?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 16 by 15">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">16 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">15 in</text>
</svg>

A rectangular sheet is 16 by 15 inches. A square corner of side 3 inches is removed, then the remainder is folded into a storage bin 2 inches tall.', 'figure', '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$462$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $240-3^2=231$. **Step 2:** Volume $=231×2=462$."},{"id":"D","text":"$465$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $16×15=240$.
**Step 2:** Remove corner: $3^2=9$ → base $231$.
**Step 3:** Volume $=231×2=462$ cu in.

**Step 3 — Answer C.** $462$

**Distractor analysis:**
- **A** ($240$): Forgot to subtract the removed corner.
- **B** ($231$): Area of base only, not volume.
- **D** ($465$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":15,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b40b396-7f78-4b16-a3a5-3e636ad26416', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 138° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">36°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$42°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 42°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 56 = 42°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 56° + 42° = 180°.

**Step 3 — Answer D.** $42°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":16,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cc6b47ba-e062-49a2-8df2-9ff360df3b00', 'What is $\sin\theta$ where $\theta$ is the angle between the guy wire and the ground?', 'A guy wire''s foot is 50 ft from a wall; the top is 57 ft high. The guy wire length is 76 ft.

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

**Step 3 — Answer B.** $\frac{57}{76}$

**Distractor analysis:**
- **A** ($\frac{50}{76}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{76}{57}$): Choice C ($\frac{76}{57}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{50}{57}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":17,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('faa68036-a11e-4f1d-8bb6-a91f803336d6', 'How far is half the way around a Ferris wheel? (Use $\pi \approx 3.14$.)', 'A circular track has radius 15 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$47.10$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈94.20$. **Step 2:** Half $≈47.10$ m."},{"id":"B","text":"$706.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$94.20$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$47.10$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(15)=94.20$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈47.10$ m.
**Step 3:** Do not confuse with area $πr^2≈706.50$.

**Step 3 — Answer A.** $47.10$

**Distractor analysis:**
- **B** ($706.50$): Area formula $\pi r^2$, not arc length.
- **C** ($94.20$): Full circumference, not half.
- **D** ($47.10$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":18,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17b111da-1596-4bcf-88fb-7e1d708ed96a', 'For what value of $k$ does $7(x-3)+2k = 146$ have solution $x=23$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=23$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$23$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-3)+2k = 146$ have solution $x=23$?

**Step 2 — Solve.** **Step 1:** Substitute $x=23$: $7(23-k)+2k=146$.
**Step 2:** Expand: $161-7k+2k=146$ → $161+-5k=146$.
**Step 3:** Isolate: $-5k=-15$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($23$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":19,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f54219d-5762-4f25-b374-e223098e36b0', 'Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?', '', NULL, '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-362$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-358$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-40)=-358$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{62-32}{44-38}=5$.
**Step 2:** Point-slope: $f(-40)=5(-40-38)+(32)$.
**Step 3:** $f(-40)=-358$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-358$

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-362$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":20,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b0dbbd6-fc4d-4ae9-8317-e5383c9bdcb1', 'If the passenger ferry continues at the same rate, what is $d$ when $t=64$?', 'A passenger ferry''s distance $d$ (miles) after $t$ hours is $d=3t+54$. At $t=56$, $d=222$.', 'passage', '[{"id":"A","text":"$243$","is_correct":false,"explanation":"Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=64$."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(64)+54$. **Step 2:** $d=246$."},{"id":"D","text":"$192$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=64$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $54$.
**Step 2:** $d=3(64)+54=246$.
**Step 3:** Cross-check via $(64-56)×3+222=246$.

**Step 3 — Answer C.** $246$

**Distractor analysis:**
- **A** ($243$): Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($225$): Adds slope once instead of evaluating at $t=64$.
- **D** ($192$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":21,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('380bf4c9-0426-4e64-b5d2-e930bd5b3521', 'As used in the passage, "tenuous" most nearly means', 'The novelist writing in passage 5810902 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the tenuous is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"to weaken","is_correct":false,"explanation":"[Collocation Decoy] \"to weaken\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to support or strengthen","is_correct":true,"explanation":"Correct (B). \"bolster\" fits \"to support or strengthen\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to hide","is_correct":false,"explanation":"[Flat Literal] \"to hide\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to erase","is_correct":false,"explanation":"[Tone Inversion] \"to erase\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:measurement}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to support or strengthen.

Distractor analysis:
- A: [Collocation Decoy] "to weaken" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "to hide" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "to erase" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":0,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('792e2c0f-1ce8-42b2-9b41-2b7eb02308de', 'Which choice best describes the overall structure of the passage?', 'Historians examining archive 5811039 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"The passage is organized to explain a cause-and-effect relationship supported by field evidence.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to explain a cause-and-effect relationship supported by field evidence."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"[Partial Scope] The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"[Narrative Speculation] The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"[Structural Inversion] No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:cycles,}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to explain a cause-and-effect relationship supported by field evidence..

Distractor analysis:
- B: [Partial Scope] The passage connects ideas across paragraphs; it is not a random list.
- C: [Narrative Speculation] The passage presents research findings rather than rejecting inquiry.
- D: [Structural Inversion] No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', 'TSP', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":1,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c5533f7f-dc16-4c09-adbe-0d475f19a61e', 'Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?', 'Text 1
In 2014, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.

Text 2
A 2018 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.', 'passage', '[{"id":"A","text":"By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.","is_correct":false,"explanation":"[Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing."},{"id":"B","text":"By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for.","is_correct":true,"explanation":"Correct (B). Text 2 documents outcomes outside Text 1''s metric, directly challenging its exclusivity."},{"id":"C","text":"By claiming the phenomenon described in both texts does not exist in any community.","is_correct":false,"explanation":"[Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence."},{"id":"D","text":"By rejecting all empirical methods regardless of the data presented in Text 2.","is_correct":false,"explanation":"[Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically."}]'::jsonb, 'B', 'Step 1 — Summarize each text
Focus on {{yellow:performance,}} in the passage. The cross text response item asks you to summarize each text before comparing choices.

Step 2 — Compare the perspectives
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Choose the best response
Choice B is correct: By demonstrating benefits or evidence in Text 2 that Text 1''s framework fails to account for..

Distractor analysis:
- A: [Mutual Consensus Decoy] Text 2 widens the benefit model; its author would not fully endorse Text 1''s narrow framing.
- C: [Scope Creep] Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.
- D: [Out-of-Bound Contrast] Text 2 is empirical research; it does not dismiss research categorically.', NULL, 'Craft and Structure', 'Cross-Text Connections', 'reading_writing', 'craft', 'CTC', 'CTC', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":2,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e902d7b-0213-423b-a60a-30e6aa3baa4d', 'According to the passage, which statement is best supported by the text?', 'The novelist writing in passage 5811313 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 6 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.","is_correct":true,"explanation":"Correct (A). The passage centers on grazing, algae control, and coral recruitment as interconnected processes."},{"id":"B","text":"Reefs never recover once algae appear, regardless of grazing or recruitment.","is_correct":false,"explanation":"[Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear."},{"id":"C","text":"The passage rejects scientific study of reefs in favor of anecdotal fishing reports.","is_correct":false,"explanation":"[Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods."},{"id":"D","text":"Coral larvae cannot survive on any hard surface mentioned in marine research.","is_correct":false,"explanation":"[Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it."}]'::jsonb, 'A', 'Step 1 — Identify the central claim
Focus on {{yellow:measurement}} in the passage. The main idea item asks you to identify the central claim before comparing choices.

Step 2 — Eliminate scope errors
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the main idea
Choice A is correct: Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement..

Distractor analysis:
- B: [Over-Extrapolation] The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.
- C: [Reciprocal Distractor] The passage cites research and field surveys; it does not reject scientific methods.
- D: [Retrospective Detail] The passage states larvae settle on bare rock when grazing permits it.', NULL, 'Information and Ideas', 'Central Ideas and Details', 'reading_writing', 'information', 'CID', 'CID', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":3,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('352f078a-a426-4bbf-a91d-61c466ec194a', 'Part A: Which choice best states the author''s main claim about reef recovery?

Part B: Which quotation from the passage best supports the answer to Part A?', 'Historians examining archive 5811450 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 3 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"\"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology.\"","is_correct":false,"explanation":"[Unconditional Support Decoy] This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory."},{"id":"B","text":"\"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.\"","is_correct":true,"explanation":"Correct (B). This quotation directly states the functional requirement claim that Part A identifies as central."},{"id":"C","text":"\"Water temperature and salinity remained stable at every monitored site throughout the study period.\"","is_correct":false,"explanation":"[Irrelevant Variable] Temperature stability is supporting context, not the main claim about herbivorous fish."},{"id":"D","text":"\"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year.\"","is_correct":false,"explanation":"[Inverse Support] Publication venue is irrelevant to the author''s argument about reef recovery mechanisms."}]'::jsonb, 'B', 'Step 1 — State the claim
Focus on {{yellow:cycles,}} in the passage. The textual evidence item asks you to state the claim before comparing choices.

Step 2 — Find supporting language
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best evidence
Choice B is correct: "The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events.".

Distractor analysis:
- A: [Unconditional Support Decoy] This sentence discusses policy briefs but does not state the author''s main functional claim about herbivory.
- C: [Irrelevant Variable] Temperature stability is supporting context, not the main claim about herbivorous fish.
- D: [Inverse Support] Publication venue is irrelevant to the author''s argument about reef recovery mechanisms.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":4,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d06e17e0-9876-4474-b68e-5230dfa6dfad', 'Which choice best describes data from the table that support the researchers'' conclusion in the passage?', 'A longitudinal analysis of dataset 5811587 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly

The table summarizes results from the study described above.

| Quarter | Units sold | Return rate % | Margin % |
| --- | --- | --- | --- |
| 2018 | 29057985 | 79 | 5 |
| 2019 | 29058000 | 63 | 6 |
| 2020 | 29058015 | 67 | 7 |
| 2021 | 29058030 | 71 | 8 |', 'passage', '[{"id":"A","text":"The table shows declining sample sizes, contradicting the passage.","is_correct":false,"explanation":"[Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage."},{"id":"B","text":"Every row lists identical means, proving the effect is constant across years.","is_correct":false,"explanation":"[Under-Specified Support] Means are not identical across rows."},{"id":"C","text":"Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement.","is_correct":true,"explanation":"Correct (C). The trend in means supports the passage''s claim of improvement over time."},{"id":"D","text":"The table replaces the passage as the only source of evidence.","is_correct":false,"explanation":"[True-But-Irrelevant] Both passage and table must be used together."}]'::jsonb, 'C', 'Step 1 — Read the table
Focus on {{yellow:comparing}} in the passage. The quantitative table item asks you to read the table before comparing choices.

Step 2 — Connect data to the claim
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select supported conclusion
Choice C is correct: Later rows show higher mean scores alongside moderate variability, aligning with the passage''s reported improvement..

Distractor analysis:
- A: [Data Misread] Sample sizes vary but do not decline monotonically in a way that negates the passage.
- B: [Under-Specified Support] Means are not identical across rows.
- D: [True-But-Irrelevant] Both passage and table must be used together.', NULL, 'Information and Ideas', 'Command of Evidence', 'reading_writing', 'information', 'COE', 'COE', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":5,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e4b7215-6b09-4798-af00-2b0844846a44', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'The novelist writing in passage 5811724 emphasizes that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Identify what is stated
Focus on {{yellow:intervention}} in the passage. The general item asks you to identify what is stated before comparing choices.

Step 2 — Draw a bounded inference
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the inference
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":6,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a7ff5cd-1683-46e9-a3ba-66591b6b6f86', 'Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?', 'Historians examining archive 5811861 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 4 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that moderate how quickly any intervention can scale. Follow-up work will test whether the pattern holds across additional sites and populations.', 'passage', '[{"id":"A","text":"The researchers would abandon the project because initial results contradicted every hypothesis they had registered.","is_correct":false,"explanation":"[Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project."},{"id":"B","text":"Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.","is_correct":false,"explanation":"[Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive."},{"id":"C","text":"A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.","is_correct":true,"explanation":"Correct (C). Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage''s tone."},{"id":"D","text":"The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.","is_correct":false,"explanation":"[Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay."}]'::jsonb, 'C', 'Step 1 — Note current findings
Focus on {{yellow:intervention}} in the passage. The prediction item asks you to note current findings before comparing choices.

Step 2 — Project a likely next step
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the forecast
Choice C is correct: A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge..

Distractor analysis:
- A: [Speculative Narrative] The passage reports published findings; it does not suggest abandoning the project.
- B: [Equivocation Error] The authors explicitly call for replication rather than treating one pilot as definitive.
- D: [Reverse Conditional] The passage urges intervention-oriented interpretation, not indefinite policy delay.', NULL, 'Information and Ideas', 'Inferences', 'reading_writing', 'information', 'INF', 'INF', 'medium'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"rw_module_1","slot":7,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
