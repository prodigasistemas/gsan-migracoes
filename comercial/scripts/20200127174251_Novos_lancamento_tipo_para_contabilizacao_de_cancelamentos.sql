-- // Novos lancamento_tipo para contabilizacao de cancelamentos
-- Migration SQL that makes the change goes here.

insert into  financeiro.lancamento_tipo values (108, 108, 'CANCELAMENTOS', 'CANCLMTS', 1, 0, now(), 2, 2);
insert into  financeiro.lancamento_tipo values (109, 108, 'TOTAL_CANCELAMENTOS', 'TOTALCANC', 1, 0, now(), 1, 2);
insert into  financeiro.lancamento_tipo values (110, 108, 'PARCELAMENTOS_COBRADOS_SUP_CANCELAMENTOS', 'PARCCAN', 1, 0, now(), 2, 2);
insert into  financeiro.lancamento_tipo values (111, 108, 'PARCELAMENTOS_COBRADOS_SUP_CANCELAMENTOS', 'PARCCAN', 1, 0, now(), 2, 2);
insert into  financeiro.lancamento_tipo values (112, 108, 'OUTROS_CREDITOS_CANCELADOS', 'OUTCRCAN', 1, 0, now(), 2, 2);

insert into financeiro.lancamento_item values (133, 'TOTAL_CANCELAMENTOS', 'TOTALCANC', 2, now());
-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_tipo where lctp_id in (108, 109, 110, 111, 112); 

delete from financeiro.lancamento_item where lcit_id = 133;

