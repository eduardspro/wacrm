-- ============================================================
-- 031_ai_deepseek_provider.sql
--
-- Adds 'deepseek' to the ai_configs.provider CHECK constraint so the
-- dashboard can configure DeepSeek as an AI provider. DeepSeek's API
-- is OpenAI-compatible — the same Chat Completions endpoint shape,
-- just a different base URL.
-- ============================================================

ALTER TABLE ai_configs DROP CONSTRAINT IF EXISTS ai_configs_provider_check;
ALTER TABLE ai_configs ADD CONSTRAINT ai_configs_provider_check
  CHECK (provider IN ('openai', 'anthropic', 'deepseek'));
