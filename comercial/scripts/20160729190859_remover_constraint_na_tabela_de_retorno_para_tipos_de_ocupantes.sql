-- // remover constraint na tabela de retorno para tipos de ocupantes
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno
  DROP CONSTRAINT fk1_imovel_tipo_ocupante_quantidade_retorno;


-- //@UNDO
-- SQL to undo the change goes here.

