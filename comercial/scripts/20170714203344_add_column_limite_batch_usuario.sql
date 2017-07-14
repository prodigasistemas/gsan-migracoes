-- // add_column_limite_batch_usuario
-- Migration SQL that makes the change goes here.

ALTER TABLE seguranca.usuario ADD COLUMN usur_limitebatch smallint;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE seguranca.usuario DROP COLUMN usur_limitebatch;
