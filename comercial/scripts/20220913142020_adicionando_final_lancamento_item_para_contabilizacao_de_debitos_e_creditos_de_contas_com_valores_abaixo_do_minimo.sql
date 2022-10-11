-- // adicionando final lancamento_item para contabilizacao de debitos e creditos de contas com valores abaixo do minimo
-- Migration SQL that makes the change goes here.

--insert into financeiro.lancamento_item values
--	(135, 'FATURAMENTO INF MINIMO', 'FATIM', 2, now());
--
--insert into financeiro.lancamento_item values
--	(136, 'CREDITO BAIXA FATURAMENTO INF MINIMO', 'CREDBFIM', 2, now()); 


	
-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_item where lcit_id = 135;

delete from financeiro.lancamento_item where lcit_id = 136;


