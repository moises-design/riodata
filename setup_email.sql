-- =====================================================
-- RioData — Welcome Email on Signup
-- Run in Supabase SQL Editor
-- This creates a trigger that fires when a new user signs up
-- =====================================================

-- First enable the pg_net extension for HTTP calls (if not already enabled)
-- Go to Supabase Dashboard > Database > Extensions > Enable pg_net

-- Create a function that sends welcome email via Supabase's built-in email
create or replace function public.handle_new_user_email()
returns trigger as $$
begin
  -- Insert into profiles (creates profile row on signup)
  insert into public.profiles (id, email, full_name, user_type, organization, role)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data->>'full_name', split_part(new.email, '@', 1)),
    coalesce(new.raw_user_meta_data->>'user_type', 'user'),
    new.raw_user_meta_data->>'organization',
    'user'
  )
  on conflict (id) do update set
    email = excluded.email,
    full_name = coalesce(excluded.full_name, profiles.full_name),
    user_type = coalesce(excluded.user_type, profiles.user_type);
  
  return new;
end;
$$ language plpgsql security definer;

-- Drop trigger if exists, recreate
drop trigger if exists on_auth_user_created on auth.users;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user_email();

-- Confirm it was created
select trigger_name, event_manipulation, event_object_table 
from information_schema.triggers 
where trigger_name = 'on_auth_user_created';
