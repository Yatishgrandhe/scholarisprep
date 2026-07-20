BEGIN;
UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 8 red and 67 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{74}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{74}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 74. **Step 2:** P $=\\frac{7}{74}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 7 red left, 74 total.
**Step 2:** Conditional probability $=\frac{7}{74}$.
**Step 3:** Do not use $\frac{8}{75}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{8}{75}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{74}$): Uses original count in numerator.
- **C** ($\frac{8}{75}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"cb310b27-d7a4-48f2-8569-3d0a642236fb"}'::jsonb,
  updated_at = now()
WHERE id = 'cb310b27-d7a4-48f2-8569-3d0a642236fb';
UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 12 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{16}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{16}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 16. **Step 2:** P $=\\frac{4}{16}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red left, 16 total.
**Step 2:** Conditional probability $=\frac{4}{16}$.
**Step 3:** Do not use $\frac{5}{17}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{17}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{16}$): Uses original count in numerator.
- **C** ($\frac{5}{17}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"da32a04a-3154-4447-af8a-55fbbf71569b"}'::jsonb,
  updated_at = now()
WHERE id = 'da32a04a-3154-4447-af8a-55fbbf71569b';
UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 9 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{14}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 14. **Step 2:** P $=\\frac{5}{14}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red left, 14 total.
**Step 2:** Conditional probability $=\frac{5}{14}$.
**Step 3:** Do not use $\frac{6}{15}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{15}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{14}$): Uses original count in numerator.
- **C** ($\frac{6}{15}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"de8f7745-2957-4f29-9a91-ed39dad51a10"}'::jsonb,
  updated_at = now()
WHERE id = 'de8f7745-2957-4f29-9a91-ed39dad51a10';
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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"17adc1f6-afdf-4248-8bc7-772969dec7d3"}'::jsonb,
  updated_at = now()
WHERE id = '17adc1f6-afdf-4248-8bc7-772969dec7d3';

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

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 39 ft from a wall; the top is 46 ft high. The ladder length is 60 ft.',
  options = '[{"id":"A","text":"$\\frac{39}{60}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{46}{60}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=46$, hypotenuse $=60$. **Step 2:** $\\sin\\theta=\\frac{46}{60}≈0.767$."},{"id":"C","text":"$\\frac{60}{46}$","is_correct":false,"explanation":"Choice C ($\\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{39}{46}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=46$, hypotenuse $=60$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{46}{60}$.
**Step 3:** Pythagorean check: $39^2+46^2=60^2$.
**Step 4:** $\cos\theta=\frac{39}{60}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{39}{60}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{60}{46}$): Choice C ($\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{39}{46}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7f2e119c-4e0c-4dcc-9ad5-777c715898ba"}'::jsonb,
  updated_at = now()
WHERE id = '7f2e119c-4e0c-4dcc-9ad5-777c715898ba';
UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 12 ft from a wall; the top is 19 ft high. The ladder length is 22 ft.',
  options = '[{"id":"A","text":"$\\frac{12}{22}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{19}{22}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=19$, hypotenuse $=22$. **Step 2:** $\\sin\\theta=\\frac{19}{22}≈0.864$."},{"id":"C","text":"$\\frac{22}{19}$","is_correct":false,"explanation":"Choice C ($\\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{12}{19}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=19$, hypotenuse $=22$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{19}{22}$.
**Step 3:** Pythagorean check: $12^2+19^2=22^2$.
**Step 4:** $\cos\theta=\frac{12}{22}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{12}{22}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{22}{19}$): Choice C ($\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{12}{19}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"919c4e79-a6a7-4e64-9d3f-63bf96540bb2"}'::jsonb,
  updated_at = now()
WHERE id = '919c4e79-a6a7-4e64-9d3f-63bf96540bb2';
UPDATE public.questions SET
  question_text = 'Given $x+y=26$ and $4x-y=22$, what is $x$?',
  stimulus_text = 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.',
  options = '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1769e153-7e33-48ff-90fd-6aebd076801f"}'::jsonb,
  updated_at = now()
WHERE id = '1769e153-7e33-48ff-90fd-6aebd076801f';
UPDATE public.questions SET
  question_text = 'Given $x+y=46$ and $4x-y=32$, what is $x$?',
  stimulus_text = 'At an event, 46 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.',
  options = '[{"id":"A","text":"$26$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=130$. **Step 2:** $x=26$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$27$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=46+32$ → $5x=130$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($25$): One less than the solution.
- **C** ($20$): Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($27$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"19844a77-30be-4e0c-9f38-f7652f637c4b"}'::jsonb,
  updated_at = now()
WHERE id = '19844a77-30be-4e0c-9f38-f7652f637c4b';
UPDATE public.questions SET
  question_text = 'Given $x+y=72$ and $3x-y=45$, what is $x$?',
  stimulus_text = 'At an event, 72 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.',
  options = '[{"id":"A","text":"$39$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=156$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=72+45$ → $4x=156$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=33$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($38$): One less than the solution.
- **C** ($33$): Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3af893b1-6ca4-4e09-8d2e-f3186d0a3acc"}'::jsonb,
  updated_at = now()
WHERE id = '3af893b1-6ca4-4e09-8d2e-f3186d0a3acc';
UPDATE public.questions SET
  question_text = 'Given $x+y=26$ and $4x-y=22$, what is $x$?',
  stimulus_text = 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.',
  options = '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3fce8be2-a073-4881-ab74-4817e4c4374b"}'::jsonb,
  updated_at = now()
WHERE id = '3fce8be2-a073-4881-ab74-4817e4c4374b';
UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $3x-y=41$, what is $x$?',
  stimulus_text = 'At an event, 64 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=140$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=64+41$ → $4x=140$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($34$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"656d4afd-aacb-4b44-9ae6-85302298ff12"}'::jsonb,
  updated_at = now()
WHERE id = '656d4afd-aacb-4b44-9ae6-85302298ff12';
UPDATE public.questions SET
  question_text = 'Given $x+y=40$ and $3x-y=29$, what is $x$?',
  stimulus_text = 'At an event, 40 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.',
  options = '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=92$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=40+29$ → $4x=92$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7156ce00-6441-4147-9f02-42db1324da0f"}'::jsonb,
  updated_at = now()
WHERE id = '7156ce00-6441-4147-9f02-42db1324da0f';

COMMIT;
