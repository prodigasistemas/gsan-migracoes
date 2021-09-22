-- // insert_funcionalidade_batch_gerar_credito_bolsa_agua.sql
-- Migration SQL that makes the change goes here.

insert into seguranca.funcionalidade 
VALUES (NEXTVAL('seguranca.seq_funcionalidade'), 7, 'Gerar credito bolsa agua', now(), 
'Gsan/Faturamento', 'sem url', 1, 'GECRBOAG', 0, 2, 2, NULL, NULL);

insert into batch.processo
values
(nextval('batch.seq_processo'),'GERAR CREDITO BOLSA AGUA','GECRBOAG',1,now(),5,null,2,0,null,0);

insert into batch.processo_funcionalidade values 
(nextval('batch.seq_processo_funcionalidade'), 
(select proc_id from batch.processo where proc_dsprocesso = 'GERAR CREDITO BOLSA AGUA'),
 now(), 6, 1, 
 (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade = 'Gerar credito bolsa agua'), 
 1, null);


-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.processo_funcionalidade WHERE 
FNCD_ID IN (SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE 
like 'Gerar credito bolsa agua');

delete from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Gerar credito bolsa agua';

delete from batch.processo where proc_dsprocesso like 'GERAR CREDITO BOLSA AGUA';