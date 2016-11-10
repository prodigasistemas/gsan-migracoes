-- // adiciona colunas armazenar consumo em performance
-- Migration SQL that makes the change goes here.

alter table desempenho.medicao_performance
  add column medp_consumomeszero integer default 0;

alter table desempenho.medicao_performance
  add column medp_consumoreferencia integer default 0;

COMMENT ON COLUMN desempenho.medicao_performance.medp_consumomeszero     IS 'Consumo de agua no inicio do contrato';
COMMENT ON COLUMN desempenho.medicao_performance.medp_consumoreferencia  IS 'Consumo de agua na referencia';

-- //@UNDO
-- SQL to undo the change goes here.

alter table desempenho.medicao_performance
  drop column medp_consumomeszero;

alter table desempenho.medicao_performance
  drop column medp_consumoreferencia;  