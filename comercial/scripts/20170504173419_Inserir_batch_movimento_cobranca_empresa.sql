-- // Inserir batch movimento cobranca empresa
-- Migration SQL that makes the change goes here.

insert into seguranca.funcionalidade values
  (16039, 8, 'Gerar Movimento Contas Cobrança Empresa', now(), null, null, 2, 'GerMovCCE', 0, 2, 2, null, null);

--insert into batch.processo_funcionalidade values 
 -- (nextval('batch.seq_processo_funcionalidade'), 5, now(), 19, 2, 16039, 1, null);


-- //@UNDO
-- SQL to undo the change goes here.


