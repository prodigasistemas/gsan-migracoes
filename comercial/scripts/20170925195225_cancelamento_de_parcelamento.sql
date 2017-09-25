-- // cancelamento_de_parcelamento
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade VALUES (16040, 3, 'Cancelar Parcelamentos', now(), 'Gsan/', 'sem url', 2, 'CANCPARC', 2, 2, 2, null, null);

INSERT INTO batch.processo_funcionalidade VALUES (2001, 58, now(), 5, 2, 16040, 1, null);

UPDATE batch.processo SET proc_dsprocesso = 'DESFAZER E CANCELAR PARCELAMENTOS' WHERE proc_id = 58;

INSERT INTO financeiro.lancamento_tipo VALUES (107, 107, 'DEBITO COBRADO CANCEL CRED CONCEDIDO PARCELAMENTO', 'CANCREDPAR', 1, 0, now(), 2, 2);

UPDATE financeiro.lancamento_item_contabil SET lict_dsitemlancamentocontabil = 'CANCELAMENTO DE PARCELAMENTO', lict_dsabreviado = 'CP', lict_tmultimaalteracao = now() WHERE lict_id = 12;

UPDATE financeiro.lancamento_item_contabil SET lict_dsitemlancamentocontabil = 'JUROS SOBRE CONTRATO PARCELAMENTO', lict_dsabreviado = 'JSCP', lict_tmultimaalteracao = now() WHERE lict_id = 13;

INSERT INTO financeiro.lancamento_item_contabil VALUES (14, 'CANCELAMENTO DESC ACRESC PARCEL', 'CDAP', 160, now(), 3, 1) ;

INSERT INTO financeiro.lancamento_item_contabil VALUES (15, 'CANCELAMENTO DESC FAIXA PARCEL', 'CDFP', 170, now(), 88, 1) ;

INSERT INTO financeiro.financiamento_tipo VALUES (11, 'CANCELAMENTO PARCELAMENTO', 'CP', 1, now(), 2);

INSERT INTO faturamento.conta_motivo_inclusao VALUES (47, 'CANCELAMENTO DE PARCELAMENTO', 1, now());

INSERT INTO faturamento.debito_tipo VALUES (2441, 14, 'CANCELAMENTO PARC DESC ACRESC', '', 1, now(), 11, 999999.99, 2, 2, null, null, null, 2, null, 2);

INSERT INTO faturamento.debito_tipo VALUES (2442,15,'CANCEL PARC DESCONTO FAIXA','',1,now(),11,999999.99,2,2,null,null,null,2,null,2);

INSERT INTO seguranca.permissao_especial VALUES (201, 'CANCELAR PARCELAMENTO', 1, now(), 429);

UPDATE cobranca.parcelamento_situacao SET pcst_dsparcelamentosituacao = 'CONCLUIDO', pcst_dsabreviado = 'CONC' WHERE pcst_id = 3;

UPDATE cobranca.parcelamento_situacao SET pcst_dsparcelamentosituacao = 'CANCELADO', pcst_dsabreviado = 'CANC' WHERE pcst_id = 4;

INSERT INTO cobranca.parametro VALUES (1, 'DATA_INICIO_PARCELAMENTO_GSAN', '01/01/2010');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM batch.processo_funcionalidade WHERE fncd_id = 16040;

DELETE FROM seguranca.funcionalidade WHERE fncd_id = 16040;

UPDATE batch.processo SET proc_dsprocesso = 'DESFAZER PARCELAMENTO ENTRADA NAO PAGA' WHERE proc_id = 58;

DELETE FROM financeiro.lancamento_tipo WHERE lctp_id = 107;

UPDATE financeiro.lancamento_item_contabil SET lict_dsitemlancamentocontabil = 'DOAÇÕES HOSPITAL DO CÂNCER', lict_dsabreviado = 'DOACA', lict_tmultimaalteracao = now() WHERE lict_id = 12;

UPDATE financeiro.lancamento_item_contabil SET lict_dsitemlancamentocontabil = 'DOACOES PRO-CRIANCA', lict_dsabreviado = 'DOACR', lict_tmultimaalteracao = now() WHERE lict_id = 13;

DELETE FROM faturamento.debito_tipo WHERE dbtp_id IN (2441,2442);

DELETE FROM financeiro.lancamento_item_contabil WHERE lict_id in (14,15);

DELETE FROM financeiro.financiamento_tipo WHERE fntp_id = 11;

DELETE FROM faturamento.conta_motivo_inclusao WHERE cmic_id = 47;

DELETE FROM seguranca.permissao_especial WHERE pmep_id = 201;

UPDATE cobranca.parcelamento_situacao SET pcst_dsparcelamentosituacao = 'FINALIZADO', pcst_dsabreviado = 'FIN' WHERE pcst_id = 3;

UPDATE cobranca.parcelamento_situacao SET pcst_dsparcelamentosituacao = 'TRANSFERIDO', pcst_dsabreviado = 'TRANS' WHERE pcst_id = 4;

DELETE FROM cobranca.parametro WHERE id = 1;