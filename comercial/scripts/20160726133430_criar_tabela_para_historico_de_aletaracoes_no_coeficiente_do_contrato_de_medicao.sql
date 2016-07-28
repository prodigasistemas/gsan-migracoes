-- // criar tabela para historico de aletaracoes no coeficiente do contrato de medicao
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.contrato_medicao_coeficiente_historico
(
  cmcoh_id               integer NOT NULL,
  cmco_id                integer NOT NULL,
  cmcoh_coeficiente      numeric(5,2) NOT NULL,
  usur_id                integer NOT NULL,
  last_id                integer NOT NULL,
  cmcoh_tmcriacao        timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT contrato_medicao_coeficiente_historico_pkey PRIMARY KEY (cmcoh_id),
  CONSTRAINT fk1_contrato_medicao_coeficiente_historico  FOREIGN KEY (cmco_id)
      REFERENCES cadastro.contrato_medicao_coeficiente (cmco_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_medicao_coeficiente_historico  FOREIGN KEY (usur_id)
      REFERENCES seguranca.usuario (usur_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk3_contrato_medicao_coeficiente  FOREIGN KEY (last_id)
      REFERENCES atendimentopublico.ligacao_agua_situacao (last_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.contrato_medicao_coeficiente_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.contrato_medicao_coeficiente_historico TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_medicao_coeficiente_historico TO pg_aplic;
GRANT SELECT ON TABLE                         cadastro.contrato_medicao_coeficiente_historico TO pg_users;

CREATE SEQUENCE cadastro.seq_contrato_medicao_coeficiente_historico
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   cadastro.seq_contrato_medicao_coeficiente_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_contrato_medicao_coeficiente_historico TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_medicao_coeficiente_historico TO pg_aplic;
GRANT SELECT ON TABLE         cadastro.seq_contrato_medicao_coeficiente_historico TO pg_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.contrato_medicao_coeficiente_historico;
DROP SEQUENCE cadastro.seq_contrato_medicao_coeficiente_historico;
