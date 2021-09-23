-- // insert_funcionalidade_batch_gerar_credito_bolsa_agua.sql
-- Migration SQL that makes the change goes here.

insert into seguranca.funcionalidade VALUES 
    (16087, 8, 'Gerar Credito Bolsa Agua', now(), null, null, 2, 'GECRBOAG', 0, 2, 2, NULL, NULL);

insert into batch.processo_funcionalidade values 
    (nextval('batch.seq_processo_funcionalidade'), 2, now(), 1, 11, 16087, 1, null);


-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.processo_funcionalidade WHERE FNCD_ID = 16087;

delete from seguranca.funcionalidade where FNCD_ID = 16087;
