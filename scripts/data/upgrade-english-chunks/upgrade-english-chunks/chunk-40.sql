BEGIN;
UPDATE public.questions SET
  stimulus_text = 'Economists analyzing market 12 observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions.',
  question_text = 'Which choice can most reasonably be inferred from the passage?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"The researchers refused to publish any results because the findings contradicted their hypothesis.","is_correct":false,"explanation":"The passage reports published findings and follow-up surveys; it does not suggest suppression of results."},{"id":"B","text":"Every participant in related studies always fails to recall word lists when sleep is involved.","is_correct":false,"explanation":"Too absolute; the passage compares groups under controlled conditions rather than claiming universal failure."},{"id":"C","text":"The described mechanism could apply beyond the specific example given in the passage.","is_correct":true,"explanation":"When a study isolates a variable and shows a pattern, readers may infer broader applicability while noting stated limitations."},{"id":"D","text":"The passage lists exact retail prices for all consumer goods mentioned in the interviews.","is_correct":false,"explanation":"No pricing information appears; the passage focuses on organizational behavior and logistics."}]'::jsonb,
  correct_answer = 'C',
  explanation = 'The passage presents a specific finding with cautions about generalization yet still implies a principle beyond the immediate case. Choice C captures that reasonable inference without treating the study as unlimited proof. Choices A and B overstate or invert what the text supports, while D introduces information the passage never provides.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'fc650152-f039-4bd6-8503-90ebb52ace23';
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
WHERE id = 'f43f7263-46ca-4ed6-b221-6eca86fa43ce';
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
WHERE id = '6e5fd353-4108-40a6-8d81-c8e9aad78cb0';
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
WHERE id = 'd5400f29-103d-44da-af50-53c11bf198b7';
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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'c2ebc51e-c076-4185-b497-23d4f276f976';
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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '68c354ee-dba1-487d-882f-a4d51ff712ac';
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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4a001407-792c-4823-a71f-28ffda42b648';
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
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.878Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '819d3679-dcf6-4822-b1c8-c6c254887cfd';
COMMIT;
