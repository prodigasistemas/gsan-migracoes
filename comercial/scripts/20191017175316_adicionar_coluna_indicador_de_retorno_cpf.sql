-- // adicionar coluna indicador de retorno cpf
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.cliente_retorno
  ADD COLUMN "clir_ictransmissaocpfcnpj" SMALLINT NULL;

COMMENT ON COLUMN atualizacaocadastral.cliente_retorno.clir_ictransmissaocpfcnpj IS 'Indicador se na transmissao veio ou nao informacao de CPF/CNPJ';




-- //@UNDO
-- SQL to undo the change goes here.


ALTER TABLE atualizacaocadastral.cliente_retorno DROP COLUMN "clir_ictransmissaocpfcnpj";