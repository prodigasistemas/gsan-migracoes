-- // insert permissao especial cancelamento parcelamento
-- Migration SQL that makes the change goes here.

insert into seguranca.permissao_especial(pmep_id, pmep_dspermissaoespecial, pmep_icuso, pmep_tmultimaalteracao, oper_id)
values (205, 'CANCELAR PARCELAMENTO SEM ENTRADA', 1, now(), 226);

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.permissao_especial where pmep_id = 205; 
