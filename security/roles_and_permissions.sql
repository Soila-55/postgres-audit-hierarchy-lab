-- Create application roles

CREATE ROLE app_read;
CREATE ROLE app_write;

-- Allow roles to connect to the database
GRANT CONNECT ON DATABASE bootcamp TO app_read;
GRANT CONNECT ON DATABASE bootcamp TO app_write;

-- Allow access to the public schema
GRANT USAGE ON SCHEMA public TO app_read;
GRANT USAGE ON SCHEMA public TO app_write;

-- Read-only permissions
GRANT SELECT
ON ALL TABLES IN SCHEMA public
TO app_read;

-- Read/write permissions
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO app_write;

-- Sequence permissions required for SERIAL columns
GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO app_write;
