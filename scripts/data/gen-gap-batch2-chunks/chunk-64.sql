BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9adf6d44-b4d0-48eb-8fb1-3f199ea0fed6', 'What is the area of the rectangle shown?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 180" aria-label="Rectangle"><rect x="50" y="40" width="160" height="100" fill="#f8fafc" stroke="#111827" stroke-width="2"/><text x="120" y="155" font-size="13">12</text><text x="28" y="95" font-size="13">11</text></svg>', 'diagram', '[{"id":"A","text":"$132$","is_correct":true,"explanation":"Area = 12 \\times 11 = 132."},{"id":"B","text":"$23$","is_correct":false,"explanation":"This is the sum of dimensions, not area."},{"id":"C","text":"$46$","is_correct":false,"explanation":"This is the perimeter."},{"id":"D","text":"$137$","is_correct":false,"explanation":"Too large."}]'::jsonb, 'A', 'Area of a rectangle = length × width = 12 × 11 = 132$.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_template_v1","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;

COMMIT;
