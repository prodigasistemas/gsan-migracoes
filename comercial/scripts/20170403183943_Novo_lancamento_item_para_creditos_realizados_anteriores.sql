-- // Novo lancamento item para creditos realizados anteriores
-- Migration SQL that makes the change goes here.
insert into financeiro.lancamento_item values (130, 'DESCONTOS CREDITOS ANTERIORES', 'DSCCRANT', 2, now());


-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_item where lcit_id = 130;

