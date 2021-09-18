-- // Add funcionalidade envio norificacao aviso corte
-- Migration SQL that makes the change goes here.

insert into seguranca.funcionalidade 
VALUES (16080, 3, 'Enviar notificação de aviso de corte', now(), 
'Gsan/Cobranca', 'sem url', 2, 'ENNOTAVCRT', 0, 2, 2, NULL, NULL);


insert into batch.processo_funcionalidade values 
(nextval('batch.seq_processo_funcionalidade'), 
(select proc_id from batch.processo where proc_dsprocesso = 'ENVIAR NOTIFICAÇÃO DE VENCIMENTO'),
 now(), 6, 2, 
 (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade = 'Enviar notificação de aviso de corte'), 
 1, null);

insert into cadastro.envio_email values
 (57, 'gsan@cosanpa.pa.gov.br', '', 'Aviso de Corte', 'Aviso de Corte',
 (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade = 'Enviar notificação de aviso de corte'),
 NOW());

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.envio_email where enem_id = 57;

delete from batch.processo_funcionalidade WHERE 
FNCD_ID IN (SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE 
like 'Enviar notificação de aviso de corte');

delete from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Enviar notificação de aviso de corte';





