-- CRIACAO DE USUARIOS/ROLES, DATABASE, TABLESPACE

CREATE ROLE role_users NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;
CREATE ROLE role_aplic NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE gsan_admin LOGIN PASSWORD 'gsan_admin' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE gsan_batch LOGIN PASSWORD 'gsan_batch' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE gsan_dba   LOGIN PASSWORD 'gsan_dba' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE gsan_olap  LOGIN PASSWORD 'gsan_olap'   NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE gsan_online LOGIN PASSWORD 'gsan_online' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

-- ATRIBUICAO DE PRIVILEGIOS

GRANT role_aplic TO gsan_batch;
GRANT role_aplic TO gsan_olap;
GRANT role_aplic TO gsan_online;

GRANT role_users TO gsan_admin;
GRANT role_users TO gsan_batch;
GRANT role_users TO gsan_dba;
GRANT role_users TO gsan_online;
