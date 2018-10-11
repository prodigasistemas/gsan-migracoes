-- // add colunas na tabela visita
-- Migration SQL that makes the change goes here.
ALTER TABLE atualizacaocadastral.visita ADD COLUMN vist_nncoordenadax character varying(50);
COMMENT ON COLUMN atualizacaocadastral.visita.vist_nncoordenadax IS 'coordenada X do imovel';

ALTER TABLE atualizacaocadastral.visita ADD COLUMN vist_nncoordenaday character varying(50);
COMMENT ON COLUMN atualizacaocadastral.visita.vist_nncoordenaday IS 'coordenada Y do imovel';

-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE atualizacaocadastral.visita DROP COLUMN vist_nncoordenadax;
ALTER TABLE atualizacaocadastral.visita DROP COLUMN vist_nncoordenaday;
