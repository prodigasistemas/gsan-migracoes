-- // alterar_campos_not_null
-- Migration SQL that makes the change goes here.
-- Table: cadastro.cliente_login

ALTER TABLE cadastro.cliente_login ALTER COLUMN cllo_dtnascimento DROP NOT NULL;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.cliente_login ALTER COLUMN cllo_dtnascimento NOT NULL;