-- // Inclusao de dados para cancelamento de parcelamento
-- Migration SQL that makes the change goes here.

INSERT INTO faturamento.conta_motivo_inclusao(cmic_id, cmic_dsmotivoinclusaoconta, cmic_icuso, cmic_tmultimaalteracao)
VALUES (47, 'CANCELAMENTO DE PARCELAMENTO', 1, now());

UPDATE financeiro.lancamento_item_contabil
SET lict_dsitemlancamentocontabil = 'CANCELAMENTO DE PARCELAMENTO', lict_dsabreviado = 'CP', lict_tmultimaalteracao = now()
WHERE lict_id = 12;

UPDATE financeiro.lancamento_item_contabil
SET lict_dsitemlancamentocontabil = 'JUROS SOBRE CONTRATO PARCELAMENTO', lict_dsabreviado = 'JSCP', lict_tmultimaalteracao = now()
WHERE lict_id = 13;

INSERT INTO faturamento.debito_tipo(
            dbtp_id, lict_id, dbtp_dsdebitotipo, dbtp_dsabreviado, dbtp_icuso, 
            dbtp_tmultimaalteracao, fntp_id, dbtp_vllimite, dbtp_icgeracaoautomatica, 
            dbtp_icgeracaoconta, dbtp_vlsugerido, dbtp_valorlimiteinferior, 
            dbtp_nncodigoconstante, dbtp_iccartaocredito, cnct_id, dbtp_icguiajurosctrparcel)
VALUES (2441, 12, 'CANCELAMENTO PARC CONTAS', '', 1, now(), 11, 999999.99, 2, 2, null, null, null, 2, null, 2);

update faturamento.debito_tipo set lict_id = 14 where dbtp_id = 2441;

INSERT INTO faturamento.debito_tipo(
            dbtp_id, lict_id, dbtp_dsdebitotipo, dbtp_dsabreviado, dbtp_icuso, 
            dbtp_tmultimaalteracao, fntp_id, dbtp_vllimite, dbtp_icgeracaoautomatica, 
            dbtp_icgeracaoconta, dbtp_vlsugerido, dbtp_valorlimiteinferior, 
            dbtp_nncodigoconstante, dbtp_iccartaocredito, cnct_id, dbtp_icguiajurosctrparcel)
VALUES (2443, 12, 'CANCELAMENTO PARC DESC ACRESC', '', 1, now(), 11, 999999.99, 2, 2, null, null, null, 2, null, 2);

-- //@UNDO
-- SQL to undo the change goes here.

delete from faturamento.conta_motivo_inclusao where cmic_id = 47;