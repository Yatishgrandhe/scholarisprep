BEGIN;
UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $5:9$ over 21 hours at 5 tasks/hour combined.',
  options = '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×21×(5+9)=1470$. **Step 2:** A''s share $\\frac{5}{14}×1470=525$."},{"id":"D","text":"$1470$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=5×21×(5+9)=1470$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×1470=525$ tasks.

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1470$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"799103fa-ac05-4307-ac28-187d3b94b596"}'::jsonb,
  updated_at = now()
WHERE id = '799103fa-ac05-4307-ac28-187d3b94b596';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $7:8$ over 55 hours at 3 tasks/hour combined.',
  options = '[{"id":"A","text":"$1150$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1153$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1155$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×55×(7+8)=2475$. **Step 2:** A''s share $\\frac{7}{15}×2475=1155$."},{"id":"D","text":"$2475$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=3×55×(7+8)=2475$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2475=1155$ tasks.

**Distractor analysis:**
- **A** ($1150$): Underestimates A''s share of the total.
- **B** ($1153$): Close but ratio arithmetic is off.
- **D** ($2475$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8d54f8a3-72d4-44c1-92e0-ebaf85accbe7"}'::jsonb,
  updated_at = now()
WHERE id = '8d54f8a3-72d4-44c1-92e0-ebaf85accbe7';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $5:9$ over 41 hours at 4 tasks/hour combined.',
  options = '[{"id":"A","text":"$815$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$818$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$820$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×41×(5+9)=2296$. **Step 2:** A''s share $\\frac{5}{14}×2296=820$."},{"id":"D","text":"$2296$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=4×41×(5+9)=2296$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×2296=820$ tasks.

**Distractor analysis:**
- **A** ($815$): Underestimates A''s share of the total.
- **B** ($818$): Close but ratio arithmetic is off.
- **D** ($2296$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d6dfaf4f-5445-49d4-8450-2fada97e0372"}'::jsonb,
  updated_at = now()
WHERE id = 'd6dfaf4f-5445-49d4-8450-2fada97e0372';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $4:11$ over 48 hours at 5 tasks/hour combined.',
  options = '[{"id":"A","text":"$955$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$958$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$960$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×48×(4+11)=3600$. **Step 2:** A''s share $\\frac{4}{15}×3600=960$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=5×48×(4+11)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×3600=960$ tasks.

**Distractor analysis:**
- **A** ($955$): Underestimates A''s share of the total.
- **B** ($958$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e662258e-5cf6-4387-8d92-fb2307f1542a"}'::jsonb,
  updated_at = now()
WHERE id = 'e662258e-5cf6-4387-8d92-fb2307f1542a';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $4:7$ over 4 hours at 3 tasks/hour combined.',
  options = '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$48$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×4×(4+7)=132$. **Step 2:** A''s share $\\frac{4}{11}×132=48$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=3×4×(4+7)=132$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×132=48$ tasks.

**Distractor analysis:**
- **A** ($43$): Underestimates A''s share of the total.
- **B** ($46$): Close but ratio arithmetic is off.
- **D** ($132$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e8554860-0579-452b-9da3-21d940d089f9"}'::jsonb,
  updated_at = now()
WHERE id = 'e8554860-0579-452b-9da3-21d940d089f9';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $7:10$ over 47 hours at 4 tasks/hour combined.',
  options = '[{"id":"A","text":"$1311$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1314$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1316$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×47×(7+10)=3196$. **Step 2:** A''s share $\\frac{7}{17}×3196=1316$."},{"id":"D","text":"$3196$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=4×47×(7+10)=3196$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×3196=1316$ tasks.

**Distractor analysis:**
- **A** ($1311$): Underestimates A''s share of the total.
- **B** ($1314$): Close but ratio arithmetic is off.
- **D** ($3196$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fd5fcbb2-c541-493e-b0cd-5b23bb00786f"}'::jsonb,
  updated_at = now()
WHERE id = 'fd5fcbb2-c541-493e-b0cd-5b23bb00786f';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 6 ft from a wall; the top is 13 ft high. The ladder length is 14 ft.',
  options = '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{13}{14}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=13$, hypotenuse $=14$. **Step 2:** $\\sin\\theta=\\frac{13}{14}≈0.929$."},{"id":"C","text":"$\\frac{14}{13}$","is_correct":false,"explanation":"Choice C ($\\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=13$, hypotenuse $=14$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{13}{14}$.
**Step 3:** Pythagorean check: $6^2+13^2=14^2$.
**Step 4:** $\cos\theta=\frac{6}{14}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{6}{14}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{14}{13}$): Choice C ($\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{6}{13}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"49af7d1d-50f0-4606-bdcf-a43721e36064"}'::jsonb,
  updated_at = now()
WHERE id = '49af7d1d-50f0-4606-bdcf-a43721e36064';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 17 ft from a wall; the top is 24 ft high. The ladder length is 29 ft.',
  options = '[{"id":"A","text":"$\\frac{17}{29}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{24}{29}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=24$, hypotenuse $=29$. **Step 2:** $\\sin\\theta=\\frac{24}{29}≈0.828$."},{"id":"C","text":"$\\frac{29}{24}$","is_correct":false,"explanation":"Choice C ($\\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{17}{24}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=24$, hypotenuse $=29$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{24}{29}$.
**Step 3:** Pythagorean check: $17^2+24^2=29^2$.
**Step 4:** $\cos\theta=\frac{17}{29}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{17}{29}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{29}{24}$): Choice C ($\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{17}{24}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6efcb2d4-4dcf-4092-adb2-089040bf0eb4"}'::jsonb,
  updated_at = now()
WHERE id = '6efcb2d4-4dcf-4092-adb2-089040bf0eb4';

COMMIT;
