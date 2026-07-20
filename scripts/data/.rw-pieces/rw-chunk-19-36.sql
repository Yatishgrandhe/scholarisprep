INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('65db921a-9de2-4623-bbac-1f159a963d42', 'The student wants to explain why people continue to farm near active volcanoes despite the danger. Which choice most effectively uses information from the notes to accomplish this goal?', 'Volcanic Soil and Agriculture
- Volcanic eruptions can devastate nearby farms in the short term.
- Over time, volcanic ash breaks down into highly fertile soil.
- This soil is rich in minerals such as potassium and phosphorus.
- Crops grown in volcanic soil often produce high yields.
- As a result, many people farm on the slopes of active volcanoes.', NULL, '[{"id":"A","text":"Volcanic eruptions can devastate nearby farms in the short term.","is_correct":false,"explanation":"This states only the danger, not the reason people farm there anyway."},{"id":"B","text":"Volcanic ash is rich in minerals such as potassium and phosphorus.","is_correct":false,"explanation":"This names minerals but does not connect them to why people farm despite danger."},{"id":"C","text":"Despite the danger of eruptions, people farm near active volcanoes because volcanic ash forms fertile soil that produces high crop yields.","is_correct":true,"explanation":"This pairs the danger with the fertile soil and high yields, explaining the motivation."},{"id":"D","text":"Many people farm on the slopes of active volcanoes.","is_correct":false,"explanation":"This states the behavior without explaining the reason behind it."}]'::jsonb, 'C', 'Step 1 — Find the danger and the payoff
The notes say eruptions {{yellow:can devastate nearby farms in the short term}} yet {{yellow:Crops grown in volcanic soil often produce high yields}}.
Step 2 — Match the goal
Choice C joins the danger with the fertile, high-yield soil to explain why people farm there.
Distractor analysis:
- A: States only the danger.
- B: Names minerals without the motivation link.
- D: States the behavior without the reason.', 'The goal needs both the danger and the benefit that outweighs it.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;