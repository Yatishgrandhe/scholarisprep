INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a0c62f6-7bd4-4821-96b5-ddf77027bc06', 'The student wants to explain how the light produced by bioluminescent organisms is created. Which choice most effectively uses information from the notes to accomplish this goal?', 'Bioluminescent Organisms
- Some living things can produce their own light, a trait called bioluminescence.
- Many of these organisms live deep in the ocean where sunlight cannot reach.
- Fireflies use their glow to attract mates.
- Certain deep-sea fish use light to lure prey closer.
- The light is made by a chemical reaction inside the organism''s body.', NULL, '[{"id":"A","text":"The light of bioluminescent organisms is made by a chemical reaction inside the organism''s body.","is_correct":true,"explanation":"Correct: it states the chemical reaction, directly explaining how the light is created."},{"id":"B","text":"Many bioluminescent organisms live deep in the ocean where sunlight cannot reach.","is_correct":false,"explanation":"This describes where they live, not how the light is made."},{"id":"C","text":"Fireflies use their glow to attract mates.","is_correct":false,"explanation":"This explains a use of the light, not how it is produced."},{"id":"D","text":"Certain deep-sea fish use light to lure prey closer.","is_correct":false,"explanation":"This describes a use of the light, not its creation."}]'::jsonb, 'A', 'Step 1 — Find the cause of the light
The notes state that {{yellow:The light is made by a chemical reaction inside the organism''s body}}.
Step 2 — Match the goal
Choice A uses that note to explain how the light is created, exactly the rhetorical goal.
Distractor analysis:
- B: Describes habitat, not how light is produced.
- C: Gives a firefly''s purpose for the glow, not its creation.
- D: Gives a fish''s use of light, not how it is made.', 'Find the note that describes a chemical reaction.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;