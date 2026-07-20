BEGIN;
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
COMMIT;
