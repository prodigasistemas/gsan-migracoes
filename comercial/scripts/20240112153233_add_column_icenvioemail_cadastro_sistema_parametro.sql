-- // add_cadastro_sistema_parametro
-- Migration SQL that makes the change goes here.

alter table cadastro.sistema_parametros add column parm_icenvioemail int2;

-- //@UNDO
-- SQL to undo the change goes here.


