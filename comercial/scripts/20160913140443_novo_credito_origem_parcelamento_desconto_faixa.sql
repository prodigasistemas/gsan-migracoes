-- // novo credito origem parcelamento desconto faixa
-- Migration SQL that makes the change goes here.

INSERT INTO faturamento.credito_origem(crog_id, crog_dscreditoorigem, crog_dsabreviado, crog_icuso, crog_tmultimaalteracao)
VALUES (14, 'DESCONTOS CONCEDIDOS NO PARC FAIXA CONTA', 'DESCPARCFC', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM faturamento.credito_origem WHERE crog_id = 14;
