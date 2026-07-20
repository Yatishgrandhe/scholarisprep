INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cafed984-36ab-432b-81f3-00847358bbdf', 'The student wants to explain why the soil was able to blow away during the Dust Bowl. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Dust Bowl
- During the 1930s, severe drought struck the southern Great Plains of the United States.
- Years of plowing had stripped away the native grasses that held the soil in place.
- Strong winds lifted the loose, dry soil into enormous dust storms.
- Many farm families abandoned their land and moved west in search of work.
- The federal government later promoted farming methods that helped keep soil from blowing away.', NULL, '[{"id":"A","text":"During the 1930s, many farm families abandoned their land and moved west in search of work.","is_correct":false,"explanation":"This describes a consequence for families, not why the soil blew away."},{"id":"B","text":"The federal government later promoted farming methods that helped keep soil from blowing away.","is_correct":false,"explanation":"This describes a later solution rather than the reason the soil blew away."},{"id":"C","text":"Because years of plowing had stripped away the native grasses that held the soil in place, strong winds could lift the loose, dry soil into dust storms.","is_correct":true,"explanation":"This connects the loss of soil-holding grasses to the wind lifting the soil, explaining why it blew away."},{"id":"D","text":"During the 1930s, severe drought struck the southern Great Plains of the United States.","is_correct":false,"explanation":"This notes the drought but does not explain why the soil itself was free to blow away."}]'::jsonb, 'C', 'Step 1 — Find the cause
The notes say plowing had stripped away {{yellow:the native grasses that held the soil in place}}, after which winds lifted the soil.
Step 2 — Match the goal
The student wants to explain why the soil blew away, so the correct choice must link the lost grasses to the wind-borne soil, which choice C does.
Distractor analysis:
- A: Describes a human consequence, not the soil cause.
- B: Describes a later remedy, not the cause.
- D: Notes the drought alone without the loss of soil-holding grasses.', 'The cause connects the removal of the grasses that ''held the soil in place'' to the wind lifting it.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;