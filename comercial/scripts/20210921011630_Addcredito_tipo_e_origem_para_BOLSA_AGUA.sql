-- // Addcredito tipo e origem para BOLSA AGUA
-- Migration SQL that makes the change goes here.

insert into faturamento.credito_tipo values 
	(871, 6, 'CRED BOLSA AGUA', 'CBAG', 1, now(), 999999.99, 2, null);

insert into faturamento.credito_origem values
	(17, 'BOLSA AGUA', 'BOLSAAGUA', 1, now());


-- //@UNDO
-- SQL to undo the change goes here.

delete from faturamento.credito_tipo where crti_id = 871;

delete from faturamento.credito_origem where crog_id = 17;
