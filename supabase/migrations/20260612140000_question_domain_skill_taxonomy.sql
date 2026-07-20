-- SAT question domain (type) + skill (subtype) taxonomy for queryable bank counts.
-- topic = official domain label; subtopic = skill label; domain_id/skill_id = bankTaxonomy slugs.

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS domain_id text,
  ADD COLUMN IF NOT EXISTS skill_id text;

COMMENT ON COLUMN public.questions.domain_id IS 'Canonical domain slug (craft, algebra, psda, …) matching bankTaxonomy';
COMMENT ON COLUMN public.questions.skill_id IS 'Canonical skill code (CID, LIN, …) matching bankTaxonomy';
COMMENT ON COLUMN public.questions.topic IS 'Official SAT content domain label (e.g. Information and Ideas)';
COMMENT ON COLUMN public.questions.subtopic IS 'SAT skill label (e.g. Central Ideas and Details)';

CREATE INDEX IF NOT EXISTS idx_questions_domain_skill
  ON public.questions (exam_type, subject, domain_id, skill_id)
  WHERE is_platform_question = true;

CREATE INDEX IF NOT EXISTS idx_questions_skill_id
  ON public.questions (skill_id)
  WHERE skill_id IS NOT NULL;

-- Map OpenSAT / legacy topic labels → domain_id
UPDATE public.questions
SET domain_id = CASE coalesce(source_metadata->>'opensat_domain', topic)
  WHEN 'Craft and Structure' THEN 'craft'
  WHEN 'Expression of Ideas' THEN 'expression'
  WHEN 'Information and Ideas' THEN 'information'
  WHEN 'Standard English Conventions' THEN 'conventions'
  WHEN 'Algebra' THEN 'algebra'
  WHEN 'Advanced Math' THEN 'advanced'
  WHEN 'Problem-Solving and Data Analysis' THEN 'psda'
  WHEN 'Geometry and Trigonometry' THEN 'geometry'
  WHEN 'Geometry' THEN 'geometry'
  ELSE domain_id
END
WHERE source = 'college_board_opensat'
  AND domain_id IS NULL;

-- Heuristic skill classifier (mirrors scripts/sat-question-taxonomy.mjs)
CREATE OR REPLACE FUNCTION public._classify_sat_skill(
  p_domain_id text,
  p_text text
) RETURNS text
LANGUAGE plpgsql
IMMUTABLE
AS $$
DECLARE
  t text := lower(coalesce(p_text, ''));
BEGIN
  IF p_domain_id = 'craft' THEN
    IF t ~ 'text 1|text 2|both (passage|text)|another (author|passage)|other passage' THEN RETURN 'CTC'; END IF;
    IF t ~ 'word.*(mean|used|suggest|conveys)|as used in the (line|passage)|most nearly mean' THEN RETURN 'WIC'; END IF;
    IF t ~ 'structure|purpose|perspective|contrast|shift|organiz|function of|primarily serve|tone|point of view' THEN RETURN 'TSP'; END IF;
    RETURN 'TSP';
  ELSIF p_domain_id = 'information' THEN
    IF t ~ 'evidence|support(s)? the|quotation|cite|data in the (table|graph|chart)' THEN RETURN 'COE'; END IF;
    IF t ~ 'infer|imply|suggest that|primarily suggest|most likely (true|conclude|believe)|can be inferred' THEN RETURN 'INF'; END IF;
    IF t ~ 'main (idea|point)|primarily|summarize|central idea|best (describes|states)|primary purpose' THEN RETURN 'CID'; END IF;
    RETURN 'CID';
  ELSIF p_domain_id = 'expression' THEN
    IF t ~ 'transition|logical flow|connect|link(s)? the|however,|therefore,|concluding sentence' THEN RETURN 'TRA'; END IF;
    IF t ~ 'notes|researcher|student|bullet|synthesize|combining|while researching|graphic organizer' THEN RETURN 'SYN'; END IF;
    RETURN 'SYN';
  ELSIF p_domain_id = 'conventions' THEN
    IF t ~ 'punctuation|comma|semicolon|colon|apostrophe|dash|hyphen|period|boundar' THEN RETURN 'BOU'; END IF;
    IF t ~ 'grammatically|verb tense|subject-verb|pronoun|modifier|plural|singular|agreement|form of the verb' THEN RETURN 'FSS'; END IF;
    RETURN 'FSS';
  ELSIF p_domain_id = 'algebra' THEN
    IF t ~ 'inequal|greater than|less than|at least|at most' THEN RETURN 'INE'; END IF;
    IF t ~ 'system of|two linear equations|simultaneous' THEN RETURN 'SYS'; END IF;
    IF t ~ 'two variables|xy-plane|slope-intercept|y-intercept.*x-intercept' THEN RETURN 'LEQ'; END IF;
    IF t ~ 'linear function|slope of the line|rate of change|y\s*=.*x' THEN RETURN 'LIF'; END IF;
    RETURN 'LIN';
  ELSIF p_domain_id = 'advanced' THEN
    IF t ~ 'equivalent expression|equivalent to which|factor|expand|simplif' THEN RETURN 'EQS'; END IF;
    IF t ~ 'quadratic|x\^2|polynomial|zeroes of|roots of|nonlinear equation' THEN RETURN 'NRE'; END IF;
    IF t ~ 'function|f\(x\)|exponential|graph of|parabola' THEN RETURN 'NRM'; END IF;
    RETURN 'NRM';
  ELSIF p_domain_id = 'psda' THEN
    IF t ~ 'probability|odds|likelihood|randomly selected' THEN RETURN 'PRO'; END IF;
    IF t ~ 'percent' THEN RETURN 'PER'; END IF;
    IF t ~ 'ratio|rate|proportion|per hour|per minute|miles per' THEN RETURN 'RAT'; END IF;
    IF t ~ 'scatter|line of best fit|two-variable|best-fit line|linear model|regression' THEN RETURN 'TVA'; END IF;
    IF t ~ 'evaluate the (claim|conclusion|argument)|statistical claim|unsupported claim|overgeneral' THEN RETURN 'EVA'; END IF;
    IF t ~ 'margin of error|sample|survey|poll|statistic|population parameter' THEN RETURN 'IEE'; END IF;
    IF t ~ 'mean|median|mode|standard deviation|range|data set|histogram|bar graph' THEN RETURN 'OIA'; END IF;
    RETURN 'RAT';
  ELSIF p_domain_id = 'geometry' THEN
    IF t ~ 'trigonometry|sin\(|cos\(|tan\(|right triangle' THEN RETURN 'RIG'; END IF;
    IF t ~ 'circle|radius|circumference|diameter|arc' THEN RETURN 'CIR'; END IF;
    IF t ~ 'area|volume|square (cm|units)|cubic' THEN RETURN 'ARE'; END IF;
    IF t ~ 'triangle|angle|parallel|perpendicular|polygon|quadrilateral' THEN RETURN 'LIN_G'; END IF;
    RETURN 'ARE';
  END IF;
  RETURN NULL;
END;
$$;

CREATE OR REPLACE FUNCTION public._sat_skill_label(p_skill_id text) RETURNS text
LANGUAGE sql
IMMUTABLE
AS $$
  SELECT CASE p_skill_id
    WHEN 'CTC' THEN 'Cross-Text Connections'
    WHEN 'TSP' THEN 'Text Structure and Purpose'
    WHEN 'WIC' THEN 'Words in Context'
    WHEN 'SYN' THEN 'Rhetorical Synthesis'
    WHEN 'TRA' THEN 'Transitions'
    WHEN 'CID' THEN 'Central Ideas and Details'
    WHEN 'COE' THEN 'Command of Evidence'
    WHEN 'INF' THEN 'Inferences'
    WHEN 'BOU' THEN 'Boundaries'
    WHEN 'FSS' THEN 'Form, Structure, and Sense'
    WHEN 'LIN' THEN 'Linear equations in one variable'
    WHEN 'LIF' THEN 'Linear functions'
    WHEN 'LEQ' THEN 'Linear equations in two variables'
    WHEN 'SYS' THEN 'Systems of two linear equations'
    WHEN 'INE' THEN 'Linear inequalities'
    WHEN 'NRM' THEN 'Nonlinear functions'
    WHEN 'NRE' THEN 'Nonlinear equations in one variable'
    WHEN 'EQS' THEN 'Equivalent expressions'
    WHEN 'RAT' THEN 'Ratios, rates, and proportions'
    WHEN 'PER' THEN 'Percentages'
    WHEN 'OIA' THEN 'One-variable data'
    WHEN 'TVA' THEN 'Two-variable data'
    WHEN 'PRO' THEN 'Probability and conditional probability'
    WHEN 'IEE' THEN 'Inference from sample statistics'
    WHEN 'EVA' THEN 'Evaluating statistical claims'
    WHEN 'ARE' THEN 'Area and volume'
    WHEN 'LIN_G' THEN 'Lines, angles, and triangles'
    WHEN 'RIG' THEN 'Right triangles and trigonometry'
    WHEN 'CIR' THEN 'Circles'
    ELSE p_skill_id
  END;
$$;

-- Backfill skill_id + subtopic for College Board import
UPDATE public.questions q
SET
  skill_id = s.skill,
  subtopic = public._sat_skill_label(s.skill),
  source_metadata = coalesce(q.source_metadata, '{}'::jsonb)
    || jsonb_build_object('domain_id', q.domain_id, 'skill_id', s.skill)
FROM (
  SELECT
    id,
    public._classify_sat_skill(
      domain_id,
      coalesce(question_text, '') || ' ' || coalesce(stimulus_text, '')
    ) AS skill
  FROM public.questions
  WHERE source = 'college_board_opensat'
) s
WHERE q.id = s.id;

-- Sync math_skill_code for math rows
UPDATE public.questions
SET math_skill_code = skill_id
WHERE source = 'college_board_opensat'
  AND subject = 'math'
  AND skill_id IS NOT NULL;

-- Normalize topic to domain label where duplicated into subtopic
UPDATE public.questions
SET topic = CASE domain_id
  WHEN 'craft' THEN 'Craft and Structure'
  WHEN 'expression' THEN 'Expression of Ideas'
  WHEN 'information' THEN 'Information and Ideas'
  WHEN 'conventions' THEN 'Standard English Conventions'
  WHEN 'algebra' THEN 'Algebra'
  WHEN 'advanced' THEN 'Advanced Math'
  WHEN 'psda' THEN 'Problem-Solving and Data Analysis'
  WHEN 'geometry' THEN 'Geometry and Trigonometry'
  ELSE topic
END
WHERE source = 'college_board_opensat'
  AND domain_id IS NOT NULL;

DROP FUNCTION IF EXISTS public._classify_sat_skill(text, text);
DROP FUNCTION IF EXISTS public._sat_skill_label(text);
