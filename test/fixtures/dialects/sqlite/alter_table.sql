ALTER TABLE users RENAME TO people;

ALTER TABLE users RENAME COLUMN user_id TO person_id;

ALTER TABLE users ADD COLUMN name TEXT UNIQUE;

ALTER TABLE users
ADD COLUMN credentials_last_changed
INTEGER NOT NULL DEFAULT 0;

ALTER TABLE users
ADD COLUMN credentials_last_changed
TEXT NOT NULL DEFAULT '0001-01-01T00:00:00.000000+00:00';

ALTER TABLE users DROP COLUMN age;
