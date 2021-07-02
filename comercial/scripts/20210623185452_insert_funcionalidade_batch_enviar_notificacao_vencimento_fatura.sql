-- // insert_funcionalidade_batch_enviar_notificacao_vencimento_fatura.sql
-- Migration SQL that makes the change goes here.

insert into seguranca.funcionalidade 
VALUES (16078, 7, 'Enviar notificação de vencimento por email', now(), 
'Gsan/Faturamento', 'sem url', 1, 'ENNOVEEM', 0, 2, 2, NULL, NULL);

insert into batch.processo
values
(511,'ENVIAR NOTIFICAÇÃO DE VENCIMENTO','ENNOVE',1,now(),7,null,2,0,null,0);

insert into batch.processo_funcionalidade values 
(nextval('batch.seq_processo_funcionalidade'), 
(select proc_id from batch.processo where proc_dsprocesso = 'ENVIAR NOTIFICAÇÃO DE VENCIMENTO'),
 now(), 6, 1, 
 (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade = 'Enviar notificação de vencimento por email'), 
 1, null);


insert into faturamento.parametro values 
 (nextval('faturamento.seq_faturamento_parametro'), 'QUANTIDADE_DIAS_FATURA_VENCIDA', '10');

 insert into cadastro.envio_email values
 (55, 'gsan@cosanpa.pa.gov.br', '', 'Conta em Aberto', 'Conta em Aberto',
 (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade = 'Enviar notificação de vencimento por email'),
 NOW());

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.envio_email where enem_id = 55;

delete from batch.processo_funcionalidade WHERE 
FNCD_ID IN (SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE 
like 'Enviar notificação de vencimento por email');

delete from batch.processo where proc_dsprocesso like 'ENVIAR NOTIFICAÇÃO DE VENCIMENTO';

delete from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Enviar notificação de vencimento por email';

delete from faturamento.parametro where nome = 'QUANTIDADE_DIAS_FATURA_VENCIDA';




