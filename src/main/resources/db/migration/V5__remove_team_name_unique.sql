-- Remove unique constraint from teams.name
ALTER TABLE teams DROP CONSTRAINT IF EXISTS teams_name_key; 