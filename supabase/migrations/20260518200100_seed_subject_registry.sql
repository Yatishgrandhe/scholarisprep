-- Seed subject_registry (core exams + AP subjects)

INSERT INTO public.subject_registry (
  exam_type, display_name, short_code, description, sections, topics,
  score_range, time_limits, question_formats, calculator_policy,
  has_stimulus, stimulus_types, passing_score, total_questions_full_exam, exam_duration_minutes
) VALUES
(
  'SAT', 'SAT', 'SAT', 'Digital SAT: Reading, Writing & Math',
  '["Reading and Writing", "Math"]'::jsonb,
  '["Linear Equations", "Quadratic Equations", "Systems of Equations", "Inequalities", "Ratios and Proportions", "Percentages", "Statistics and Data Analysis", "Geometry", "Trigonometry", "Functions", "Vocabulary in Context", "Main Idea and Purpose", "Command of Evidence", "Transitions", "Rhetorical Synthesis", "Cross-Text Connections"]'::jsonb,
  '{"min": 400, "max": 1600, "section_min": 200, "section_max": 800}'::jsonb,
  '{"reading_writing_minutes": 64, "math_minutes": 70}'::jsonb,
  '["multiple_choice", "grid_in"]'::jsonb,
  'graphing', true, ARRAY['passage', 'poem', 'data_table', 'paired_passages'],
  1050, 98, 134
),
(
  'ACT', 'ACT', 'ACT', 'English, Math, Reading & Science',
  '["English", "Mathematics", "Reading", "Science"]'::jsonb,
  '["Grammar and Mechanics", "Rhetorical Skills", "Pre-Algebra", "Elementary Algebra", "Intermediate Algebra", "Coordinate Geometry", "Plane Geometry", "Trigonometry", "Reading Comprehension", "Inference", "Scientific Reasoning", "Data Interpretation", "Experimental Design"]'::jsonb,
  '{"min": 1, "max": 36, "composite": true}'::jsonb,
  '{"english_minutes": 45, "math_minutes": 60, "reading_minutes": 35, "science_minutes": 35}'::jsonb,
  '["multiple_choice"]'::jsonb,
  'scientific', true, ARRAY['passage', 'data_table'],
  21, 215, 175
),
(
  'JAMB', 'JAMB UTME', 'JAMB', 'UTME prep for Nigerian universities',
  '["English Language", "Mathematics", "Physics", "Chemistry", "Biology", "Agricultural Science", "Economics", "Government", "Literature"]'::jsonb,
  '["Comprehension", "Lexis and Structure", "Algebra", "Geometry", "Mechanics", "Organic Chemistry", "Cell Biology", "Microeconomics", "Political Systems", "Literary Devices"]'::jsonb,
  '{"min": 0, "max": 400}'::jsonb,
  '{"total_minutes": 120}'::jsonb,
  '["multiple_choice"]'::jsonb,
  'none', false, ARRAY[]::text[],
  200, 180, 120
),
(
  'GRE', 'GRE General', 'GRE', 'Graduate school admissions test',
  '["Verbal Reasoning", "Quantitative Reasoning", "Analytical Writing"]'::jsonb,
  '["Reading Comprehension", "Text Completion", "Sentence Equivalence", "Arithmetic", "Algebra", "Geometry", "Data Analysis", "Issue Essay", "Argument Essay"]'::jsonb,
  '{"min": 260, "max": 340, "verbal_min": 130, "verbal_max": 170, "quant_min": 130, "quant_max": 170}'::jsonb,
  '{"verbal_minutes": 41, "quant_minutes": 47, "writing_minutes": 60}'::jsonb,
  '["multiple_choice", "text_completion", "essay"]'::jsonb,
  'scientific', true, ARRAY['passage', 'data_table'],
  310, 82, 148
),
(
  'AP_BIOLOGY', 'AP Biology', 'AP_BIO', 'College-level biology',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Chemistry of Life", "Cells", "Cellular Energetics", "Cell Communication", "Heredity", "Gene Expression", "Natural Selection", "Ecology"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 90}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'none', true, ARRAY['passage', 'data_table', 'diagram'],
  3, 60, 180
),
(
  'AP_CHEMISTRY', 'AP Chemistry', 'AP_CHEM', 'College-level chemistry',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Atomic Structure", "Molecular Structure", "Intermolecular Forces", "Chemical Reactions", "Kinetics", "Thermodynamics", "Equilibrium", "Acids and Bases"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 105}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'scientific', true, ARRAY['data_table', 'diagram'],
  3, 60, 195
),
(
  'AP_PHYSICS', 'AP Physics', 'AP_PHYS', 'Algebra-based physics',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Kinematics", "Forces", "Energy", "Momentum", "Rotation", "Oscillations", "Electricity", "Waves"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 90}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'scientific', true, ARRAY['diagram', 'data_table'],
  3, 50, 180
),
(
  'AP_CALCULUS_AB', 'AP Calculus AB', 'AP_CALC_AB', 'Limits, derivatives, integrals',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Limits", "Derivatives", "Applications of Derivatives", "Integrals", "Applications of Integrals", "Differential Equations"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 90}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'graphing', false, ARRAY[]::text[],
  3, 45, 180
),
(
  'AP_CALCULUS_BC', 'AP Calculus BC', 'AP_CALC_BC', 'Calculus AB plus series',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Limits", "Derivatives", "Integrals", "Series", "Parametric Equations", "Polar Functions", "Vector Functions"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 90}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'graphing', false, ARRAY[]::text[],
  3, 45, 180
),
(
  'AP_STATISTICS', 'AP Statistics', 'AP_STAT', 'Data analysis and inference',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Exploring Data", "Sampling", "Probability", "Random Variables", "Inference for Means", "Inference for Proportions", "Chi-Square Tests", "Regression"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 90}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'graphing', true, ARRAY['data_table'],
  3, 40, 180
),
(
  'AP_ENGLISH', 'AP English Language', 'AP_ENG', 'Rhetoric and composition',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Rhetorical Situation", "Claims and Evidence", "Reasoning", "Style", "Synthesis", "Argument", "Analysis"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 60, "section2_minutes": 135}'::jsonb,
  '["multiple_choice", "free_response", "essay"]'::jsonb,
  'none', true, ARRAY['passage', 'paired_passages'],
  3, 45, 195
),
(
  'AP_US_HISTORY', 'AP US History', 'AP_USH', 'United States history',
  '["Multiple Choice", "Short Answer", "DBQ", "Long Essay"]'::jsonb,
  '["Colonial America", "Revolution", "Civil War", "Industrialization", "World Wars", "Cold War", "Civil Rights", "Modern America"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 95, "section2_minutes": 100}'::jsonb,
  '["multiple_choice", "short_answer", "essay"]'::jsonb,
  'none', true, ARRAY['passage', 'primary_source'],
  3, 55, 195
),
(
  'AP_WORLD_HISTORY', 'AP World History', 'AP_WLH', 'Global historical developments',
  '["Multiple Choice", "Short Answer", "DBQ", "Long Essay"]'::jsonb,
  '["Ancient Civilizations", "Classical Empires", "Trade Networks", "Revolutions", "Industrialization", "Imperialism", "World Wars", "Globalization"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 95, "section2_minutes": 100}'::jsonb,
  '["multiple_choice", "short_answer", "essay"]'::jsonb,
  'none', true, ARRAY['passage', 'primary_source', 'map'],
  3, 55, 195
),
(
  'AP_PSYCHOLOGY', 'AP Psychology', 'AP_PSY', 'Scientific study of behavior',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Biological Bases", "Sensation and Perception", "Learning", "Cognition", "Development", "Motivation", "Personality", "Abnormal Psychology", "Social Psychology"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 70, "section2_minutes": 50}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'none', false, ARRAY[]::text[],
  3, 100, 120
),
(
  'AP_ECONOMICS', 'AP Microeconomics', 'AP_ECON', 'Microeconomic principles',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Basic Economic Concepts", "Supply and Demand", "Production and Cost", "Market Structures", "Factor Markets", "Market Failure"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 70, "section2_minutes": 60}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'none', true, ARRAY['graph', 'data_table'],
  3, 60, 130
),
(
  'AP_COMPUTER_SCIENCE', 'AP Computer Science A', 'AP_CSA', 'Java programming',
  '["Multiple Choice", "Free Response"]'::jsonb,
  '["Primitive Types", "Using Objects", "Boolean Expressions", "Iteration", "Writing Classes", "Array", "ArrayList", "2D Array", "Inheritance", "Recursion"]'::jsonb,
  '{"min": 1, "max": 5}'::jsonb,
  '{"section1_minutes": 90, "section2_minutes": 90}'::jsonb,
  '["multiple_choice", "free_response"]'::jsonb,
  'none', false, ARRAY[]::text[],
  3, 40, 180
)
ON CONFLICT (exam_type) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  short_code = EXCLUDED.short_code,
  description = EXCLUDED.description,
  sections = EXCLUDED.sections,
  topics = EXCLUDED.topics,
  score_range = EXCLUDED.score_range,
  time_limits = EXCLUDED.time_limits,
  question_formats = EXCLUDED.question_formats,
  calculator_policy = EXCLUDED.calculator_policy,
  has_stimulus = EXCLUDED.has_stimulus,
  stimulus_types = EXCLUDED.stimulus_types,
  passing_score = EXCLUDED.passing_score,
  total_questions_full_exam = EXCLUDED.total_questions_full_exam,
  exam_duration_minutes = EXCLUDED.exam_duration_minutes;
