create table if not exists public.replies (
  id uuid primary key default gen_random_uuid(),
  message text not null check (char_length(message) between 1 and 500),
  created_at timestamptz not null default now()
);

alter table public.replies enable row level security;

-- Ziyaretçi yalnızca mesaj ekleyebilir; okuma/silme/güncelleme yok.
-- Mesajları Supabase panelindeki Table Editor'den sen okursun.
create policy "anon can insert replies"
  on public.replies for insert
  to anon
  with check (true);

grant insert on public.replies to anon;
