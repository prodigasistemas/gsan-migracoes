-- // Novo lancamento item para reparelamento curto e longo prazo
-- Migration SQL that makes the change goes here.

insert into financeiro.lancamento_item values (128, 'DESCONTOS CONCEDIDOS CREDITOS ANTERIORES LONGO PRZ', 'DECONPRCLP', 2, now());

update financeiro.lancamento_item set 
  lcit_dsitemlancamento = 'DESCONTOS CONCEDIDOS CREDITOS ANTERIORES CURTO PRZ',
  lcit_dsabreviado = 'DECONPRCCP'
where lcit_id = 123;
-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_item where lcit_id = 128;


