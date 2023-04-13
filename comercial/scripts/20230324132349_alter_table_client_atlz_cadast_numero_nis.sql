-- // alter table client atlz cadast numero nis
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.cliente_atlz_cadastral
ADD COLUMN "clac_nnnis" VARCHAR(20);

COMMENT ON COLUMN cadastro.cliente_atlz_cadastral.clac_nnnis IS 'Numero NIS do Cliente, se exisir';

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.cliente_atlz_cadastral DROP COLUMN clac_nnnis;


