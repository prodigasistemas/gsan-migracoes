-- // Criando novo credito origem para reparcelamento
-- Migration SQL that makes the change goes here.

insert into faturamento.credito_origem values (15, 'DESCONTOS CREDITOS ANTERIORES', 'DESCCREANT', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.
delete from faturamento.credito_origem where crog_id = 15;

