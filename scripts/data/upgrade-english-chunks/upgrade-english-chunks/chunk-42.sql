BEGIN;
UPDATE public.questions SET
  stimulus_text = '• Turbine 1 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 1, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3852bd94-0614-471e-bdb9-d3cf1290a8e1';
UPDATE public.questions SET
  stimulus_text = '• Program 2 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 2, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '679519d5-7a11-42fe-b9f5-319bc583e26b';
UPDATE public.questions SET
  stimulus_text = '• Turbine 3 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 3, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e43b3c8d-3016-4125-8f61-e54beae26d03';
UPDATE public.questions SET
  stimulus_text = '• Program 4 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 4, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd4403126-546e-4b83-a6ee-ebf10145d2a0';
UPDATE public.questions SET
  stimulus_text = '• Turbine 5 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 5, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e2d263af-5dc7-4d7f-8692-f919ca75978d';
UPDATE public.questions SET
  stimulus_text = '• Program 6 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 6, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'd7548463-71e4-4df1-a35a-89868186fa91';
UPDATE public.questions SET
  stimulus_text = '• Turbine 7 uses angled blades modeled on whale-fin tubercles
• Low wind speeds still produced usable power in field tests
• Older flat-blade designs underperformed at identical wind speeds
• Noise remained within local ordinance limits during overnight monitoring',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 7, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'e54f6416-709e-4eab-87f9-1df31b7c78b9';
UPDATE public.questions SET
  stimulus_text = '• Program 8 increased structured pair-discussion time during reading units
• Comprehension scores rose 12% on post-tests versus baseline
• Teachers reported higher engagement during observed lessons
• Worksheets alone showed a smaller four-point average gain over the same period',
  question_text = 'The student wants to emphasize the most effective approach documented in the notes. Which choice most effectively uses relevant information from the notes to accomplish this goal?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"In program 8, structured pair discussion outperformed worksheets alone, producing a twelve-point comprehension gain tied to higher engagement.","is_correct":true,"explanation":"Synthesizes the notes to highlight the approach linked to the largest measured gain and supporting teacher observations."},{"id":"B","text":"Whale-fin tubercles inspired many unrelated inventions that the notes never mention or evaluate.","is_correct":false,"explanation":"Adds information not contained in the notes and fails to compare instructional methods."},{"id":"C","text":"Worksheets are the only valid teaching tool because they require silent individual focus at all times.","is_correct":false,"explanation":"Contradicted directly by the notes, which report larger gains for discussion than worksheets."},{"id":"D","text":"Comprehension scores never change when instructional methods vary within the same school term.","is_correct":false,"explanation":"Contradicted by reported score changes for both cohorts in the notes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'The notes compare two instructional approaches and report unequal gains. The best synthesis identifies pair discussion as the more effective method while citing the twelve-point improvement and engagement evidence. Choices B, C, and D either import irrelevant claims or deny data the notes include.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8b3b0a8c-f587-4af4-9bc5-8e5701d68667';
COMMIT;
