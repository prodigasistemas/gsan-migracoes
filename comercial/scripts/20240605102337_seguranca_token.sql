-- // new_index
-- Migration SQL that makes the change goes here.

insert into seguranca.parametro values (18, 'INDICADOR_VALIDA_TOKEN', '2');

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.parametro where id = 18;
