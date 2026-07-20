INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58ea8499-83be-4e3f-a5a1-66408cfcbbc1', 'Which choice completes the text with the most logical and precise word or phrase?', 'The committee expected the new policy to spark loud debate. Instead, every member nodded in agreement, and not a single objection was raised. The chairperson was surprised by how ______ the vote turned out to be, with all hands rising together in support.', NULL, '[{"id":"A","text":"unanimous","is_correct":true,"explanation":"Correct: the text says ''every member nodded in agreement'' with no objection, which is unanimous."},{"id":"B","text":"divided","is_correct":false,"explanation":"Incorrect: divided contradicts the description of every member agreeing with no objection."},{"id":"C","text":"delayed","is_correct":false,"explanation":"Incorrect: timing is not discussed; the vote happened with all hands rising together."},{"id":"D","text":"secret","is_correct":false,"explanation":"Incorrect: the vote was open, with hands rising in view, not secret."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text reports that {{yellow:every member nodded in agreement, and not a single objection was raised}}.
Step 2 — Match the word
A vote in which everyone agrees and no one objects is unanimous.
Distractor analysis:
- B: ''divided'' contradicts the full agreement described.
- C: ''delayed'' introduces timing, which is not mentioned.
- D: ''secret'' is wrong because hands rose openly together.', 'Every member agreed and no one objected.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
