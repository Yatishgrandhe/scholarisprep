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
COMMIT;
