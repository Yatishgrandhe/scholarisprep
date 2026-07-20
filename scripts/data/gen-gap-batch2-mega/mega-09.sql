BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f0c26ee-4465-49c2-8019-f17e147f4341', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">9</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">12</text>
</svg>', 'diagram', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$17$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$12$","is_correct":true,"explanation":"$c = \\sqrt{8^2 + 9^2} = 12$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{8^2 + 9^2} = \sqrt{145} = 12$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82a9b698-6640-44ee-aa12-f3f21a9e5077', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">9</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">10</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">13</text>
</svg>', 'diagram', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$19$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$13$","is_correct":true,"explanation":"$c = \\sqrt{9^2 + 10^2} = 13$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{9^2 + 10^2} = \sqrt{181} = 13$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('baa19786-d0cb-49fc-8507-9ef881186182', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">10</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">11</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">15</text>
</svg>', 'diagram', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$21$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$15$","is_correct":true,"explanation":"$c = \\sqrt{10^2 + 11^2} = 15$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{10^2 + 11^2} = \sqrt{221} = 15$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3836c1b8-8ba9-4066-80df-1e569fea430d', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">11</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">12</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">16</text>
</svg>', 'diagram', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$23$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$16$","is_correct":true,"explanation":"$c = \\sqrt{11^2 + 12^2} = 16$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{11^2 + 12^2} = \sqrt{265} = 16$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d127d4f1-3f85-4c14-9868-a93a303e708a', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">12</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">13</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">18</text>
</svg>', 'diagram', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$25$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$18$","is_correct":true,"explanation":"$c = \\sqrt{12^2 + 13^2} = 18$."},{"id":"D","text":"$20$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{12^2 + 13^2} = \sqrt{313} = 18$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a68550c5-9006-4915-bc8d-3e87cb0b6fc8', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">4</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">5</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">6</text>
</svg>', 'diagram', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$9$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$6$","is_correct":true,"explanation":"$c = \\sqrt{4^2 + 5^2} = 6$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{4^2 + 5^2} = \sqrt{41} = 6$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
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
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('23f89678-4237-4a97-97b3-7090737c76db', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 48°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$48° + 60° + 72° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 48 - 60 = 72°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e968812c-62af-4f7c-8b66-deb0f81c3a5e', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 56°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$56° + 60° + 64° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 56 - 60 = 64°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8266f6d0-714f-43c5-ae5f-acad6315f6a4', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 64°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$64° + 60° + 56° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 64 - 60 = 56°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2daf5447-055c-4f81-8312-095ea7d9c58a', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 72°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$72° + 60° + 48° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 72 - 60 = 48°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('01b6f3f5-9c16-4adf-93f1-cbbda0f5c5e5', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 80°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$80° + 60° + 40° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 80 - 60 = 40°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7fb26f1b-2169-40c9-9e92-d905852c962d', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 88°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$88° + 60° + 32° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 88 - 60 = 32°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('553e94d4-6c69-40af-a9ee-2073dbb623e2', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 48°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$48° + 60° + 72° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 48 - 60 = 72°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da16ec58-e6dc-49f1-9d9b-a3dadac8709f', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 56°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$56° + 60° + 64° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 56 - 60 = 64°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('288fe145-df72-499b-8eca-0f75ee137a77', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 64°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$64° + 60° + 56° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 64 - 60 = 56°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d01c6ca-e144-4ceb-9231-8862950db2f6', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 72°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$72° + 60° + 48° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 72 - 60 = 48°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99848b00-e0b8-4882-a822-a8253cceea37', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 80°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$80° + 60° + 40° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 80 - 60 = 40°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea9b9043-c194-46b8-b5c6-931eda06b78a', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 88°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$88° + 60° + 32° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 88 - 60 = 32°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('814cc53f-b827-4781-b017-59711a6d2c19', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 48°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$48° + 60° + 72° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 48 - 60 = 72°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba95c195-91f4-4d0a-bece-4edcb72c8c7e', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 56°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$56° + 60° + 64° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 56 - 60 = 64°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c42aa453-cdfa-4445-ae14-8791e826644d', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 64°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$64° + 60° + 56° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 64 - 60 = 56°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('033c19e6-a1e1-49cb-aad9-e3f811a6e484', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 72°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$72° + 60° + 48° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 72 - 60 = 48°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76fc7465-61d1-4753-b573-eb0391ad16dd', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 80°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$80° + 60° + 40° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 80 - 60 = 40°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc857c4d-8a27-4ab0-9c7a-55e543e02933', 'In triangle $ABC$ shown, $m\angle B = 60°$ and $m\angle A = 88°$. What is $m\angle C$?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">?</text>
  <text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">60°</text>
</svg>', 'diagram', '[{"id":"A","text":"$${angle}°$","is_correct":false,"explanation":"That is angle A, not C."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"That is angle B."},{"id":"C","text":"$${angle + 10}°$","is_correct":false,"explanation":"Triangle angles must sum to 180°; this is too large."},{"id":"D","text":"$${unknown}°$","is_correct":true,"explanation":"$88° + 60° + 32° = 180°$."}]'::jsonb, 'D', 'Angles in a triangle sum to $180°$: $m\angle C = 180 - 88 - 60 = 32°$.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;