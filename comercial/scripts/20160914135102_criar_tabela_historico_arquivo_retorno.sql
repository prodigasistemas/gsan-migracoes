-- // criar tabela historico arquivo retorno
-- Migration SQL that makes the change goes here.

CREATE TABLE atualizacaocadastral.historico_arquivo_retorno
(
  hiar_id                integer NOT NULL,
  usur_id                integer NOT NULL,
  empr_id                integer NOT NULL,
  caminho_arquivo        character varying(255),
  situacao               character varying(60),
  hiar_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),

  CONSTRAINT historico_arquivo_retorno_pkey PRIMARY KEY (hiar_id),
  CONSTRAINT fk1_historico_arquivo_retorno FOREIGN KEY (usur_id)
      REFERENCES seguranca.usuario (usur_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_historico_arquivo_retorno FOREIGN KEY (empr_id)
      REFERENCES cadastro.empresa (empr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   atualizacaocadastral.historico_arquivo_retorno OWNER TO gsan_admin;
GRANT ALL ON TABLE                            atualizacaocadastral.historico_arquivo_retorno TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE atualizacaocadastral.historico_arquivo_retorno TO role_aplic;
GRANT SELECT ON TABLE                         atualizacaocadastral.historico_arquivo_retorno TO role_users;

COMMENT ON COLUMN atualizacaocadastral.historico_arquivo_retorno.hiar_id                 IS 'Identificacao';
COMMENT ON COLUMN atualizacaocadastral.historico_arquivo_retorno.usur_id                 IS 'Id do usuario que gerou o arquivo';
COMMENT ON COLUMN atualizacaocadastral.historico_arquivo_retorno.empr_id                 IS 'Id da empresa selecionada';
COMMENT ON COLUMN atualizacaocadastral.historico_arquivo_retorno.caminho_arquivo         IS 'Path para o arquivo';
COMMENT ON COLUMN atualizacaocadastral.historico_arquivo_retorno.situacao                IS 'Situacao da geracao do arquivo: pendente | concluido | falha';
COMMENT ON COLUMN atualizacaocadastral.historico_arquivo_retorno.hiar_tmultimaalteracao  IS 'Data e hora da geração do arquivo';

CREATE SEQUENCE atualizacaocadastral.seq_historico_arquivo_retorno
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   atualizacaocadastral.seq_historico_arquivo_retorno OWNER TO gsan_admin;
GRANT ALL ON TABLE            atualizacaocadastral.seq_historico_arquivo_retorno TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE atualizacaocadastral.seq_historico_arquivo_retorno TO role_aplic;
GRANT SELECT ON TABLE         atualizacaocadastral.seq_historico_arquivo_retorno TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    atualizacaocadastral.historico_arquivo_retorno;
DROP SEQUENCE atualizacaocadastral.seq_historico_arquivo_retorno;
