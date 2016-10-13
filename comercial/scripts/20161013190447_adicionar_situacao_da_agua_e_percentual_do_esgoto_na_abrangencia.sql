-- Migration SQL that makes the change goes here.

alter table cadastro.contrato_medicao_abrangencia
  add column last_id integer,
  add column cmab_pcesgoto numeric(5,2);

COMMENT ON COLUMN cadastro.contrato_medicao_abrangencia.last_id       IS 'Id da ligacao agua situacao no mes 0';
COMMENT ON COLUMN cadastro.contrato_medicao_abrangencia.cmab_pcesgoto IS 'Percentual de esgoto no mes 0';

ALTER TABLE cadastro.contrato_medicao_abrangencia
ADD CONSTRAINT fk3_contrato_medicao_abrangencia FOREIGN KEY (last_id)
      REFERENCES atendimentopublico.ligacao_agua_situacao (last_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT

-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.contrato_medicao_abrangencia
  drop column last_id,
  drop column cmab_pcesgoto;