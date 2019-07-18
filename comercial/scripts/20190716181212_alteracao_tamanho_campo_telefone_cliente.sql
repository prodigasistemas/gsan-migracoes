-- // alteracao tamanho campo telefone cliente
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.cliente_fone ALTER COLUMN cfon_nnfone TYPE character varying(9);
ALTER TABLE atualizacaocadastral.cliente_fone_retorno ALTER COLUMN clfr_nnfone TYPE character varying(9);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.cliente_fone ALTER COLUMN cfon_nnfone TYPE character varying(11);
ALTER TABLE atualizacaocadastral.cliente_fone_retorno ALTER COLUMN clfr_nnfone TYPE character varying(11);