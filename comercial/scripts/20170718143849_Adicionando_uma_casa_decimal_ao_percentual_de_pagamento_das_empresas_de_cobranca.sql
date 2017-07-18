-- // Adicionando uma casa decimal ao percentual de pagamento das empresas de cobranca
-- Migration SQL that makes the change goes here.


alter table cadastro.empr_contrato_cobranca ALTER COLUMN emco_pcpagamentodevido TYPE numeric(5,3)
-- //@UNDO
-- SQL to undo the change goes here.
alter table cadastro.empr_contrato_cobranca ALTER COLUMN emco_pcpagamentodevido TYPE numeric(5,2)

