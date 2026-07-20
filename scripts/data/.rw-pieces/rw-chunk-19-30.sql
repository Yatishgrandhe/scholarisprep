INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('add6fc1c-76a3-4cf2-93cb-a7c01a8211e2', 'The student wants to describe the restoration method scientists are using. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reef Restoration
- Coral reefs support roughly a quarter of all marine species.
- Warming oceans cause corals to expel the algae that give them color and food.
- This expulsion, called bleaching, can kill corals if it lasts too long.
- Scientists are growing heat-resistant corals in underwater nurseries.
- These nurseries are then transplanted onto damaged reefs to help them recover.', NULL, '[{"id":"A","text":"Coral reefs support roughly a quarter of all marine species despite covering little ocean area.","is_correct":false,"explanation":"The area detail is unsupported, and this describes importance, not the restoration method."},{"id":"B","text":"Bleaching occurs when warming oceans cause corals to expel their algae.","is_correct":false,"explanation":"This explains the threat, not the restoration method."},{"id":"C","text":"Scientists grow heat-resistant corals in underwater nurseries and then transplant them onto damaged reefs to aid recovery.","is_correct":true,"explanation":"This synthesizes the nursery and transplant steps to describe the method."},{"id":"D","text":"Corals expel the algae that give them color, which can kill them if it lasts too long.","is_correct":false,"explanation":"This describes bleaching''s danger, not the restoration approach."}]'::jsonb, 'C', 'Step 1 — Locate the method
The notes say scientists are {{yellow:growing heat-resistant corals in underwater nurseries}} and that {{yellow:These nurseries are then transplanted onto damaged reefs to help them recover}}.
Step 2 — Match the goal
Choice C joins both steps to describe the restoration method.
Distractor analysis:
- A: Adds an unsupported area claim and discusses importance.
- B: Explains bleaching, not the method.
- D: Describes the threat, not restoration.', 'The goal is the method, so look for what scientists actually do to restore reefs.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;