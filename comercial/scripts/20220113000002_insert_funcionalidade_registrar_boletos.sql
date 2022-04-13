-- // insert_funcionalidade_batch_registrar_boletos.sql
-- Migration SQL that makes the change goes here.

insert into seguranca.funcionalidade VALUES 
    (16090, 7, 'Registrar Boletos', now(), 'Gsan/Faturamento', null, 2, 'REGIBOLE', 0, 2, 2, NULL, NULL);

insert into batch.processo_funcionalidade values 
    (2001, 2, now(), 1, 12, 16090, 1, null);


-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.processo_funcionalidade WHERE FNCD_ID = 16090;

delete from seguranca.funcionalidade where FNCD_ID = 16090;
