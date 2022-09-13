-- // adicionando itens para contabilizacao de debitos e creditos de contas com valores abaixo do minimo
-- Migration SQL that makes the change goes here.

insert into faturamento.credito_tipo values 
	(872, 6, 'BAIXA FATURAMENTO INF MINIMO', 'BFIM', 1, now(), 999999.99, 2, null);

insert into faturamento.credito_origem values
	(18, 'BAIXA FATURAMENTO INF MINIMO', 'BFIM', 1, now());

insert into faturamento.debito_tipo values 
	(2516, 6, 'FATURAMENTO INF MINIMO', 'FATIM', 1, now(),1, 999999.99,2, 2,null,null,null,2,null,2);

insert into financeiro.financiamento_tipo values
	(12, 'FATURAMENTO INF MINIMO', 'BFIM', 1, now(),2);

	
-- //@UNDO
-- SQL to undo the change goes here.


delete from faturamento.credito_tipo where crti_id = 872;

delete from faturamento.credito_origem where crog_id = 18;

delete from faturamento.debito_tipo where dbtp_id = 2516;

delete from financeiro.financiamento_tipo where fntp_id = 12;


