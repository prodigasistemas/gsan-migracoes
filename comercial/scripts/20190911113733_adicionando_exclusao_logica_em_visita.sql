-- // adicionando_exclusao_logica_em_visita
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.visita
  ADD COLUMN "vist_icexclusao" BOOLEAN NOT NULL DEFAULT FALSE;

COMMENT ON COLUMN atualizacaocadastral.visita.vist_icexclusao IS 'Indicador logico de exclusao do registro, preenchido no momento da reprovacao do lote';




-- //@UNDO
-- SQL to undo the change goes here.


ALTER TABLE atualizacaocadastral.visita DROP COLUMN "vist_icexclusao";