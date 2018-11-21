-- // Add indicador de imagem atualizada na imagem retorno
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.imagem_retorno ADD COLUMN imgr_icimagematualizada smallint;
COMMENT ON COLUMN atualizacaocadastral.imagem_retorno.imgr_icimagematualizada IS 'indicador se a imagem foi atualizada.';


-- //@UNDO
-- SQL to undo the change goes here.


ALTER TABLE atualizacaocadastral.imagem_retorno DROP COLUMN imgr_icimagematualizada;