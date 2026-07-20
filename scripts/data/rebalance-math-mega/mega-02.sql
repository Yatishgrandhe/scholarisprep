BEGIN;
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f63d18bd-0f5d-4513-aed9-89f05aefe9dc';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '120efc2c-792d-4311-a7e0-68f20347571d';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2ac43a25-5824-4ff5-89c6-4976904f37a8';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e78aa547-6cb5-4936-9b07-adf17a02bb7c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0aeb8afc-48b3-4e47-a52e-d106cca2ff49';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0b1951a6-dea8-4ca3-8038-08eae578db3d';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1eb74ff8-302b-490c-b713-4eb5f419fe6b';
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0bf0247f-9d7c-435a-b6b3-cb5388828af0';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '68d2d2af-7356-4b10-bb0b-753f40f61292';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd49dcf20-e816-40d1-8753-9bb06b16dd5d';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '12f0a0ca-31fa-4979-ade1-c20647a76cd2';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '21f91182-2be8-4565-828b-0e9cd8616175';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '380182da-18be-4a1d-a9a2-991af878aac7';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3ee4c039-b4fe-41c0-aa76-85b51fe4b7ce';
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3437398f-75ba-4c87-ae93-015f098dd038';
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '36181860-7e83-458c-bdf3-1b148c494867';
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '460a17b0-9669-4339-8d1d-94c0ff501447';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0162dc7f-f0a0-4b50-b5cb-38ac2b75cf66';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '02154eb1-882d-4ae3-88c8-9c1af8f0c36c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '067b5c49-586c-4b69-848a-97d01d0bf556';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0a2f2c40-323a-47b3-9401-9e325f0c7383';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0cc6bd34-fd7f-4013-9aeb-8ff03f809c02';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '12e34e34-f4e4-415b-9e11-7992579333cd';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '18828a6e-70a1-4949-99c8-4bcd468f151b';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '199fbc92-dc48-459f-9545-c67bc6a3905d';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1c190465-bc5f-4a0f-af60-81db2bd65512';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '20e0428c-bac7-4c2c-9ff8-6323c88a7afe';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '21a3455c-96fa-4c5f-8ddf-4cba7802b4d8';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2e0c4a76-ba19-4ec1-a124-948e1505848f';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '317a12b0-a88a-41b7-8442-0ba418a5a722';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '31f81897-1b25-4fb5-8017-a83c175ae166';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '36a243f3-77be-4ef3-879c-d175454cf0b0';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3a1edd3b-2421-4d50-a3b4-f359041b294a';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3d8ac478-f800-46d3-b251-238d611203fc';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3f00276f-db0c-4f2b-9dc3-8de2091e93f5';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '40d34b0c-b6a0-4bc9-8286-e69bb37c53bf';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4592e2b0-ccbd-4189-8d14-68180880e33b';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '45c56393-d0eb-43f8-8181-a60ff136e295';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4873e4f8-1b4d-494a-af59-c89c1ac0330c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4eb568bc-4499-427d-894b-1d57cf0202e0';
COMMIT;
