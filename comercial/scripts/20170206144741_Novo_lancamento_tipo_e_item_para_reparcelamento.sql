-- // Novo lancamento tipo e item para reparcelamento
-- Migration SQL that makes the change goes here.

insert into financeiro.lancamento_tipo values (107, 107, 'OUTROS CREDITOS CANCELADOS POR REPARCELAMENTO', 'OUTCREDREP', 1, null, now(), 2, 2);

insert into financeiro.lancamento_item values (123, 'DESCONTOS CONCEDIDOS PARC CREDITOS ANTERIORES', 'DESCREDANT',2, NOW());  
-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_tipo where lctp_id = 107;

delete from financeiro.lancamento_item where lcit_id = 123;


