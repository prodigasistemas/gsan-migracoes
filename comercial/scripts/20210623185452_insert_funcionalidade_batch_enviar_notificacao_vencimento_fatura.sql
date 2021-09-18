-- // insert_funcionalidade_batch_enviar_notificacao_vencimento_fatura.sql
-- Migration SQL that makes the change goes here.

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.envio_email where enem_id = 55;

delete from batch.processo_funcionalidade WHERE 
FNCD_ID IN (SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE 
like 'Enviar notificação de vencimento por email');

delete from batch.processo where proc_dsprocesso like 'ENVIAR NOTIFICAÇÃO DE VENCIMENTO';

delete from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Enviar notificação de vencimento por email';

delete from faturamento.parametro where nome = 'QUANTIDADE_DIAS_FATURA_VENCIDA';




