-- // Novo lancamento item reuperacao credito
-- Migration SQL that makes the change goes here.

insert into financeiro.lancamento_item values 
  (131, 'RECUPERACAO CREDITO', 'RECCRED', 2, NOW());

-- //@UNDO
-- SQL to undo the change goes here.


delete from financeiro.lancamento_item where lcit_id = 131;