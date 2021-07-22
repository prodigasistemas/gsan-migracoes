-- // criar tabela para abrangencia do contrato de medicao
-- Migration SQL that makes the change goes here.


CREATE TABLE cadastro.contrato_medicao_abrangencia
(
  cmab_id                integer NOT NULL,
  cmab_tmcriacao         timestamp without time zone NOT NULL DEFAULT now(),
  cmab_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  cmed_id                integer NOT NULL,
  imov_id                integer NOT NULL,

  CONSTRAINT contrato_medicao_abrangencia_pkey PRIMARY KEY (cmab_id),
  CONSTRAINT fk1_contrato_medicao_abrangencia  FOREIGN KEY (cmed_id)
      REFERENCES cadastro.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_medicao_abrangencia  FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.contrato_medicao_abrangencia OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.contrato_medicao_abrangencia TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_medicao_abrangencia TO role_aplic;
GRANT SELECT ON TABLE                         cadastro.contrato_medicao_abrangencia TO role_users;


CREATE SEQUENCE cadastro.seq_contrato_medicao_abrangencia
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   cadastro.seq_contrato_medicao_abrangencia OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_contrato_medicao_abrangencia TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_medicao_abrangencia TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_contrato_medicao_abrangencia TO role_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.contrato_medicao_abrangencia;
DROP SEQUENCE cadastro.seq_contrato_medicao_abrangencia;
