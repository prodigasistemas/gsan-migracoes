-- // novo_credito_tipo_desconto_por_faixa_referencia_conta
-- Migration SQL that makes the change goes here.

INSERT INTO faturamento.credito_tipo(crti_id, lict_id, crti_dscreditotipo, crti_dsabreviado,
	crti_icuso, crti_tmultimaalteracao, crti_vllimite, crti_icgeracaoautomatica, crtp_nncodigoconstante)
VALUES (863, 2, 'DESCONTO FAIXA REF CONTA', 'DESC FAIXA', 1, now(), 999999.99, 1, null);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM faturamento.credito_tipo WHERE crti_id = 863;
