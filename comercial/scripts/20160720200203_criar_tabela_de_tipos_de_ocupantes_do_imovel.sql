-- // criar tabela de tipos de ocupantes do imovel
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.imovel_tipo_ocupante
(
  itpo_id                integer NOT NULL,
  itpo_descricao         character varying(20) NOT NULL,
  itpo_icuso             smallint NOT NULL,
  itpo_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),

  CONSTRAINT imovel_tipo_ocupante_pkey PRIMARY KEY (itpo_id)
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.imovel_tipo_ocupante OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.imovel_tipo_ocupante TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.imovel_tipo_ocupante TO role_aplic;
GRANT SELECT ON TABLE                         cadastro.imovel_tipo_ocupante TO role_users;

COMMENT ON COLUMN cadastro.imovel_tipo_ocupante.itpo_id                IS 'Identificacao';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante.itpo_descricao         IS 'Descricao do tipo do ocupante';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante.itpo_icuso             IS 'Indicador de uso';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante.itpo_tmultimaalteracao IS 'Data e hora da ultima alteracao';

CREATE SEQUENCE cadastro.seq_imovel_tipo_ocupante
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cadastro.seq_imovel_tipo_ocupante OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_imovel_tipo_ocupante TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_imovel_tipo_ocupante TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_imovel_tipo_ocupante TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.imovel_tipo_ocupante;
DROP SEQUENCE cadastro.seq_imovel_tipo_ocupante;