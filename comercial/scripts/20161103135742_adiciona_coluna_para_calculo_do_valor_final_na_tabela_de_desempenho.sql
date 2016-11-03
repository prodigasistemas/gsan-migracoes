-- // adiciona coluna para calculo do valor final na tabela de desempenho
-- Migration SQL that makes the change goes here.

alter table desempenho.medicao_performance
  add column medp_calculo numeric(13,2);

COMMENT ON COLUMN desempenho.medicao_performance.medp_calculo  IS 'Calculo da performance de acordo com a ligacao do imovel';

-- //@UNDO
-- SQL to undo the change goes here.

alter table desempenho.medicao_performance
  drop column medp_calculo;