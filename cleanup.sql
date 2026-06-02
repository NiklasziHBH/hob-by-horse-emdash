-- Remove old demo projects and their taxonomy links
DELETE FROM content_taxonomies WHERE collection = 'projects';
DELETE FROM revisions WHERE collection = 'projects';
DELETE FROM ec_projects;

-- Remove old taxonomy terms (old portfolio template terms)
DELETE FROM taxonomies;

-- Remove old menu items and re-insert HBH navigation
DELETE FROM _emdash_menu_items;

-- Update site settings to HBH
UPDATE options SET value = '"Hob by Horse"' WHERE name = 'site:title';
UPDATE options SET value = '"Digital Experience Agency"' WHERE name = 'site:tagline';
