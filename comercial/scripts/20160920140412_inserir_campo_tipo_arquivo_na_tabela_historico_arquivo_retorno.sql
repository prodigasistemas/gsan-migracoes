-- // inserir_campo_tipo_arquivo_na_tabela_historico_arquivo_retorno
-- Migration SQL that makes the change goes here.
ALTER TABLE atualizacaocadastral.historico_arquivo_retorno ADD COLUMN hiar_tipo_arquivo character varying(255);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE atualizacaocadastral.historico_arquivo_retorno DROP COLUMN hiar_tipo_arquivo;


