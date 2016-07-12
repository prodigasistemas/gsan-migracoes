-- // criar tabela para contrato de medicao
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.contrato_medicao
(
  cmed_id                integer NOT NULL,
  cmed_numero_contrato   character varying(25) NOT NULL,
  cmed_vigencia_inicial  date,
  cmed_vigencia_final    date,
  cmed_data_assinatura   date,
  cmed_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  empr_id                integer NOT NULL,
  CONSTRAINT contrato_medicao_pkey PRIMARY KEY (cmed_id),
  CONSTRAINT fk1_contrato_medicao FOREIGN KEY (cmed_id)
      REFERENCES cadastro.empresa (empr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.contrato_medicao OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.contrato_medicao TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_medicao TO pg_aplic;
GRANT SELECT ON TABLE                         cadastro.contrato_medicao TO pg_users;


CREATE SEQUENCE cadastro.seq_contrato_medicao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   cadastro.seq_contrato_medicao OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_contrato_medicao TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_medicao TO pg_aplic;
GRANT SELECT ON TABLE         cadastro.seq_contrato_medicao TO pg_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.contrato_medicao;
DROP SEQUENCE cadastro.seq_contrato_medicao;
