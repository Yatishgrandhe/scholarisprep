INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96e2abd7-a7bc-457b-9408-2c68a66631cf', 'The student wants to emphasize why the monarchs'' navigation is especially remarkable. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Mystery of Migrating Monarchs
- Monarch butterflies in eastern North America migrate thousands of miles to Mexico each fall.
- No single butterfly completes the entire round trip.
- It takes several generations to return north the following spring.
- The butterflies that fly south have never visited their winter destination.
- Scientists believe the monarchs navigate using the sun and an internal sense of time.', NULL, '[{"id":"A","text":"Monarch butterflies migrate thousands of miles to Mexico each fall using the sun.","is_correct":false,"explanation":"This notes the distance and the sun but omits the striking fact that the butterflies have never been there before."},{"id":"B","text":"It takes several generations for the monarchs to return north the following spring.","is_correct":false,"explanation":"This describes the return journey, not why the navigation is remarkable."},{"id":"C","text":"Remarkably, the butterflies that fly south navigate to a winter destination they have never visited before.","is_correct":true,"explanation":"This pairs navigation with the fact that the butterflies have never been there, emphasizing the wonder."},{"id":"D","text":"Scientists believe the monarchs navigate using the sun and an internal sense of time.","is_correct":false,"explanation":"This states the method but not what makes it remarkable."}]'::jsonb, 'C', 'Step 1 — Find the remarkable detail
The notes state that {{yellow:The butterflies that fly south have never visited their winter destination}}.
Step 2 — Match the goal
Choice C links navigating to a place never visited, conveying why the feat is remarkable.
Distractor analysis:
- A: Mentions distance and sun but omits the never-visited fact.
- B: Describes the return trip.
- D: States the method, not the wonder.', 'The goal is what makes the navigation astonishing, so find the surprising fact about the route.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;