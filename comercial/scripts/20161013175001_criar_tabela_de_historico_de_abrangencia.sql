-- // criar tabela para abrangencia do contrato de medicao
-- Migration SQL that makes the change goes here.


CREATE TABLE cadastro.historico_contrato_medicao_abrangencia
(
  hcmab_id                integer NOT NULL,
  cmab_tmcriacao          timestamp without time zone NOT NULL DEFAULT now(),
  cmab_tmremocao          timestamp without time zone NOT NULL DEFAULT now(),
  cmed_id                 integer NOT NULL,
  imov_id                 integer NOT NULL,

  CONSTRAINT historico_contrato_medicao_abrangencia_pkey PRIMARY KEY (hcmab_id),
  CONSTRAINT fk1_historico_contrato_medicao_abrangencia  FOREIGN KEY (cmed_id)
      REFERENCES cadastro.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_historico_contrato_medicao_abrangencia  FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.historico_contrato_medicao_abrangencia OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.historico_contrato_medicao_abrangencia TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.historico_contrato_medicao_abrangencia TO pg_aplic;
GRANT SELECT ON TABLE                         cadastro.historico_contrato_medicao_abrangencia TO pg_users;

COMMENT ON COLUMN cadastro.historico_contrato_medicao_abrangencia.hcmab_id       IS 'Id do historico da abrangencia do contrato de medicao';
COMMENT ON COLUMN cadastro.historico_contrato_medicao_abrangencia.cmab_tmcriacao IS 'Data da insercao do imovel na abrangencia do contrato de medicao';
COMMENT ON COLUMN cadastro.historico_contrato_medicao_abrangencia.cmab_tmremocao IS 'Data da remocao do imovel na abrangencia do contrato de medicao';
COMMENT ON COLUMN cadastro.historico_contrato_medicao_abrangencia.cmed_id        IS 'Identificacao do contrato de medicao';
COMMENT ON COLUMN cadastro.historico_contrato_medicao_abrangencia.imov_id        IS 'Identificacao do imovel';

CREATE SEQUENCE cadastro.seq_historico_contrato_medicao_abrangencia
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   cadastro.seq_historico_contrato_medicao_abrangencia OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_historico_contrato_medicao_abrangencia TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_historico_contrato_medicao_abrangencia TO pg_aplic;
GRANT SELECT ON TABLE         cadastro.seq_historico_contrato_medicao_abrangencia TO pg_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.historico_contrato_medicao_abrangencia;
DROP SEQUENCE cadastro.seq_historico_contrato_medicao_abrangencia;
