-- // alter table client atlz cadast numero nis
-- Migration SQL that makes the change goes here.

--ALTER TABLE atualizacaocadastral.cliente_retorno
--ADD COLUMN "clir_nnnis" VARCHAR(20);
--
--COMMENT ON COLUMN atualizacaocadastral.cliente_retorno.clir_nnnis IS 'Numero NIS do Cliente, se exisir';

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.cliente_retorno DROP COLUMN clir_nnnis;
