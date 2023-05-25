begin;
create table sigs.user_group (
  id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  charter_link text,
  contact jsonb,
  dir text,
  label text,
  leadership jsonb,
  meetings jsonb,
  mission_statement text,
  name text,
  subprojects jsonb
  );

comment on table sigs.user_group is 'each usergroup in the kubernetes sigs.yaml';

commit;
select 'Created sigs.user_group table' as "Build Log";
