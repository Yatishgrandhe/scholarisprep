BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca8d660d-ed20-4e97-9732-634b0296ee1e', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">11</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">12</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">16</text>
</svg>', 'diagram', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$23$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$16$","is_correct":true,"explanation":"$c = \\sqrt{11^2 + 12^2} = 16$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{11^2 + 12^2} = \sqrt{265} = 16$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a03078a8-af1e-44f8-bc64-8a1faa20c0e0', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">12</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">13</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">18</text>
</svg>', 'diagram', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$25$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$18$","is_correct":true,"explanation":"$c = \\sqrt{12^2 + 13^2} = 18$."},{"id":"D","text":"$20$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{12^2 + 13^2} = \sqrt{313} = 18$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('24993cf6-778c-426d-945d-4f1f030cace3', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">13</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">14</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">19</text>
</svg>', 'diagram', '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$27$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$19$","is_correct":true,"explanation":"$c = \\sqrt{13^2 + 14^2} = 19$."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{13^2 + 14^2} = \sqrt{365} = 19$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6d8c362e-6b7d-4d86-adc2-34a3bfded08f', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">14</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">15</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">21</text>
</svg>', 'diagram', '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$29$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$21$","is_correct":true,"explanation":"$c = \\sqrt{14^2 + 15^2} = 21$."},{"id":"D","text":"$23$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{14^2 + 15^2} = \sqrt{421} = 21$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba4cafad-5b21-4657-9694-1c4c43b4129f', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">15</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">16</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">22</text>
</svg>', 'diagram', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$31$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$22$","is_correct":true,"explanation":"$c = \\sqrt{15^2 + 16^2} = 22$."},{"id":"D","text":"$24$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{15^2 + 16^2} = \sqrt{481} = 22$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7f2e119c-4e0c-4dcc-9ad5-777c715898ba', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">4</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">5</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">6</text>
</svg>', 'diagram', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$9$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$6$","is_correct":true,"explanation":"$c = \\sqrt{4^2 + 5^2} = 6$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{4^2 + 5^2} = \sqrt{41} = 6$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
