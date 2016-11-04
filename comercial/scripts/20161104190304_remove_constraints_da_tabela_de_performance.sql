-- // remove constraints da tabela de performance
-- Migration SQL that makes the change goes here.

ALTER TABLE desempenho.medicao_performance
  ALTER COLUMN medp_difconsumoagua DROP NOT NULL,
  ALTER COLUMN dcst_id             DROP NOT NULL;

-- //@UNDO
-- SQL to undo the change goes here.


ALTER TABLE desempenho.medicao_performance
  ALTER COLUMN medp_difconsumoagua SET NOT NULL,
  ALTER COLUMN dcst_id             SET NOT NULL;
