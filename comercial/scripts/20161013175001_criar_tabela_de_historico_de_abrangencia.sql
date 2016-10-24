-- // criar tabela para abrangencia do contrato de medicao
-- Migration SQL that makes the change goes here.

CREATE SCHEMA desempenho AUTHORIZATION gsan_admin;

GRANT ALL   ON SCHEMA desempenho TO gsan_admin;
GRANT USAGE ON SCHEMA desempenho TO pg_aplic;
GRANT USAGE ON SCHEMA desempenho TO pg_users;

CREATE TABLE desempenho.contrato_medicao_abrangencia_historico
(
  hcmab_id                integer NOT NULL,
  cmab_tmcriacao          timestamp without time zone NOT NULL DEFAULT now(),
  cmab_tmremocao          timestamp without time zone NOT NULL DEFAULT now(),
  cmed_id                 integer NOT NULL,
  imov_id                 integer NOT NULL,

  CONSTRAINT contrato_medicao_abrangencia_historico_pkey PRIMARY KEY (hcmab_id),
  CONSTRAINT fk1_contrato_medicao_abrangencia_historico  FOREIGN KEY (cmed_id)
      REFERENCES cadastro.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_medicao_abrangencia_historico  FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   desempenho.contrato_medicao_abrangencia_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE                            desempenho.contrato_medicao_abrangencia_historico TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE desempenho.contrato_medicao_abrangencia_historico TO pg_aplic;
GRANT SELECT ON TABLE                         desempenho.contrato_medicao_abrangencia_historico TO pg_users;

COMMENT ON COLUMN desempenho.contrato_medicao_abrangencia_historico.hcmab_id       IS 'Id do historico da abrangencia do contrato de medicao';
COMMENT ON COLUMN desempenho.contrato_medicao_abrangencia_historico.cmab_tmcriacao IS 'Data da insercao do imovel na abrangencia do contrato de medicao';
COMMENT ON COLUMN desempenho.contrato_medicao_abrangencia_historico.cmab_tmremocao IS 'Data da remocao do imovel na abrangencia do contrato de medicao';
COMMENT ON COLUMN desempenho.contrato_medicao_abrangencia_historico.cmed_id        IS 'Identificacao do contrato de medicao';
COMMENT ON COLUMN desempenho.contrato_medicao_abrangencia_historico.imov_id        IS 'Identificacao do imovel';

CREATE SEQUENCE desempenho.seq_contrato_medicao_abrangencia_historico
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   desempenho.seq_contrato_medicao_abrangencia_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE            desempenho.seq_contrato_medicao_abrangencia_historico TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE desempenho.seq_contrato_medicao_abrangencia_historico TO pg_aplic;
GRANT SELECT ON TABLE         desempenho.seq_contrato_medicao_abrangencia_historico TO pg_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    desempenho.contrato_medicao_abrangencia_historico;
DROP SEQUENCE desempenho.seq_contrato_medicao_abrangencia_historico;
DROP SCHEMA desempenho;
