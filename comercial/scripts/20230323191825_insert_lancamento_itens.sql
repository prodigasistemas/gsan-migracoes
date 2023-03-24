-- // lancamento_itens
-- Migration SQL that makes the change goes here.

insert into financeiro.lancamento_item values (135, 'FATURAMENTO_INFERIOR_MINIMO', 'FATINFMIN', 2, now());
insert into financeiro.lancamento_item values (136, 'CRED_BAIXA_FATUR_INF_MINIMO', 'FATINFMIN', 2, now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_item where lcit_id in (135,136)
