-- // criar tabela de relacao entre o imovel e os tipos de ocupantes
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.imovel_tipo_ocupante_quantidade
(
  itpq_id                integer NOT NULL,
  itpq_quantidade        integer NOT NULL,
  itpo_id                integer NOT NULL,
  imov_id                integer NOT NULL,

  CONSTRAINT imovel_tipo_ocupante_quantidade_pkey PRIMARY KEY (itpq_id),
  CONSTRAINT fk1_imovel_tipo_ocupante_quantidade FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_imovel_tipo_ocupante_quantidade FOREIGN KEY (itpo_id)
      REFERENCES cadastro.imovel_tipo_ocupante (itpo_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.imovel_tipo_ocupante_quantidade OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.imovel_tipo_ocupante_quantidade TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.imovel_tipo_ocupante_quantidade TO pg_aplic;
GRANT SELECT ON TABLE                         cadastro.imovel_tipo_ocupante_quantidade TO pg_users;

COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade.itpq_id          IS 'Identificacao';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade.itpq_quantidade  IS 'Quantidade de ocupantes';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade.itpo_id          IS 'Identificacao do tipo de ocupante';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade.imov_id          IS 'Identificacao do imovel';

CREATE SEQUENCE cadastro.seq_imovel_tipo_ocupante_quantidade
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cadastro.seq_imovel_tipo_ocupante_quantidade OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_imovel_tipo_ocupante_quantidade TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_imovel_tipo_ocupante_quantidade TO pg_aplic;
GRANT SELECT ON TABLE         cadastro.seq_imovel_tipo_ocupante_quantidade TO pg_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.imovel_tipo_ocupante_quantidade;
DROP SEQUENCE cadastro.seq_imovel_tipo_ocupante_quantidade;