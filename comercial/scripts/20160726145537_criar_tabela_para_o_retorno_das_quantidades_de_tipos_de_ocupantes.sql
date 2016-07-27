-- // criar tabela para o retorno das quantidades de tipos de ocupantes
-- Migration SQL that makes the change goes here.

CREATE TABLE atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno
(
  itqr_id                integer NOT NULL,
  itqr_quantidade        integer NOT NULL,
  itpo_id                integer NOT NULL,
  imov_id                integer NOT NULL,
  imre_id                integer NOT NULL,
  itqr_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),

  CONSTRAINT imovel_tipo_ocupante_quantidade_retorno_pkey PRIMARY KEY (itqr_id),
  CONSTRAINT fk1_imovel_tipo_ocupante_quantidade_retorno FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_imovel_tipo_ocupante_quantidade_retorno FOREIGN KEY (itpo_id)
      REFERENCES cadastro.imovel_tipo_ocupante (itpo_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk3_imovel_tipo_ocupante_quantidade_retorno FOREIGN KEY (imre_id)
      REFERENCES atualizacaocadastral.imovel_retorno (imre_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno OWNER TO gsan_admin;
GRANT ALL ON TABLE                            atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno TO pg_aplic;
GRANT SELECT ON TABLE                         atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno TO pg_users;

COMMENT ON COLUMN atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno.itqr_id                 IS 'Identificacao';
COMMENT ON COLUMN atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno.itqr_quantidade         IS 'Quantidade de ocupantes';
COMMENT ON COLUMN atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno.itpo_id                 IS 'Identificacao do tipo de ocupante';
COMMENT ON COLUMN atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno.imov_id                 IS 'Identificacao do imovel';
COMMENT ON COLUMN atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno.imre_id                 IS 'Identificacao do registro de retorno do imovel';
COMMENT ON COLUMN atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno.itqr_tmultimaalteracao  IS 'Data e hora da ultima alteracao';

CREATE SEQUENCE atualizacaocadastral.seq_imovel_tipo_ocupante_quantidade_retorno
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   atualizacaocadastral.seq_imovel_tipo_ocupante_quantidade_retorno OWNER TO gsan_admin;
GRANT ALL ON TABLE            atualizacaocadastral.seq_imovel_tipo_ocupante_quantidade_retorno TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE atualizacaocadastral.seq_imovel_tipo_ocupante_quantidade_retorno TO pg_aplic;
GRANT SELECT ON TABLE         atualizacaocadastral.seq_imovel_tipo_ocupante_quantidade_retorno TO pg_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    atualizacaocadastral.imovel_tipo_ocupante_quantidade_retorno;
DROP SEQUENCE atualizacaocadastral.seq_imovel_tipo_ocupante_quantidade_retorno;