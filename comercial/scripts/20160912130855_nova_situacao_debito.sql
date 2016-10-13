-- // nova_situacao_debito
-- Migration SQL that makes the change goes here.

insert into faturamento.debito_credito_situacao values (13, 'PAGA', 'PAG', now());

update faturamento.debito_a_cobrar set dcst_idatual = 13 where dcst_idatual = 8;
-- //@UNDO
-- SQL to undo the change goes here.

update faturamento.debito_a_cobrar set dcst_idatual = 8 where dcst_idatual = 13;

delete from faturamento.debito_credito_situacao where dcst_id = 13;


