-- // Atualizacoes para cancelamento parcelamento
-- Migration SQL that makes the change goes here.

update faturamento.debito_tipo 
set lict_id = 3
where dbtp_dsdebitotipo like 'CANCEL PARC DESCONTO ACRESCIMO' ;

insert into financeiro.lancamento_tipo values 
  (107, 107, 'CANCELAMENTO CREDITOS CONCEDIDOS PARCELAMENTO', 'CANCREDPAR', 1, 0, now(), 2, 2);

-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_tipo where lctp_id = 107


