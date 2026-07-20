-- Optional admin notes on content moderation reports
alter table public.content_reports
  add column if not exists admin_notes text;
