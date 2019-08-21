-- // adicionando_coluna_vist_tmvisita_na_tabela_visitasa
-- Migration SQL that makes the change goes here.
ALTER TABLE atualizacaocadastral.visita ADD COLUMN vist_tmvisita timestamp;
COMMENT ON COLUMN atualizacaocadastral.visita.vist_tmvisita IS 'Data e hora em que o cadastrista visitou o imovel';


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE atualizacaocadastral.visita DROP COLUMN vist_tmvisita;

