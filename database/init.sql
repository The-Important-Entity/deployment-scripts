
CREATE DATABASE account_data;
\c account_data
CREATE SCHEMA organization;


CREATE TABLE organization.organization (
	id serial PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE organization.security_groups (
  id serial PRIMARY KEY NOT NULL,
  org_id INT NOT NULL,
  alias VARCHAR(50),
  CONSTRAINT fk_org_id
    FOREIGN KEY(org_id)
    REFERENCES organization.organization(id) ON DELETE CASCADE
);

CREATE TABLE organization.security_perms (
  id serial PRIMARY KEY NOT NULL,
  group_id INT NOT NULL,
  namespace VARCHAR(150) NOT NULL,
  read_perm INT NOT NULL,
  write_perm INT NOT NULL,
  CONSTRAINT fk_group_id
    FOREIGN KEY(group_id)
    REFERENCES organization.security_groups(id)
);

CREATE TABLE organization.access_keys (
  id serial PRIMARY KEY NOT NULL,
  group_id INT NOT NULL,
  app_id VARCHAR(150) NOT NULL UNIQUE,
  secret VARCHAR(150) NOT NULL UNIQUE,
  CONSTRAINT fk_group_id
    FOREIGN KEY(group_id)
    REFERENCES organization.security_groups(id)
);

CREATE TABLE organization.namespaces (
  id serial PRIMARY KEY NOT NULL,
  org_id INT NOT NULL,
  name VARCHAR(150) NOT NULL UNIQUE,
  CONSTRAINT fk_org_id
    FOREIGN KEY(org_id)
    REFERENCES organization.organization(id) ON DELETE CASCADE
);

CREATE ROLE organization_readonly LOGIN PASSWORD 'jds81799';
GRANT CONNECT ON DATABASE account_data TO organization_readonly;
GRANT USAGE ON SCHEMA organization TO organization_readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA organization TO organization_readonly;