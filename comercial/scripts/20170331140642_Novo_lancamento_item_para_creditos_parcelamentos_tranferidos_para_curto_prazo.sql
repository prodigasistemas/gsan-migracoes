-- // Novo lancamento item para creditos parcelamentos tranferidos para curto prazo
-- Migration SQL that makes the change goes here.


insert into financeiro.lancamento_item values (129, 'CREDITOS PARCELAMENTOS TRANSF PARA CURTO PRAZO', 'CRPATRCP', 2, now());

  delete from financeiro.lancamento_tipo where lctp_id = 107;
-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_item where lcit_id = 129;

