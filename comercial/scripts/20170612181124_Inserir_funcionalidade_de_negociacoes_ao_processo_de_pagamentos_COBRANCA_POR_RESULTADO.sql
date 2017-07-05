-- // Inserir funcionalidade de negociacoes ao processo de pagamentos COBRANCA POR RESULTADO
-- Migration SQL that makes the change goes here.

--insert into batch.processo_funcionalidade values (nextval('batch.seq_processo_funcionalidade'), 151, now(), 19, 3, 
--(select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Gerar Movimento Negociacoes Contas Cobranca Empresa'  ), 1, null)


-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.processo_funcionalidade 
  where fncd_id in (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Gerar Movimento Negociacoes Contas Cobranca Empresa'  )


