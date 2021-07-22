-- // criar tabela para quantidades de tipos de ocupantes de imovel para atualizacao cadastral
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral
(
  itqa_id                integer NOT NULL,
  itqa_quantidade        integer NOT NULL,
  itpo_id                integer NOT NULL,
  imov_id                integer NOT NULL,
  itqa_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),

  CONSTRAINT imovel_tipo_ocupante_quantidade_atualizacao_cadastral_pkey PRIMARY KEY (itqa_id),
  CONSTRAINT fk1_imovel_tipo_ocupante_quantidade_atualizacao_cadastral FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_imovel_tipo_ocupante_quantidade_atualizacao_cadastral FOREIGN KEY (itpo_id)
      REFERENCES cadastro.imovel_tipo_ocupante (itpo_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral TO role_aplic;
GRANT SELECT ON TABLE                         cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral TO role_users;

COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral.itqa_id                 IS 'Identificacao';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral.itqa_quantidade         IS 'Quantidade de ocupantes';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral.itpo_id                 IS 'Identificacao do tipo de ocupante';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral.imov_id                 IS 'Identificacao do imovel';
COMMENT ON COLUMN cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral.itqa_tmultimaalteracao  IS 'Data e hora da ultima alteracao';

CREATE SEQUENCE cadastro.seq_imovel_tipo_ocupante_quantidade_atualizacao_cadastral
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cadastro.seq_imovel_tipo_ocupante_quantidade_atualizacao_cadastral OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_imovel_tipo_ocupante_quantidade_atualizacao_cadastral TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_imovel_tipo_ocupante_quantidade_atualizacao_cadastral TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_imovel_tipo_ocupante_quantidade_atualizacao_cadastral TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral;
DROP SEQUENCE cadastro.seq_imovel_tipo_ocupante_quantidade_atualizacao_cadastral;