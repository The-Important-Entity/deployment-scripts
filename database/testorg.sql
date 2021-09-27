\c account_data
INSERT INTO organization.organization(name) VALUES ('tech-solutions');
INSERT INTO organization.security_groups(org_id, alias) VALUES (1, 'Namespace Permissions');
INSERT INTO organization.security_perms(group_id, namespace, read_perm, write_perm) VALUES (1, 'joe-namespace', 1, 1);
INSERT INTO organization.namespaces(org_id, name) VALUES (1, 'joe-namespace');
INSERT INTO organization.access_keys(app_id, secret, group_id) VALUES ('TWBQWFXJUEJB52OLSNGN6JLP1FZHR2N1FU9YYJULPH9CPFXB02', 'Z1oQmWh6l8mfmprEApi3ffI0l6pDXbGIQG6DKvtYPBCyeSdjc9GWoOAgP0Vi65IbRpPp8aauH99', 1);


SELECT 
    organization.access_keys.group_id,
    organization.access_keys.secret, 
    organization.security_perms.read_perm, 
    organization.security_perms.write_perm
FROM 
    organization.access_keys, 
    organization.security_perms 
WHERE organization.access_keys.app_id='TWBQWFXJUEJB52OLSNGN6JLP1FZHR2N1FU9YYJULPH9CPFXB02' 
AND organization.access_keys.group_id=organization.security_perms.group_id
AND organization.security_perms.namespace='joe-namespace';