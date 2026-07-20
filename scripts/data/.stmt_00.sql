INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('624f5705-1c77-4efd-a7f1-96e8c719868f', 'Which choice completes the text with the most logical and precise word or phrase?', 'In the novel, Mara keeps her opinions hidden during the trial, choosing to remain ______ even when the lawyers press her for an answer. She refuses to confirm or deny anything, letting her silence frustrate the entire courtroom.', NULL, '[{"id":"A","text":"silent","is_correct":true,"explanation":"Correct: the text says she chooses to ''remain'' quiet and lets her ''silence'' frustrate the court."},{"id":"B","text":"cheerful","is_correct":false,"explanation":"Incorrect: nothing in the text describes her mood as happy."},{"id":"C","text":"famous","is_correct":false,"explanation":"Incorrect: her reputation is never mentioned, so this has no support."},{"id":"D","text":"talkative","is_correct":false,"explanation":"Incorrect: this reverses the meaning, since she refuses to answer."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text states she refuses to confirm or deny anything, {{yellow:letting her silence frustrate the entire courtroom}}.
Step 2 — Match the word
If her silence is the source of frustration, then remaining ''silent'' is the precise restatement.
Distractor analysis:
- B: ''cheerful'' describes mood, which the text never addresses.
- C: ''famous'' concerns reputation, an idea with no textual support.
- D: ''talkative'' contradicts her refusal to answer.', 'Look at the word ''silence'' later in the passage.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
