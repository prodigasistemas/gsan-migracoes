-- // contrato instalacao reservacao
-- Migration SQL that makes the change goes here.

INSERT INTO cadastro.contrato_tipo VALUES (3, 'INST RESERVACAO', 1, now());

CREATE TABLE cadastro.contrato_instalacao_reservacao
(
  ctir_id integer NOT NULL, -- id do contrato instalacao reservacao
  cntt_id integer NOT NULL, -- id do contrato
  clim_id integer NOT NULL, -- id do coliente imovel
  ctir_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- timestamp da inclusao/ultima alteracao
  CONSTRAINT contrato_instalacao_reservacao_pkey PRIMARY KEY (ctir_id),
  CONSTRAINT fk1_contrato_instalacao_reservacao FOREIGN KEY (cntt_id)
      REFERENCES cadastro.contrato (cntt_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_instalacao_reservacao FOREIGN KEY (clim_id)
      REFERENCES cadastro.cliente_imovel (clim_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastro.contrato_instalacao_reservacao
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cadastro.contrato_instalacao_reservacao TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_instalacao_reservacao TO pg_aplic;
GRANT SELECT ON TABLE cadastro.contrato_instalacao_reservacao TO pg_users;
COMMENT ON COLUMN cadastro.contrato_instalacao_reservacao.ctir_id IS 'id do Contrato Instalacao Reservacao';
COMMENT ON COLUMN cadastro.contrato_instalacao_reservacao.cntt_id IS 'id do Contrato';
COMMENT ON COLUMN cadastro.contrato_instalacao_reservacao.clim_id IS 'id do cliente Imovel';

CREATE INDEX xfk1_contrato_instalacao_reservacao
  ON cadastro.contrato_instalacao_reservacao
  USING btree
  (cntt_id)
TABLESPACE indices;

CREATE SEQUENCE cadastro.seq_contrato_instalacao_reservacao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE cadastro.seq_contrato_instalacao_reservacao
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_instalacao_reservacao TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_instalacao_reservacao TO pg_aplic;
GRANT SELECT ON TABLE cadastro.seq_contrato_instalacao_reservacao TO pg_users;

UPDATE seguranca.parametro SET nome = 'URL_CONTRATO', valor = 'http://api.cosanpa.pa.gov.br/contratos/' WHERE nome = 'URL_CONTRATO_ADESAO';

INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), 'Gerar Documento Contrato', 'GerDocCont', 'gerarDocumentoContratoAction.do', now(), null, null, 14, null, 2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), now());
INSERT INTO seguranca.grupo_func_operacao VALUES (3, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), now());
INSERT INTO seguranca.grupo_func_operacao VALUES (46, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), now());
INSERT INTO seguranca.grupo_func_operacao VALUES (47, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), now());
INSERT INTO seguranca.grupo_func_operacao VALUES (48, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), now());
INSERT INTO seguranca.grupo_func_operacao VALUES (67, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imovel'), now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cadastro.contrato_tipo WHERE cttp_id = 3;

DROP SEQUENCE cadastro.seq_contrato_instalacao_reservacao;
DROP TABLE cadastro.contrato_instalacao_reservacao;

UPDATE seguranca.parametro SET nome = 'URL_CONTRATO_ADESAO', valor = 'http://api.cosanpa.pa.gov.br/contratos_adesao/' WHERE nome = 'URL_CONTRATO';

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id = (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato');
DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Documento Contrato';