INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d612a9d4-c598-43ce-b35e-4e77d9449705', 'Which choice completes the text with the most logical and precise word or phrase?', 'In ancient Rome, public speakers were trained to win over crowds. A skilled orator did not simply state facts; he chose his words to stir emotion and move people to action. The historian Tacitus admired one senator whose speeches were so ______ that even his opponents found themselves nodding in agreement before they realized it.', NULL, '[{"id":"A","text":"confusing","is_correct":false,"explanation":"Reverse: confusing speeches would not win nodding agreement."},{"id":"B","text":"persuasive","is_correct":true,"explanation":"Correct: speeches that make even opponents agree are highly persuasive."},{"id":"C","text":"brief","is_correct":false,"explanation":"No evidence: the text never mentions the length of the speeches."},{"id":"D","text":"quiet","is_correct":false,"explanation":"No evidence: volume is not discussed; the point is winning agreement."}]'::jsonb, 'B', 'Step 1 — Find the clue
The text says the senator''s speeches made {{yellow:even his opponents found themselves nodding in agreement}}.
Step 2 — Match the word
Convincing even your opponents to agree is the mark of persuasive speech.
Distractor analysis:
- A: ''Confusing'' reverses the clue; confusion would not produce agreement.
- C: ''Brief'' has no support; length is never mentioned.
- D: ''Quiet'' is unsupported; the passage is about effect, not volume.', 'Opponents agreeing shows the speeches were very what?', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
