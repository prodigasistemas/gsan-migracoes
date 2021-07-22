-- // criar tabela para coeficientes de contrato de medicao
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.contrato_medicao_coeficiente
(
  cmco_id                integer NOT NULL,
  cmco_coeficiente       numeric(5,2) NOT NULL,
  cmco_tmcriacao         timestamp without time zone NOT NULL DEFAULT now(),
  cmco_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  cmed_id                integer NOT NULL,
  last_id                integer NOT NULL,

  CONSTRAINT contrato_medicao_coeficiente_pkey PRIMARY KEY (cmco_id),
  CONSTRAINT fk1_contrato_medicao_coeficiente  FOREIGN KEY (cmed_id)
      REFERENCES cadastro.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_medicao_coeficiente  FOREIGN KEY (last_id)
      REFERENCES atendimentopublico.ligacao_agua_situacao (last_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.contrato_medicao_coeficiente OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.contrato_medicao_coeficiente TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_medicao_coeficiente TO role_aplic;
GRANT SELECT ON TABLE                         cadastro.contrato_medicao_coeficiente TO role_users;


CREATE SEQUENCE cadastro.seq_contrato_medicao_coeficiente
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   cadastro.seq_contrato_medicao_coeficiente OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_contrato_medicao_coeficiente TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_medicao_coeficiente TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_contrato_medicao_coeficiente TO role_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.contrato_medicao_coeficiente;
DROP SEQUENCE cadastro.seq_contrato_medicao_coeficiente;
