BEGIN;
UPDATE public.questions SET
  stimulus_text = '• Program 10 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 10, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '1c9ad3d9-9385-4859-ac47-83d994cbee5c';
UPDATE public.questions SET
  stimulus_text = '• Turbine 11 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 11, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f64d8aab-ad44-4991-8a72-afa27d711656';
UPDATE public.questions SET
  stimulus_text = '• Program 12 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 12, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f14a4377-a6fb-4028-9ba3-1d2de5baa162';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ef6d5d3c-f408-4c6d-82b0-8433e45f0da7';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bc119a6a-f486-498f-9f3f-e1f4294017bb';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a6abb248-62b7-4b2d-a452-0347b660ac78';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8e4637b8-540c-4949-88e8-6e7e58abeefc';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '62ef9f7f-dddb-4868-93a6-d638d51f19ad';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f701d3c2-aa06-4a59-a70e-80d136a17db3';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4b23e239-ecaa-42f1-8c65-16fae7821d03';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5c7208c9-9a22-4396-a6a8-b8b439c17a7b';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0b139e30-4f6a-468f-977f-343eef96686f';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'eef07589-6f4e-49f5-985d-1a80cf76639e';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2f8045ae-c30b-4ab2-a65a-73f87a0bd1cd';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5d0b04b1-eedd-45f8-824f-261e430fdcc4';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'dd8eb033-31bd-4e8a-b7c5-e66bc2622615';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b22b5ff8-0e79-4853-add7-bcd25c73c744';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b09700d3-a279-452f-9d0e-1f1270c8a61b';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3640a500-d4ec-43a9-83b8-68c3823dce59';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2ea65e62-6156-489e-8f91-e28b069b7982';
COMMIT;
