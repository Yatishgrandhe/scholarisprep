BEGIN;
UPDATE public.questions SET
  difficulty = 'hard',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7bf85aaf-0a97-4ca3-a28d-b3f869f2f315';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '09dc1590-ae6f-4d9f-8c63-2b27c72cf003';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0ef2dd3b-bcfe-4a01-be93-f39a791b573c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1ab343a8-3ef9-421f-b367-e216c43786b3';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1e032bfa-8de9-4c77-b566-77dc8901ec8c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3c1f1412-6d65-4fa2-b2ec-8825b020b174';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5ff0d9a6-7195-431d-b683-0dc4bc8b906d';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6d2d6a67-3180-4adc-b0eb-aca8290b59de';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '74347a51-fd9b-4469-826d-819a59e8ce38';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '82441e2c-2c43-43d0-b630-1d22674bd5fe';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a385e114-4b4c-4a9d-9561-2ba9e53304d4';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'af9bce05-2412-49d0-a570-f2e0e4cd2dd1';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c10505bc-b9cf-4dee-a2fb-33d8f224bf2e';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3b686486-2911-4e3e-9e38-3735442d1426';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3f594f17-2d99-4e44-b979-c92e637b67fe';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4fd99e9f-02b1-4bb1-9cbc-5a5c2d12ab39';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.455Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '550656a3-92d6-45b6-892a-3be0e081a24a';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5b7bf390-cf41-435e-a5d4-36761f381f85';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '66f30816-ac74-4e72-9dab-d5da3682b591';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '81a179bc-4a9a-45db-a6ac-c5def58ba1ef';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a01df2bd-1027-4bec-b97d-d115da8f20f4';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b2eaa9bc-fd66-44ec-86bf-f3f64ed5a9f8';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c38785c6-602a-43f3-a8ac-639880caedfe';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'de18602d-4f5e-4e37-b8bf-638df467f891';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1747770a-920c-4520-9546-6f9b3066df1c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '336105f8-a983-40a2-acde-bf526988744f';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '49288293-8f9a-4202-8fb7-e6c61a511988';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6be0e07d-0040-4784-8b3b-1c405344a1ee';
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '320b285f-1920-433f-97b0-9106b166c966';
UPDATE public.questions SET
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"hard","rebalance_from":"hard","rebalance_to":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0eb6ec9f-05a9-4411-9703-b745b4473587';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0a2e10ba-9afa-4014-9185-4ce72afd57c3';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1557aafe-647d-46b0-8fd0-b65344453dab';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '24764cd8-a419-4caa-a0d0-7fa84d67d072';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3b44c767-8050-45c3-8abb-901412200061';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8c9b8dae-c821-4a0f-8dc6-47e62feaf77c';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '95586934-d917-49ae-9028-4ae000641b7f';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '018fd0c1-1a41-4234-86c0-5977d3ae6593';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '03764c9d-6d23-4fca-a102-f365836d7529';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '04dafa33-1d18-4567-805a-6c6f6f6243e3';
UPDATE public.questions SET
  difficulty = 'easy',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"math_difficulty_rebalance":"math_difficulty_rebalance_v1","math_difficulty_rebalanced_at":"2026-06-12T21:40:02.456Z","rebalance_method":"rebalance-math-difficulty.mjs","prior_difficulty":"medium","rebalance_from":"medium","rebalance_to":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '052dcad8-12be-4645-80f1-f9cded778ef4';
COMMIT;
