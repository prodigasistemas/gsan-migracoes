-- // adicionar indicador geracao boleto bb em sistema parametro
-- Migration SQL that makes the change goes here.
ALTER TABLE cadastro.sistema_parametros ADD COLUMN parm_icgeracaoboletobb smallint DEFAULT 1;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE cadastro.sistema_parametros DROP COLUMN parm_icgeracaoboletobb;

