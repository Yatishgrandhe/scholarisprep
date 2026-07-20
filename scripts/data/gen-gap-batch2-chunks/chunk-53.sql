BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('89a46d91-930a-4d54-91b3-01081b010bc3', 'If $7x = 28$, what is the value of $x$?', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":true,"explanation":"Divide both sides by 7: $x = 4$."},{"id":"B","text":"$3$","is_correct":false,"explanation":"Too small."},{"id":"C","text":"$7$","is_correct":false,"explanation":"That is the coefficient, not $x$."},{"id":"D","text":"$5$","is_correct":false,"explanation":"Too large."}]'::jsonb, 'A', 'Divide both sides by 7: $x = 4 = 4$.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('946fab21-ffdc-43d5-9611-034041b493b4', 'If $8x = 40$, what is the value of $x$?', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":true,"explanation":"Divide both sides by 8: $x = 5$."},{"id":"B","text":"$4$","is_correct":false,"explanation":"Too small."},{"id":"C","text":"$8$","is_correct":false,"explanation":"That is the coefficient, not $x$."},{"id":"D","text":"$6$","is_correct":false,"explanation":"Too large."}]'::jsonb, 'A', 'Divide both sides by 8: $x = 5 = 5$.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d3d1e5b1-8817-4314-bb36-40756330bb80', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">4</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">5</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">6</text>
</svg>', 'diagram', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$9$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$6$","is_correct":true,"explanation":"$c = \\sqrt{4^2 + 5^2} = 6$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{4^2 + 5^2} = \sqrt{41} = 6$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8b2ba12-b70f-48fe-8c85-ac28b8c9c2a8', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">5</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">8</text>
</svg>', 'diagram', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$11$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$8$","is_correct":true,"explanation":"$c = \\sqrt{5^2 + 6^2} = 8$."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{5^2 + 6^2} = \sqrt{61} = 8$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97982868-8515-40a9-b37b-d0cae10fae3d', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">6</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">7</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">9</text>
</svg>', 'diagram', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$13$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$9$","is_correct":true,"explanation":"$c = \\sqrt{6^2 + 7^2} = 9$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{6^2 + 7^2} = \sqrt{85} = 9$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('659a23ff-43b5-4ab6-bbab-7c3125289966', 'In the right triangle shown, what is the length of the hypotenuse?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">7</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">8</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">11</text>
</svg>', 'diagram', '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Too short for the hypotenuse."},{"id":"B","text":"$15$","is_correct":false,"explanation":"The hypotenuse is not the sum of the legs."},{"id":"C","text":"$11$","is_correct":true,"explanation":"$c = \\sqrt{7^2 + 8^2} = 11$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Too long."}]'::jsonb, 'C', 'By the Pythagorean theorem: $c = \sqrt{7^2 + 8^2} = \sqrt{113} = 11$.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'easy', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
