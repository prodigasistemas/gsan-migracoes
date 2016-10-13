-- // novo lancamento item - parcelamento faixa conta
-- Migration SQL that makes the change goes here.


insert into financeiro.lancamento_item values (88,'DESCONTOS CONCEDIDOS PARCELAMENTO FAIXA CONTA','DSCFXCNT',2,now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from  financeiro.lancamento_item where lcit_id = 88;
