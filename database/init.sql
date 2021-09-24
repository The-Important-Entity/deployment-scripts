
CREATE DATABASE account_data;
\c account_data
CREATE SCHEMA organization;


CREATE TABLE organization.organization (
	id serial PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE organization.access_keys (
      app_id VARCHAR(150) NOT NULL,
      secret VARCHAR(150) NOT NULL,
      org_id INT NOT NULL,
      CONSTRAINT fk_org_id
        FOREIGN KEY(org_id)
	REFERENCES organization.organization(id) ON DELETE CASCADE
);

CREATE ROLE organization_readonly LOGIN PASSWORD 'jds81799';
GRANT CONNECT ON DATABASE account_data TO organization_readonly;
GRANT USAGE ON SCHEMA organization TO organization_readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA organization TO organization_readonly;