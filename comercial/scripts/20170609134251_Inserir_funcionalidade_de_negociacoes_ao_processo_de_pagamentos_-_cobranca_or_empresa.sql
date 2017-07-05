-- // Inserir funcionalidade de negociacoes ao processo de pagamentos - cobranca or empresa
-- Migration SQL that makes the change goes here.


insert into batch.processo_funcionalidade
values (nextval('batch.seq_processo_funcionalidade'), 151, now(), 19, 3, 
  (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Gerar Movimento Contas Cobrança Empresa'),
  1, null);

-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.processo_funcionalidade where 
    proc_id = 151
    and fncd_id in (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Gerar Movimento Contas Cobrança Empresa');

