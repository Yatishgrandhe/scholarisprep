-- Fix truncated lemma from IvyMax merge
UPDATE public.vocabulary_words
SET word = 'Compelling'
WHERE word = 'Compell' AND exam_type = 'SAT';
