-- // remover_constraint_historico_arquivo_retorno
-- Migration SQL that makes the change goes here.
ALTER TABLE atualizacaocadastral.historico_arquivo_retorno ALTER COLUMN empr_id DROP NOT NULL


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE atualizacaocadastral.historico_arquivo_retorno ALTER COLUMN empr_id SET NOT NULL

