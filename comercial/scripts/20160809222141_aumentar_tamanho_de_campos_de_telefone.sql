-- // aumentar tamanho de campos de telefone
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.cliente_fone_retorno
  ALTER COLUMN clfr_nnfone type character varying(11);

ALTER TABLE cadastro.cliente_fone
  ALTER COLUMN cfon_nnfone type character varying(11);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.cliente_fone_retorno
  ALTER COLUMN clfr_nnfone type character varying(9);

ALTER TABLE cadastro.cliente_fone
  ALTER COLUMN cfon_nnfone type character varying(9);

