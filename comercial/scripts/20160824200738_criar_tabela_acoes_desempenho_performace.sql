-- // criar tabela para acoes de desempenho e performance
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.acoes_desempenho_performance
(
  acdp_id                integer NOT NULL,
  acdp_titulo            character varying(200) NOT NULL,
  acdp_descricao         text NOT NULL,
  acdp_tmcriacao         timestamp without time zone NOT NULL DEFAULT now(),
  acdp_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  cmed_id                integer NOT NULL,

  CONSTRAINT acoes_desempenho_performance_pkey PRIMARY KEY (acdp_id),
  CONSTRAINT fk1_acao FOREIGN KEY (cmed_id)
      REFERENCES cadastro.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.acoes_desempenho_performance OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.acoes_desempenho_performance TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.acoes_desempenho_performance TO role_aplic;
GRANT SELECT ON TABLE                         cadastro.acoes_desempenho_performance TO role_users;


CREATE SEQUENCE cadastro.seq_acoes_desempenho_performance
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cadastro.seq_acoes_desempenho_performance OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_acoes_desempenho_performance TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_acoes_desempenho_performance TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_acoes_desempenho_performance TO role_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.acoes_desempenho_performance;
DROP SEQUENCE cadastro.seq_acoes_desempenho_performance;
