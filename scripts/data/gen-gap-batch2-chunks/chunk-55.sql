BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3ddd45b-cc81-4e61-ac27-a3d657f3defd', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">5</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">8</text>
</svg>', 'diagram', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$11$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$8$","is_correct":true,"explanation":"$c = \\sqrt{5^2 + 6^2} = 8$."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{5^2 + 6^2} = \sqrt{61} = 8$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4349d03-09c7-4915-8db1-22380cc9dece', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">7</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">9</text>
</svg>', 'diagram', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$13$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$9$","is_correct":true,"explanation":"$c = \\sqrt{6^2 + 7^2} = 9$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{6^2 + 7^2} = \sqrt{85} = 9$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b674192c-cadb-47ad-b49c-cd167a65dcbe', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">7</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">11</text>
</svg>', 'diagram', '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$15$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$11$","is_correct":true,"explanation":"$c = \\sqrt{7^2 + 8^2} = 11$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{7^2 + 8^2} = \sqrt{113} = 11$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59fc910d-c282-4cc0-a252-a0599393ae3b', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">9</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">12</text>
</svg>', 'diagram', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$17$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$12$","is_correct":true,"explanation":"$c = \\sqrt{8^2 + 9^2} = 12$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{8^2 + 9^2} = \sqrt{145} = 12$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d689759-26ed-4a58-97d5-ceaf848c792c', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">9</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">10</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">13</text>
</svg>', 'diagram', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$19$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$13$","is_correct":true,"explanation":"$c = \\sqrt{9^2 + 10^2} = 13$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{9^2 + 10^2} = \sqrt{181} = 13$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62fc2fef-8b15-4292-a7c3-4b9be5bc9ab5', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">10</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">11</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">15</text>
</svg>', 'diagram', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$21$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$15$","is_correct":true,"explanation":"$c = \\sqrt{10^2 + 11^2} = 15$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{10^2 + 11^2} = \sqrt{221} = 15$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
