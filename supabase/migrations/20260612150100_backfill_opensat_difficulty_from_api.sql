-- Backfill difficulty + source_metadata.opensat_difficulty from live OpenSAT JSON.
-- Requires pg_http extension (enabled on prod).

WITH payload AS (
  SELECT (http_get('https://api.jsonsilo.com/public/942c3c3b-3a0c-4be3-81c2-12029def19f5')).content::jsonb AS data
),
english AS (
  SELECT
    'english'::text AS section,
    (ordinality - 1)::int AS idx,
    item->>'difficulty' AS raw_diff
  FROM payload,
    jsonb_array_elements(data->'english') WITH ORDINALITY AS t(item, ordinality)
),
math AS (
  SELECT
    'math'::text AS section,
    (ordinality - 1)::int AS idx,
    item->>'difficulty' AS raw_diff
  FROM payload,
    jsonb_array_elements(data->'math') WITH ORDINALITY AS t(item, ordinality)
),
combined AS (
  SELECT * FROM english
  UNION ALL
  SELECT * FROM math
)
UPDATE public.questions q
SET
  difficulty = CASE lower(trim(c.raw_diff))
    WHEN 'easy' THEN 'easy'::public.difficulty
    WHEN 'hard' THEN 'hard'::public.difficulty
    WHEN 'expert' THEN 'hard'::public.difficulty
    ELSE 'medium'::public.difficulty
  END,
  source_metadata = coalesce(q.source_metadata, '{}'::jsonb)
    || jsonb_build_object('opensat_difficulty', c.raw_diff)
FROM combined c
WHERE q.source = 'college_board_opensat'
  AND q.source_metadata->>'section' = c.section
  AND (q.source_metadata->>'opensat_index')::int = c.idx;
