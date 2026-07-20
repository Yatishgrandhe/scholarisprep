BEGIN;
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
