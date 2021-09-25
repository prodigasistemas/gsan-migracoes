-- // add columns numero nis e flag bolsa familia tabela cliente
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.cliente ADD COLUMN clie_nnnis character varying(11);
ALTER TABLE cadastro.cliente ADD COLUMN clie_icbolsafamilia smallint default 2;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.cliente DROP COLUMN clie_nnnis;
ALTER TABLE cadastro.cliente DROP COLUMN clie_icbolsafamilia;
