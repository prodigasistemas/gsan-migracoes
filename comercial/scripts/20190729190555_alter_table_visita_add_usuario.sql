-- // alter table visita add usuario
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.visita ADD COLUMN usur_id integer;
ALTER TABLE atualizacaocadastral.visita ADD CONSTRAINT fk1_visita FOREIGN KEY (usur_id) REFERENCES seguranca.usuario (usur_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;
COMMENT ON COLUMN atualizacaocadastral.visita.usur_id IS 'usuario que efetuou a visita';

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.visita DROP COLUMN usur_id;
