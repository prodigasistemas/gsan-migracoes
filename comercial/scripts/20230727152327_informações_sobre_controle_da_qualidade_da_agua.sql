-- // informações_sobre_controle_da_qualidade_da_agua
-- Migration SQL that makes the change goes here.

ALTER TABLE faturamento.qualidade_agua_padrao ADD COLUMN qlap_dspadraoecoli varchar(20);

ALTER TABLE faturamento.qualidade_agua ADD COLUMN qlag_nnindiceecoli NUMERIC(5,2);
ALTER TABLE faturamento.qualidade_agua ADD COLUMN qlag_qtecoliexigidas int4;
ALTER TABLE faturamento.qualidade_agua ADD COLUMN qlag_qtecolianalisadas int4;
ALTER TABLE faturamento.qualidade_agua ADD COLUMN qlag_qtecoliconforme int4;

-- //@UNDO
-- SQL to undo the change goes here.


