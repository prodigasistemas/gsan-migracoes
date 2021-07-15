-- // criar tabela para abrangencia do contrato de medicao
-- Migration SQL that makes the change goes here.


CREATE TABLE desempenho.medicao_performance
(
  medp_id                 integer NOT NULL,
  medp_tmcriacao          timestamp without time zone NOT NULL DEFAULT now(),
  medp_referencia         integer NOT NULL,
  medp_vldifconsumoagua   numeric(13,2),
  medp_difconsumoagua     integer NOT NULL,
  medp_vldifconsumoesgoto numeric(13,2),
  medp_pcconsumoesgoto    numeric(5,2),
  cmed_id                 integer NOT NULL,
  imov_id                 integer NOT NULL,
  dcst_id                 integer NOT NULL,

  CONSTRAINT medicao_performance_pkey PRIMARY KEY (medp_id),
  CONSTRAINT fk1_medicao_performance  FOREIGN KEY (cmed_id)
      REFERENCES cadastro.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_medicao_performance  FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk3_medicao_performance  FOREIGN KEY (dcst_id)
      REFERENCES faturamento.debito_credito_situacao (dcst_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   desempenho.medicao_performance OWNER TO gsan_admin;
GRANT ALL ON TABLE                            desempenho.medicao_performance TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE desempenho.medicao_performance TO role_aplic;
GRANT SELECT ON TABLE                         desempenho.medicao_performance TO role_users;

COMMENT ON COLUMN desempenho.medicao_performance.medp_id                 IS 'Id da medicao de performance';
COMMENT ON COLUMN desempenho.medicao_performance.medp_tmcriacao          IS 'Data de criacao da medicao de performance';
COMMENT ON COLUMN desempenho.medicao_performance.medp_referencia         IS 'Ano/mes referencia da medicao de performance';
COMMENT ON COLUMN desempenho.medicao_performance.medp_vldifconsumoagua   IS 'Valor da diferenca de consumo de agua entre o mes referencia e o mes 0';
COMMENT ON COLUMN desempenho.medicao_performance.medp_difconsumoagua     IS 'Diferenca de consumo de agua entre o mes referencia e o mes 0';
COMMENT ON COLUMN desempenho.medicao_performance.medp_vldifconsumoesgoto IS 'Valor da diferenca de consumo de esgoto entre o mes referencia e o mes 0';
COMMENT ON COLUMN desempenho.medicao_performance.medp_pcconsumoesgoto    IS 'Percentual de consumo de esgoto';
COMMENT ON COLUMN desempenho.medicao_performance.cmed_id                 IS 'Id do contrato de medicao';
COMMENT ON COLUMN desempenho.medicao_performance.imov_id                 IS 'Id do imovel';
COMMENT ON COLUMN desempenho.medicao_performance.dcst_id                 IS 'Id do debito credito situacao';

CREATE SEQUENCE desempenho.seq_medicao_performance
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;

ALTER TABLE                   desempenho.seq_medicao_performance OWNER TO gsan_admin;
GRANT ALL ON TABLE            desempenho.seq_medicao_performance TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE desempenho.seq_medicao_performance TO role_aplic;
GRANT SELECT ON TABLE         desempenho.seq_medicao_performance TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    desempenho.medicao_performance;
DROP SEQUENCE desempenho.seq_medicao_performance;
