INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6781c05b-0427-401c-829d-e5996ab0ac74', 'The student wants to explain how conservationists responded to the fox decline. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Recovery of the Channel Island Fox
- The Channel Island fox is a small fox found only on islands off the coast of California.
- In the 1990s, the population on several islands dropped below 100 individuals.
- The decline was driven largely by predation from golden eagles, which had moved onto the islands.
- Conservationists relocated the golden eagles and started a captive breeding program for the foxes.
- By 2016, the fox populations had rebounded into the thousands.', NULL, '[{"id":"A","text":"The Channel Island fox is a small fox found only on islands off the coast of California, where its population once dropped below 100 individuals.","is_correct":false,"explanation":"This describes the fox and the decline but not the conservationists'' response."},{"id":"B","text":"To address the decline, conservationists relocated the golden eagles and started a captive breeding program for the foxes.","is_correct":true,"explanation":"This names both actions conservationists took in response to the decline, directly fulfilling the goal."},{"id":"C","text":"The fox''s decline was driven largely by predation from golden eagles that had moved onto the islands.","is_correct":false,"explanation":"This explains the cause of the decline rather than the conservationists'' response to it."},{"id":"D","text":"By 2016, the Channel Island fox populations had rebounded into the thousands.","is_correct":false,"explanation":"This reports the outcome but does not describe how conservationists responded."}]'::jsonb, 'B', 'Step 1 — Find the response
The notes state that conservationists {{yellow:relocated the golden eagles and started a captive breeding program for the foxes}}.
Step 2 — Match the goal
The student wants to explain the response, so the correct choice must report those two actions, which choice B does.
Distractor analysis:
- A: Describes the species and decline, not the response.
- C: Gives the cause of the decline, not the response.
- D: Reports the outcome rather than the response.', 'Look for the choice that lists the actions taken, not the cause or the result.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;