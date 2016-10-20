-- // renomear campo na tabela contrato_medicao_abrangencia_historico
-- Migration SQL that makes the change goes here.

alter table desempenho.contrato_medicao_abrangencia_historico rename column hcmab_id to cmah_id;

-- //@UNDO
-- SQL to undo the change goes here.

alter table desempenho.contrato_medicao_abrangencia_historico rename column cmah_id to hcmab_id;
