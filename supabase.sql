-- Exécuter dans Supabase SQL Editor après avoir créé le projet.
create table if not exists public.content (
 id text primary key, type text not null, title text not null, text text not null,
 special text, tier text, active boolean not null default true
);
create table if not exists public.admins (user_id uuid primary key references auth.users(id) on delete cascade);
alter table public.content enable row level security;
alter table public.admins enable row level security;
create policy "public read active content" on public.content for select using (active = true or exists(select 1 from public.admins where user_id=auth.uid()));
create policy "admin read self" on public.admins for select to authenticated using (user_id=auth.uid());
create policy "admin insert content" on public.content for insert to authenticated with check (exists(select 1 from public.admins where user_id=auth.uid()));
create policy "admin update content" on public.content for update to authenticated using (exists(select 1 from public.admins where user_id=auth.uid())) with check (exists(select 1 from public.admins where user_id=auth.uid()));
create policy "admin delete content" on public.content for delete to authenticated using (exists(select 1 from public.admins where user_id=auth.uid()));
-- Après création de ton compte dans Supabase Auth, insérer son UUID ici :
-- insert into public.admins(user_id) values ('TON-UUID-ADMIN');
-- Importer ensuite content.json dans public.content (ajouter active=true à chaque entrée).
-- IMPORTANT : dans cette V1, les découvertes de Léa sont stockées localement dans son navigateur.
-- Pour une synchronisation multi-appareils, ajouter Auth Léa + table history protégée par RLS.
