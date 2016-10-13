-- // mover_tabelas_para_schema_desempenho
-- Migration SQL that makes the change goes here.

alter table cadastro.contrato_medicao set schema desempenho;
alter table cadastro.contrato_medicao_abrangencia set schema desempenho;
alter table cadastro.contrato_medicao_coeficiente set schema desempenho;
alter table cadastro.contrato_medicao_coeficiente_historico set schema desempenho;

-- //@UNDO
-- SQL to undo the change goes here.

alter table desempenho.contrato_medicao set schema cadastro;
alter table desempenho.contrato_medicao_abrangencia set schema cadastro;
alter table desempenho.contrato_medicao_coeficiente set schema cadastro;
alter table desempenho.contrato_medicao_coeficiente_historico set schema cadastro;

