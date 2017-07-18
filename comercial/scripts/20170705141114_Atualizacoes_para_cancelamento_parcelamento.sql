-- // Atualizacoes para cancelamento parcelamento
-- Migration SQL that makes the change goes here.

update faturamento.debito_tipo set lict_id = 14 where dbtp_id = 2441;

insert into financeiro.lancamento_tipo values 
  (107, 107, 'DEBITO COBRADO CANCEL CRED CONCEDIDO PARCELAMENTO', 'CANCREDPAR', 1, 0, now(), 2, 2);

insert into financeiro.lancamento_item_contabil values 
  (14, 'CANCELAMENTO DESC ACRESC PARCEL', 'CDAP', 160, now(), 3, 1) ;

insert into financeiro.lancamento_item_contabil values 
  (15, 'CANCELAMENTO DESC FAIXA PARCEL', 'CDFP', 170, now(), 88, 1) ;

insert into financeiro.financiamento_tipo values
  (11, 'CANCELAMENTO PARCELAMENTO', 'CANCPARC', 1, now(), 2);

insert into faturamento.debito_tipo values 
  (2442,15,'CANCEL PARC DESCONTO FAIXA','',1,now(),11,999999.99,2,2,null,null,null,2,null,2);



-- //@UNDO
-- SQL to undo the change goes here.

delete from financeiro.lancamento_tipo where lctp_id = 107;

delete from faturamento.debito_tipo where dbtp_id = 2442;

delete from financeiro.lancamento_item_contabil where lict_id in (14, 15);


